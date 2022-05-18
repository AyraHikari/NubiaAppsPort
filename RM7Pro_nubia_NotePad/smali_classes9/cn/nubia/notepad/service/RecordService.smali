.class public Lcn/nubia/notepad/service/RecordService;
.super Landroid/app/Service;
.source "RecordService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    const-string v0, "RecordService"

    const-string v1, "onCreate: RecordService---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 28
    const/4 v0, 0x3

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/notepad/service/RecordService;->startForeground(ILandroid/app/Notification;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 36
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 48
    const-string v1, "RecordService"

    const-string v2, "onTaskRemoved:RecordService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "notification"

    .line 50
    invoke-virtual {p0, v1}, Lcn/nubia/notepad/service/RecordService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 51
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 52
    invoke-virtual {p0}, Lcn/nubia/notepad/service/RecordService;->stopSelf()V

    .line 53
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/SysApplication;->exit()V

    .line 54
    return-void
.end method
