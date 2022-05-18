.class public final Lcom/loc/eg;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Lcom/amap/api/location/AMapLocationClientOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/eg;->b:Lcom/amap/api/location/AMapLocationClientOption;

    return-void
.end method

.method private a(Lcom/loc/ds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/loc/eg;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-ne v1, v2, :cond_6

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/loc/eg;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-eq v1, v2, :cond_8

    const-string v1, "\u9760\u8fd1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5728"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9644\u8fd1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setDescription(Ljava/lang/String;)V

    :cond_5
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "citycode"

    invoke-virtual {p1}, Lcom/loc/ds;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adcode"

    invoke-virtual {p1}, Lcom/loc/ds;->getAdCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/loc/ds;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/loc/ds;->getAdCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/loc/eg;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-eq v1, v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setAddress(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_6
    const-string v1, "\u5e02"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_7
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Near "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Near "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setAddress(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/loc/ds;[BLcom/loc/dm;)Lcom/loc/ds;
    .locals 11

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setErrorCode(I)V

    const-string v0, "#0504"

    invoke-virtual {p3, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    const-string v2, "binaryResult is null#0504"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :try_start_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->b(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/loc/ep;->a(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/loc/ds;->setLongitude(D)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/loc/ep;->a(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/loc/ds;->setLatitude(D)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setAccuracy(F)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->c(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->d(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v2, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/loc/ds;->setCountry(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v2, v0, [B

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setProvince(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v0

    :goto_2
    :try_start_7
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setCity(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v3, v0

    :goto_3
    :try_start_a
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setDistrict(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v4, v0

    :goto_4
    :try_start_d
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setRoad(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v5, v0

    :goto_5
    :try_start_10
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setNumber(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v6, v0

    :goto_6
    :try_start_13
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setPoiName(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v7, v0

    :goto_7
    :try_start_16
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :try_start_17
    new-instance v1, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v1, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setAoiName(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :goto_8
    :try_start_18
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setAdCode(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object v8, v0

    :goto_9
    :try_start_1b
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    new-instance v1, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v1, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setCityCode(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :goto_a
    move-object v0, p0

    move-object v1, p1

    :try_start_1d
    invoke-direct/range {v0 .. v8}, Lcom/loc/eg;->a(Lcom/loc/ds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    :cond_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :try_start_1e
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setBuildingId(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :goto_b
    :try_start_1f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :try_start_20
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/ds;->setFloor(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :cond_5
    :goto_c
    :try_start_21
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    :cond_6
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/loc/ds;->setTime(J)V

    :cond_7
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-lez v0, :cond_8

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_7
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :try_start_22
    array-length v1, v0

    if-lez v1, :cond_8

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/ds;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :cond_8
    :goto_d
    :try_start_23
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-lez v0, :cond_9

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_9
    const-string v0, "5.1"

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4014666666666666L    # 5.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_b

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const-string v1, "-1"

    invoke-virtual {p1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_a
    :goto_e
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setConScenario(I)V

    :goto_f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_c
    :goto_10
    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_11
    move-object v2, v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v0, v3

    :goto_12
    move-object v3, v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v0, v4

    :goto_13
    move-object v4, v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v0, v5

    :goto_14
    move-object v5, v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v0, v6

    :goto_15
    move-object v6, v0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object v0, v7

    :goto_16
    move-object v7, v0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    move-object v0, v8

    :goto_17
    move-object v8, v0

    goto/16 :goto_9

    :cond_d
    if-nez v0, :cond_a

    const/4 v0, -0x1

    goto :goto_e

    :cond_e
    const/16 v1, 0x65

    if-ne v0, v1, :cond_f

    const/16 v0, 0x64

    :cond_f
    :try_start_24
    invoke-virtual {p1, v0}, Lcom/loc/ds;->setConScenario(I)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_7
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v1, v9

    :goto_18
    :try_start_25
    new-instance p1, Lcom/loc/ds;

    const-string v2, ""

    invoke-direct {p1, v2}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/loc/ds;->setErrorCode(I)V

    const-string v2, "#0505"

    invoke-virtual {p3, v2}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parser data error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#0505"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v2, 0x806

    invoke-static {v0, v2}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    move-object v9, v1

    :goto_19
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_10
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_19

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_19

    :catch_8
    move-exception v0

    goto :goto_18

    :catch_9
    move-exception v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_c

    :catch_b
    move-exception v0

    goto/16 :goto_b

    :catch_c
    move-exception v0

    goto/16 :goto_a

    :catch_d
    move-exception v1

    goto :goto_17

    :catch_e
    move-exception v0

    goto/16 :goto_8

    :catch_f
    move-exception v1

    goto :goto_16

    :catch_10
    move-exception v1

    goto/16 :goto_15

    :catch_11
    move-exception v1

    goto/16 :goto_14

    :catch_12
    move-exception v1

    goto/16 :goto_13

    :catch_13
    move-exception v1

    goto/16 :goto_12

    :catch_14
    move-exception v1

    goto/16 :goto_11

    :catch_15
    move-exception v0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/loc/ds;
    .locals 11

    const/4 v9, 0x0

    :try_start_0
    new-instance v1, Lcom/loc/ds;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "regeocode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "addressComponent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v2, "country"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/ds;->setCountry(Ljava/lang/String;)V

    const-string v2, "province"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/ds;->setProvince(Ljava/lang/String;)V

    const-string v3, "citycode"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/loc/ds;->setCityCode(Ljava/lang/String;)V

    const-string v3, "city"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "010"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "021"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "022"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "023"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/loc/ds;->setCity(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/loc/ds;->setCity(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    const-string v4, "district"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/loc/ds;->setDistrict(Ljava/lang/String;)V

    const-string v6, "adcode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/loc/ds;->setAdCode(Ljava/lang/String;)V

    const-string v6, "streetNumber"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v5, "street"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/loc/ds;->setStreet(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/loc/ds;->setRoad(Ljava/lang/String;)V

    const-string v7, "number"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/loc/ds;->setNumber(Ljava/lang/String;)V

    const-string v7, "pois"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/loc/ds;->setPoiName(Ljava/lang/String;)V

    :goto_1
    const-string v10, "aois"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "name"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setAoiName(Ljava/lang/String;)V

    :cond_3
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/loc/eg;->a(Lcom/loc/ds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1

    :cond_4
    invoke-static {v3}, Lcom/loc/eg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/loc/ds;->setCity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    goto :goto_2

    :cond_5
    move-object v7, v9

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;Lcom/loc/aw;Lcom/loc/dm;)Lcom/loc/ds;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/loc/ds;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setErrorCode(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v0, "#SHA1AndPackage#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Lcom/loc/k;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p3, Lcom/loc/aw;->b:Ljava/util/Map;

    const-string v3, "gsid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "#gsid#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p3, Lcom/loc/aw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#csid#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "#0702"

    invoke-virtual {p4, v3}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    const-string v4, "json is error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#0702"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "infocode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "#0701"

    invoke-virtual {p4, v3}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    const-string v5, "auth fail:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#0701"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/loc/aw;->d:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/loc/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_5
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "#0703"

    invoke-virtual {p4, v3}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/loc/eg;->a:Ljava/lang/StringBuilder;

    const-string v4, "json exception error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#0703"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "parser"

    const-string v3, "paseAuthFailurJson"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/eg;->b:Lcom/amap/api/location/AMapLocationClientOption;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/loc/eg;->b:Lcom/amap/api/location/AMapLocationClientOption;

    goto :goto_0
.end method
