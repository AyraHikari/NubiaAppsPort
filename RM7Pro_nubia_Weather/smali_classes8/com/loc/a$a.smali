.class final Lcom/loc/a$a;
.super Landroid/os/Handler;
.source "GeoFenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method public constructor <init>(Lcom/loc/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v0, 0x7d0

    const/4 v2, 0x1

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "centerPoint"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/DPoint;

    const-string v1, "customId"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v6

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_1
    const-string v4, "\u6dfb\u52a0\u56f4\u680f\u5931\u8d25"

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u7ecf\u7eac\u5ea6\u9519\u8bef\uff0c\u4f20\u5165\u7684\u7eac\u5ea6\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u4f20\u5165\u7684\u7ecf\u5ea6:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v4, v6, v0, v7}, Lcom/loc/a;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "errorCode"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resultList"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "customId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v3, v1, v0}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GeoFenceManager"

    const-string v2, "doAddGeoFenceRound"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v3, v4, v0}, Lcom/loc/a;->a(Landroid/os/Bundle;Z)Lcom/amap/api/fence/GeoFence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/loc/a;->b(Lcom/amap/api/fence/GeoFence;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :cond_5
    move-object v1, v0

    goto :goto_1

    :pswitch_1
    :try_start_4
    iget-object v3, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    :try_start_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v0, "pointList"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "customId"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-gt v0, v6, :cond_8

    :cond_6
    move v0, v2

    :cond_7
    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "customId"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorCode"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "resultList"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v0, 0x3e8

    invoke-virtual {v3, v0, v2}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "GeoFenceManager"

    const-string v2, "doAddGeoFencePolygon"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    :try_start_7
    invoke-virtual {v3, v4, v0}, Lcom/loc/a;->a(Landroid/os/Bundle;Z)Lcom/amap/api/fence/GeoFence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/loc/a;->b(Lcom/amap/api/fence/GeoFence;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :cond_9
    move-object v1, v0

    move v0, v2

    goto :goto_2

    :pswitch_2
    :try_start_8
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->c(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->d(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    iget-object v1, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->s:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0, v1}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->f()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    iget-object v1, v0, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/loc/a;->e()V

    iget-object v1, v0, Lcom/loc/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, v0, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v0, Lcom/loc/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, v0, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_a
    const-string v1, "GeoFenceManager"

    const-string v2, "doStartOnceLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v3

    :try_start_b
    iget-object v4, v2, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v0, "interval"

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_a
    iget-object v3, v2, Lcom/loc/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v3, v2, Lcom/loc/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3, v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, v2, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, v2, Lcom/loc/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-boolean v0, v2, Lcom/loc/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, v2, Lcom/loc/a;->r:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/loc/a;->m:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_c
    const-string v1, "GeoFenceManager"

    const-string v2, "doStartContinueLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->c()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->f(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->e(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->h()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
