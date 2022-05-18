.class public final Lcom/loc/ep;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static a:Landroid/net/wifi/WifiManager;

.field private static b:I

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sput v3, Lcom/loc/ep;->b:I

    sput-object v4, Lcom/loc/ep;->c:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/loc/ep;->d:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    sput-object v0, Lcom/loc/ep;->e:Ljava/lang/String;

    sput-object v4, Lcom/loc/ep;->a:Landroid/net/wifi/WifiManager;

    sput-boolean v3, Lcom/loc/ep;->f:Z

    return-void
.end method

.method public static a(D)D
    .locals 2

    invoke-static {p0, p1}, Lcom/loc/ep;->b(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(F)F
    .locals 4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    float-to-double v0, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/loc/ep;->a([D)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/loc/ep;->a([D)F

    move-result v0

    return v0
.end method

.method public static a([D)F
    .locals 10

    const/4 v2, 0x1

    const/4 v9, 0x0

    new-array v8, v2, [F

    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    return v0
.end method

.method public static a(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getServ"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "NULL"

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Utils"

    const-string v3, "formatUTC"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    const-string v1, "android.provider.Settings$System"

    invoke-static {p0, v1}, Lcom/loc/ep;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "android.provider.Settings$Global"

    invoke-static {p0, v1}, Lcom/loc/ep;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "2.0.201501131131"

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v9

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type = \'table\' AND name = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "sqlite_master"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "count(*) as c"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_6

    move v0, v8

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v10

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_5
    move v0, v8

    goto :goto_0

    :cond_6
    move v0, v9

    goto :goto_1
.end method

.method public static a(Landroid/location/Location;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v0, v4, :cond_0

    :try_start_0
    const-string v0, "isFromMockProvider"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "satellites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-gtz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/loc/ep;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/loc/ds;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "8"

    invoke-virtual {p0}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5"

    invoke-virtual {p0}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    invoke-virtual {p0}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/loc/ep;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v2, " :"

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/loc/ep;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_4

    aget-object v6, v5, v0

    const-string v7, ",nb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v5, v0

    const-string v7, ",access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v2, v3, 0x2

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(I[B)[B
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method public static a(J)[B
    .locals 8

    const/16 v6, 0x8

    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    mul-int/lit8 v2, v0, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a([B)[B
    .locals 1

    invoke-static {p0}, Lcom/loc/u;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v3, v2

    const-string v1, "0"

    aput-object v1, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v2

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-char v6, v5, v1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-gt v1, v5, :cond_8

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-nez v0, :cond_5

    const-string v0, "0"

    aput-object v0, v3, v2

    :cond_5
    const-string v0, "0"

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "0"

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sput-object v3, Lcom/loc/ep;->c:[Ljava/lang/String;

    move-object v0, v3

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v5, "getMccMnc"

    invoke-static {v0, v1, v5}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_6
    const-string v0, "0"

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "0"

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/loc/ep;->c:[Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/loc/ep;->c:[Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move v1, v4

    goto/16 :goto_0
.end method

.method public static b(D)D
    .locals 4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static b([B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    rsub-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "success"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    goto :goto_0

    :pswitch_3
    const-string v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    goto :goto_0

    :pswitch_8
    const-string v0, "KEY\u9519\u8bef"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    goto :goto_0

    :pswitch_a
    const-string v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    goto :goto_0

    :pswitch_b
    const-string v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    goto :goto_0

    :pswitch_c
    const-string v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    goto :goto_0

    :pswitch_d
    const-string v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    goto :goto_0

    :pswitch_e
    const-string v0, "\u7f51\u7edc\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8bbe\u5907\u662f\u5426\u63d2\u5165sim\u5361\uff0c\u662f\u5426\u5f00\u542f\u79fb\u52a8\u7f51\u7edc\u6216\u5f00\u542f\u4e86wifi\u6a21\u5757"

    goto :goto_0

    :pswitch_f
    const-string v0, "GPS \u5b9a\u4f4d\u5931\u8d25\uff0c\u7531\u4e8e\u8bbe\u5907\u5f53\u524d GPS \u72b6\u6001\u5dee,\u5efa\u8bae\u6301\u8bbe\u5907\u5230\u76f8\u5bf9\u5f00\u9614\u7684\u9732\u5929\u573a\u6240\u518d\u6b21\u5c1d\u8bd5"

    goto :goto_0

    :pswitch_10
    const-string v0, "\u5f53\u524d\u8fd4\u56de\u4f4d\u7f6e\u4e3a\u6a21\u62df\u8f6f\u4ef6\u8fd4\u56de\uff0c\u8bf7\u5173\u95ed\u6a21\u62df\u8f6f\u4ef6\uff0c\u6216\u8005\u5728option\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u6a21\u62df"

    goto :goto_0

    :pswitch_11
    const-string v0, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173"

    goto :goto_0

    :pswitch_12
    const-string v0, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/loc/ej;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/loc/ej;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/loc/ej;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lcom/loc/ej;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {p0}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v0, Lcom/loc/ej;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/loc/ej;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/ej;->h:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getAppName part"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "getAppName"

    invoke-static {v1, v3, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKWN"

    :goto_1
    return-object v0

    :pswitch_0
    const-string v0, "UNKWN"

    goto :goto_1

    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_1

    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_1

    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_1

    :pswitch_4
    const-string v0, "CDMA"

    goto :goto_1

    :pswitch_5
    const-string v0, "EVDO_0"

    goto :goto_1

    :pswitch_6
    const-string v0, "EVDO_A"

    goto :goto_1

    :pswitch_7
    const-string v0, "1xRTT"

    goto :goto_1

    :pswitch_8
    const-string v0, "HSDPA"

    goto :goto_1

    :pswitch_9
    const-string v0, "HSUPA"

    goto :goto_1

    :pswitch_a
    const-string v0, "HSPA"

    goto :goto_1

    :pswitch_b
    const-string v0, "IDEN"

    goto :goto_1

    :pswitch_c
    const-string v0, "EVDO_B"

    goto :goto_1

    :pswitch_d
    const-string v0, "LTE"

    goto :goto_1

    :pswitch_e
    const-string v0, "EHRPD"

    goto :goto_1

    :pswitch_f
    const-string v0, "HSPAP"

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    const/16 v3, 0x100

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static b(Lcom/amap/api/location/AMapLocation;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v1, v2, v6

    if-nez v1, :cond_1

    cmpl-double v1, v4, v6

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_0

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_0

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v2, v6

    if-ltz v1, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(I[B)[B
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x8

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(D)D
    .locals 4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static c()I
    .locals 3

    sget v0, Lcom/loc/ep;->b:I

    if-lez v0, :cond_0

    sget v0, Lcom/loc/ep;->b:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "android.os.Build$VERSION"

    :try_start_0
    const-string v2, "SDK_INT"

    invoke-static {v1, v2}, Lcom/loc/em;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "SDK"

    invoke-static {v1, v2}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->r(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getNetWorkInfo"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "AIRPLANE_MODE_ON"

    invoke-static {p1, v0}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v0, v4, v1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v0, v2

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "getInt"

    invoke-static {p1, v3, v4, v0}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/ep;->b(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static d()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x8000

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    const-string v4, ",nb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    const-string v4, ",access"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/ep;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "S128DF1572465B890OE3F7A13167KLEI"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/o;->b([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Utils"

    const-string v3, "isApplicationBroughtToBackground"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 10

    const/16 v3, 0x17

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_3

    check-cast p0, Landroid/app/Application;

    sget-object v4, Lcom/loc/ep;->d:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "checkSelfPermission"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    :cond_0
    :goto_2
    return v0

    :catch_0
    move-exception v3

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/loc/ep;->d:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    check-cast p0, Landroid/app/Application;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "checkSelfPermission"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/loc/ep;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public static h(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/loc/ep;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    const-string v0, "wifi"

    invoke-static {p0, v0}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/loc/ep;->a:Landroid/net/wifi/WifiManager;

    :cond_2
    :try_start_0
    sget-object v0, Lcom/loc/ep;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    :try_start_1
    sget-object v1, Lcom/loc/ep;->a:Landroid/net/wifi/WifiManager;

    const-string v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/loc/ep;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "DISCONNECTED"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "UNKNOWN"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v0, "WIFI"

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "GSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "2G"

    goto :goto_0

    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    :cond_4
    const-string v1, "TD-SCDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WCDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CDMA2000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_5
    const-string v0, "3G"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/loc/n;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "00:00:00:00:00:00"

    if-nez p0, :cond_5

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "00:00:00:00:00:00"

    :cond_2
    sget-boolean v1, Lcom/loc/ep;->f:Z

    if-nez v1, :cond_4

    if-eqz p0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pref"

    invoke-static {p0, v1}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "smac"

    invoke-static {v1, v2, v0}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/ep;->f:Z

    :cond_4
    return-object v0

    :cond_5
    const-string v1, "pref"

    const-string v2, "smac"

    invoke-static {p0, v1, v2, v0}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    const/16 v1, 0x1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.amap.api.location.APSService"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
