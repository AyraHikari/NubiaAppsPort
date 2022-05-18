.class final Lcom/loc/a$c;
.super Landroid/os/Handler;
.source "GeoFenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method public constructor <init>(Lcom/loc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a$c;->a:Lcom/loc/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/loc/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a$c;->a:Lcom/loc/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/loc/a$c;->a:Lcom/loc/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "errorCode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "resultList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    :goto_1
    const-string v0, "customId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    move-object v1, v0

    :goto_2
    iget-object v0, v3, Lcom/loc/a;->e:Lcom/amap/api/fence/GeoFenceListener;

    if-eqz v0, :cond_1

    iget-object v5, v3, Lcom/loc/a;->e:Lcom/amap/api/fence/GeoFenceListener;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v5, v0, v4, v1}, Lcom/amap/api/fence/GeoFenceListener;->onGeoFenceCreateFinished(Ljava/util/List;ILjava/lang/String;)V

    :cond_1
    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/loc/a;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GeoFenceManager"

    const-string v2, "resultAddGeoFenceFinished"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_1
    :try_start_3
    const-string v0, "geoFence"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/GeoFence;

    iget-object v1, p0, Lcom/loc/a$c;->a:Lcom/loc/a;

    invoke-virtual {v1, v0}, Lcom/loc/a;->c(Lcom/amap/api/fence/GeoFence;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_2
    :try_start_5
    const-string v0, "location_errorcode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/loc/a$c;->a:Lcom/loc/a;

    invoke-virtual {v1, v0}, Lcom/loc/a;->c(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
