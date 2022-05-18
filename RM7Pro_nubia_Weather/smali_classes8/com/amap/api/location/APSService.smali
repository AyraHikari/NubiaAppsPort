.class public Lcom/amap/api/location/APSService;
.super Landroid/app/Service;
.source "APSService.java"


# instance fields
.field a:Lcom/loc/f;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/loc/f;

    invoke-virtual {v0, p1}, Lcom/loc/f;->a(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onBind"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/amap/api/location/APSService;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/loc/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/f;

    invoke-direct {v0, p1}, Lcom/loc/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/loc/f;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/loc/f;

    invoke-virtual {v0}, Lcom/loc/f;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/loc/f;

    invoke-virtual {v0}, Lcom/loc/f;->b()V

    iget-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/APSService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "g"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "i"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "h"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/location/APSService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "j"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I

    :cond_2
    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/APSService;->stopForeground(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/APSService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
