.class public Lcom/amap/api/location/CoordinateConverter;
.super Ljava/lang/Object;
.source "CoordinateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/CoordinateConverter$CoordType;
    }
.end annotation


# static fields
.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# instance fields
.field a:Lcom/amap/api/location/DPoint;

.field private j:Landroid/content/Context;

.field private k:Lcom/amap/api/location/CoordinateConverter$CoordType;

.field private l:Lcom/amap/api/location/DPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/location/CoordinateConverter;->c:I

    const/4 v0, 0x2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/amap/api/location/CoordinateConverter;->e:I

    const/16 v0, 0x8

    sput v0, Lcom/amap/api/location/CoordinateConverter;->f:I

    const/16 v0, 0x10

    sput v0, Lcom/amap/api/location/CoordinateConverter;->g:I

    const/16 v0, 0x20

    sput v0, Lcom/amap/api/location/CoordinateConverter;->h:I

    const/16 v0, 0x40

    sput v0, Lcom/amap/api/location/CoordinateConverter;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    return-void
.end method

.method public static calculateLineDistance(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/ep;->a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAMapDataAvailable(DD)Z
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/loc/ej;->a(DD)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized convert()Lcom/amap/api/location/DPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u6362\u5750\u6807\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u6362\u5750\u6807\u6e90\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v3, Lcom/amap/api/location/CoordinateConverter$1;->a:[I

    iget-object v4, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;

    invoke-virtual {v4}, Lcom/amap/api/location/CoordinateConverter$CoordType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_6
    move v1, v2

    :goto_0
    if-eqz v1, :cond_8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "amap_loc_coordinate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    const-string v2, "O021"

    invoke-static {v0, v2, v1}, Lcom/loc/en;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-static {v3}, Lcom/loc/el;->a(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->c:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    const-string v0, "baidu"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->c:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-static {v3, v4}, Lcom/loc/el;->b(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->d:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    const-string v0, "mapbar"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->d:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    goto :goto_0

    :pswitch_2
    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->e:I

    and-int/2addr v3, v4

    if-nez v3, :cond_d

    const-string v0, "mapabc"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->e:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    :goto_1
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_0

    :pswitch_3
    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->f:I

    and-int/2addr v3, v4

    if-nez v3, :cond_c

    const-string v0, "sosomap"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->f:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    :goto_2
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_0

    :pswitch_4
    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->g:I

    and-int/2addr v3, v4

    if-nez v3, :cond_b

    const-string v0, "aliyun"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->g:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    :goto_3
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto/16 :goto_0

    :pswitch_5
    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->h:I

    and-int/2addr v3, v4

    if-nez v3, :cond_a

    const-string v0, "google"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->h:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    :goto_4
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto/16 :goto_0

    :pswitch_6
    sget v3, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->i:I

    and-int/2addr v3, v4

    if-nez v3, :cond_9

    const-string v0, "gps"

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v3, Lcom/amap/api/location/CoordinateConverter;->i:I

    or-int/2addr v2, v3

    sput v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    :goto_5
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-static {v2, v3}, Lcom/loc/el;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_2

    :cond_d
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized coord(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/CoordinateConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4f20\u5165\u7ecf\u7eac\u5ea6\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized from(Lcom/amap/api/location/CoordinateConverter$CoordType;)Lcom/amap/api/location/CoordinateConverter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
