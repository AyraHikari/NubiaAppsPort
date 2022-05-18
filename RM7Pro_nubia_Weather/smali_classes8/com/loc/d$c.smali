.class public final Lcom/loc/d$c;
.super Landroid/os/Handler;
.source "AmapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/d;


# direct methods
.method public constructor <init>(Lcom/loc/d;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/loc/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const-string v1, "handleMessage RESULT_LBS_LOCATIONSUCCESS"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->x:Lcom/loc/d$a;

    invoke-virtual {v0}, Lcom/loc/d$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->x:Lcom/loc/d$a;

    invoke-virtual {v2, v0}, Lcom/loc/d$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "handleMessage"

    :cond_2
    const-string v2, "AmapLocationManager$MainHandler"

    invoke-static {v1, v2, v0}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_2
    const-string v1, "handleMessage RESULT_LBS_ON_CALLBACK"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-static {v2, v0}, Lcom/loc/d;->a(Lcom/loc/d;Lcom/amap/api/location/AMapLocation;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    const/16 v2, 0x85d    # 3.0E-42f

    :try_start_4
    invoke-static {v0, v2}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    :pswitch_5
    const-string v1, "handleMessage RESULT_GPS_LOCATIONSUCCESS"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0xc

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->x:Lcom/loc/d$a;

    invoke-virtual {v2, v0}, Lcom/loc/d$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :pswitch_6
    :try_start_6
    const-string v1, "handleMessage RESULT_GPS_LOCATIONCHANGE"
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "optBundle"

    iget-object v3, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v3, v3, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    const/16 v3, 0xa

    invoke-static {v2, v3, v0}, Lcom/loc/d;->a(Lcom/loc/d;ILandroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :pswitch_7
    :try_start_8
    const-string v1, "handleMessage RESULT_GPS_GEO_SUCCESS"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->c:Lcom/loc/g;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->c:Lcom/loc/g;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v0, :cond_0

    :try_start_a
    const-class v3, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "I_MAX_GEO_DIS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/loc/g;->g:I

    const-string v3, "I_MIN_GEO_DIS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/loc/g;->h:I

    const-string v3, "loc"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/loc/g;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    sput-object v0, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception v0

    :try_start_d
    const-string v2, "GpsLocation"

    const-string v3, "setLastGeoLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    :pswitch_8
    :try_start_e
    const-string v1, "handleMessage RESULT_NGPS_ABLE"
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    :try_start_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    const-string v3, "ngpsAble"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/loc/d;->b(Lcom/loc/d;Z)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    :pswitch_9
    :try_start_10
    const-string v1, "handleMessage RESULT_INSTALLED_MOCK_APP"
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    :try_start_11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "installMockApp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/loc/d;->b(Z)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method
