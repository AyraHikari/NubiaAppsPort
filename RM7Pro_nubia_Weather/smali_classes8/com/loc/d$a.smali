.class public final Lcom/loc/d$a;
.super Landroid/os/Handler;
.source "AmapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/d;


# direct methods
.method public constructor <init>(Lcom/loc/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v0, 0x0

    const-wide/32 v6, 0x493e0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v1, "handleMessage ACTION_LBS_LOCATIONSUCCES"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v2, v0}, Lcom/loc/d;->a(Lcom/loc/d;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_1
    if-nez v0, :cond_1

    const-string v0, "handleMessage"

    :cond_1
    const-string v2, "AMapLocationManage$MHandlerr"

    invoke-static {v1, v2, v0}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    :try_start_2
    const-string v1, "handleMessage ACTION_GPS_LOCATIONSUCCESS"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0, p1}, Lcom/loc/d;->a(Lcom/loc/d;Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :sswitch_3
    :try_start_4
    const-string v1, "handleMessage SET_LISTENER"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v2, v0}, Lcom/loc/d;->a(Lcom/loc/d;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :sswitch_4
    :try_start_6
    const-string v1, "handleMessage REMOVE_LISTENER"
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v2, v0}, Lcom/loc/d;->b(Lcom/loc/d;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :sswitch_5
    :try_start_8
    const-string v1, "handleMessage START_LOCATION"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->c(Lcom/loc/d;)V

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Lcom/loc/d;ILandroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_0

    :sswitch_6
    :try_start_a
    const-string v1, "handleMessage STOP_LOCATION"
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->d(Lcom/loc/d;)V

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Lcom/loc/d;ILandroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_0

    :sswitch_7
    :try_start_c
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Lcom/loc/d;ILandroid/os/Bundle;)V

    const-string v1, "handleMessage DESTROY"
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    :try_start_d
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-virtual {v0}, Lcom/loc/d;->h()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_0

    :sswitch_8
    :try_start_e
    const-string v1, "handleMessage ACTION_SAVE_LAST_LOCATION"
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    :try_start_f
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0, p1}, Lcom/loc/d;->b(Lcom/loc/d;Landroid/os/Message;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_0

    :sswitch_9
    :try_start_10
    const-string v1, "handleMessage START_GPS_LOCATION"
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    :try_start_11
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->c:Lcom/loc/g;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v2, 0x401

    const-wide/32 v4, 0x493e0

    invoke-static {v0, v2, v4, v5}, Lcom/loc/d;->a(Lcom/loc/d;IJ)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0

    :sswitch_a
    :try_start_12
    const-string v1, "handleMessage START_LBS_LOCATION"
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    :try_start_13
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v2, 0x3f8

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v2, v4, v5}, Lcom/loc/d;->a(Lcom/loc/d;IJ)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->e(Lcom/loc/d;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0

    :sswitch_b
    :try_start_14
    const-string v1, "handleMessage STOP_GPS_LOCATION"
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1

    :try_start_15
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->f(Lcom/loc/d;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_0

    :sswitch_c
    :try_start_16
    const-string v1, "handleMessage SET_OPTION"
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1

    :try_start_17
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, v2, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->g(Lcom/loc/d;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_0

    :sswitch_d
    :try_start_18
    const-string v1, "handleMessage START_SOCKET"
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1

    :try_start_19
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0

    goto/16 :goto_0

    :sswitch_e
    :try_start_1a
    const-string v1, "handleMessage STOP_SOCKET"
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1

    :try_start_1b
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->i(Lcom/loc/d;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_0

    :sswitch_f
    :try_start_1c
    const-string v1, "handleMessage ACTION_ENABLE_BACKGROUND"
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    :try_start_1d
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0, p1}, Lcom/loc/d;->c(Lcom/loc/d;Landroid/os/Message;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_0

    :sswitch_10
    :try_start_1e
    const-string v1, "handleMessage ACTION_DISABLE_BACKGROUND"
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1

    :try_start_1f
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0, p1}, Lcom/loc/d;->d(Lcom/loc/d;Landroid/os/Message;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_0

    :sswitch_11
    :try_start_20
    const-string v1, "handleMessage ACTION_REBOOT_GPS_LOCATION"
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1

    :try_start_21
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->c:Lcom/loc/g;

    iget-object v3, v2, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->c:Lcom/loc/g;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_4
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v2, 0x401

    const-wide/32 v4, 0x493e0

    invoke-static {v0, v2, v4, v5}, Lcom/loc/d;->a(Lcom/loc/d;IJ)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    iget-wide v2, v2, Lcom/loc/g;->d:J
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_0

    sub-long v2, v4, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_6
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_0
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_d
        0x3f1 -> :sswitch_e
        0x3f2 -> :sswitch_0
        0x3f3 -> :sswitch_7
        0x3f6 -> :sswitch_8
        0x3f7 -> :sswitch_9
        0x3f8 -> :sswitch_a
        0x3f9 -> :sswitch_b
        0x3fa -> :sswitch_c
        0x3fb -> :sswitch_0
        0x3fc -> :sswitch_0
        0x3fd -> :sswitch_0
        0x3fe -> :sswitch_0
        0x3ff -> :sswitch_f
        0x400 -> :sswitch_10
        0x401 -> :sswitch_11
    .end sparse-switch
.end method
