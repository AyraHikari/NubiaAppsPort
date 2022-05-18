.class public final Lcom/loc/el;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


# static fields
.field static a:D

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/loc/el;->a:D

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/amap/api/location/DPoint;

    const/4 v2, 0x0

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x4037614434e3369cL    # 23.379947

    const-wide v6, 0x405df072b4528284L    # 119.757001

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x4038fbb9496249a1L    # 24.983296

    const-wide v6, 0x405e1e5e2478854dL    # 120.474496

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x403984caf709b739L    # 25.518722

    const-wide v6, 0x405e57080b673c4fL    # 121.359866

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x403969cd5f99c38bL    # 25.41329

    const-wide v6, 0x405e9c63a5c1c609L    # 122.443582

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x4038dcda6e75ff61L    # 24.862708

    const-wide v6, 0x405e92746455eaeeL    # 122.288354

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x403876173b85e80cL    # 24.461292

    const-wide v6, 0x405e8c0d6b228dcaL    # 122.188319

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x403595b2e59af9ecL    # 21.584761

    const-wide v6, 0x405e3e02d59d55e7L    # 120.968923

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/amap/api/location/DPoint;

    const-wide v4, 0x4035d4b1bbcf4e87L    # 21.830837

    const-wide v6, 0x405e29e26d4801f7L    # 120.654445

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/loc/el;->b:Ljava/util/List;

    return-void
.end method

.method private static a(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/loc/el;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/loc/el;->b(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 18

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ej;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/loc/el;->c(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    new-instance v4, Lcom/amap/api/location/DPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    sget-object v0, Lcom/loc/el;->b:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/loc/ej;->a(Lcom/amap/api/location/DPoint;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/loc/el;->c(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, v0, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, v2, v6

    const-wide/high16 v8, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v6

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v4

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL    # 0.2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    mul-double/2addr v12, v4

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v4

    sget-wide v16, Lcom/loc/el;->a:D

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    sget-wide v12, Lcom/loc/el;->a:D

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double v14, v6, v14

    sget-wide v16, Lcom/loc/el;->a:D

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    div-double v12, v6, v12

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4074000000000000L    # 320.0

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v14, v6

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x4072c00000000000L    # 300.0

    add-double/2addr v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v4

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v4

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    mul-double/2addr v12, v4

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v4

    sget-wide v16, Lcom/loc/el;->a:D

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    sget-wide v12, Lcom/loc/el;->a:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double v14, v4, v14

    sget-wide v16, Lcom/loc/el;->a:D

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide v10, 0x4062c00000000000L    # 150.0

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    div-double v12, v4, v12

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide v12, 0x4072c00000000000L    # 300.0

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v4, v14

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v10

    add-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, v2, v6

    sget-wide v10, Lcom/loc/el;->a:D

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double/2addr v14, v10

    mul-double/2addr v10, v14

    sub-double v10, v12, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v14

    const-wide v14, 0x41582b102de355c1L    # 6335552.717000426

    mul-double/2addr v10, v12

    div-double v10, v14, v10

    sget-wide v14, Lcom/loc/el;->a:D

    mul-double/2addr v10, v14

    div-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v10

    const-wide v10, 0x415854c140000000L    # 6378245.0

    div-double/2addr v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    sget-wide v10, Lcom/loc/el;->a:D

    mul-double/2addr v6, v10

    div-double/2addr v4, v6

    add-double v6, v2, v8

    add-double/2addr v4, v0

    new-instance v8, Lcom/amap/api/location/DPoint;

    invoke-direct {v8, v6, v7, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    invoke-virtual {v8}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    sub-double v4, v0, v4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    invoke-virtual {v8}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    sub-double v2, v0, v2

    new-instance v0, Lcom/amap/api/location/DPoint;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "b2G"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static b(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/loc/el;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static b(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 10

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ej;->a(DD)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/32 v4, 0x2255100

    rem-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/32 v4, 0x2255100

    rem-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/el;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    invoke-static {v0, v1, v2, v3}, Lcom/loc/el;->b(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v2

    double-to-int v5, v6

    int-to-double v6, v4

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/loc/el;->a(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v1, v0

    int-to-double v6, v1

    int-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Lcom/loc/el;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    int-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v2, v1

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    int-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v4

    new-instance v4, Lcom/amap/api/location/DPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {p0, v4}, Lcom/loc/el;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "marbar2G"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ej;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/eq;->a(DD)[D

    move-result-object v1

    new-instance v0, Lcom/amap/api/location/DPoint;

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "cover part2"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(D)D
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 22

    const-wide v4, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v2, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    new-instance v1, Lcom/amap/api/location/DPoint;

    invoke-direct {v1}, Lcom/amap/api/location/DPoint;-><init>()V

    sub-double v4, v6, v4

    sub-double v2, v8, v2

    new-instance v10, Lcom/amap/api/location/DPoint;

    invoke-direct {v10}, Lcom/amap/api/location/DPoint;-><init>()V

    invoke-static {v4, v5}, Lcom/loc/el;->b(D)D

    move-result-wide v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Lcom/loc/el;->a(D)D

    move-result-wide v14

    mul-double v16, v4, v4

    mul-double v18, v2, v2

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide v14, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v12, v14

    invoke-static {v4, v5}, Lcom/loc/el;->b(D)D

    move-result-wide v14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v2, v3}, Lcom/loc/el;->a(D)D

    move-result-wide v16

    mul-double v18, v4, v4

    mul-double v20, v2, v2

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    add-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3f789374bc6a7efaL    # 0.006

    add-double v14, v14, v16

    invoke-static {v12, v13}, Lcom/loc/el;->c(D)D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    invoke-static {v14, v15}, Lcom/loc/el;->c(D)D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    add-double/2addr v4, v6

    invoke-virtual {v10}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/loc/el;->c(D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    add-double/2addr v2, v8

    invoke-virtual {v10}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/loc/el;->c(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    sub-double v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-object v1
.end method
