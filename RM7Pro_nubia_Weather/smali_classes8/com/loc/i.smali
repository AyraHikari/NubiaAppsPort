.class public final Lcom/loc/i;
.super Ljava/lang/Object;
.source "LastLocationManager.java"


# static fields
.field static b:Lcom/loc/ea;

.field static e:Lcom/loc/ae;

.field static g:J


# instance fields
.field a:Ljava/lang/String;

.field c:Lcom/loc/ea;

.field d:Lcom/loc/ea;

.field f:J

.field h:Z

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    sput-object v0, Lcom/loc/i;->e:Lcom/loc/ae;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/i;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    iput-object v0, p0, Lcom/loc/i;->d:Lcom/loc/ea;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/i;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/i;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->i:Landroid/content/Context;

    return-void
.end method

.method private e()V
    .locals 4

    sget-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/i;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/loc/i;->f()Lcom/loc/ea;

    move-result-object v0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/loc/i;->g:J

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    :cond_1
    return-void
.end method

.method private f()Lcom/loc/ea;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/i;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/loc/i;->a()V

    :try_start_0
    sget-object v0, Lcom/loc/i;->e:Lcom/loc/ae;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/loc/i;->e:Lcom/loc/ae;

    const-string v2, "_id=1"

    const-class v3, Lcom/loc/ea;

    invoke-virtual {v0, v2, v3}, Lcom/loc/ae;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ea;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/loc/ea;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/o;->b(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/loc/i;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/dy;->b([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v2, v3

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/loc/ea;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/o;->b(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/loc/i;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/loc/dy;->b([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/loc/ea;->a(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V

    invoke-static {v2}, Lcom/loc/ep;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/loc/ea;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    const-string v2, "LastLocationManager"

    const-string v3, "readLastFix"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/i;->e()V

    sget-object v1, Lcom/loc/i;->b:Lcom/loc/ea;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v1}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    sget-object v4, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v4}, Lcom/loc/ea;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    cmp-long v2, v2, p3

    if-gtz v2, :cond_4

    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    :goto_2
    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v0}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setFixLastLocation(Z)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v2, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v2}, Lcom/loc/ea;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/loc/ep;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    const-string v1, "LastLocationManager"

    const-string v2, "fixLastLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lcom/loc/i;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/i;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MD5"

    iget-object v1, p0, Lcom/loc/i;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/loc/i;->e:Lcom/loc/ae;

    if-nez v0, :cond_2

    const-class v0, Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/ae;->a(Ljava/lang/Class;)Lcom/loc/ad;

    move-result-object v0

    new-instance v1, Lcom/loc/ae;

    iget-object v2, p0, Lcom/loc/i;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/loc/ae;-><init>(Landroid/content/Context;Lcom/loc/ad;)V

    sput-object v1, Lcom/loc/i;->e:Lcom/loc/ae;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/i;->h:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "<init>:DBOperation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loc/i;->i:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->isFixLastLocation()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/loc/ea;

    invoke-direct {v2}, Lcom/loc/ea;-><init>()V

    invoke-virtual {v2, p1}, Lcom/loc/ea;->a(Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loc/ea;->a(Ljava/lang/String;)V

    :goto_1
    :try_start_0
    sput-object v2, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/i;->g:J

    iput-object v2, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    iget-object v3, p0, Lcom/loc/i;->d:Lcom/loc/ea;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/loc/i;->d:Lcom/loc/ea;

    invoke-virtual {v3}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v3

    invoke-virtual {v2}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/i;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Lcom/loc/ea;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "LastLocationManager"

    const-string v3, "setLastFix"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/amap/api/location/AMapLocation;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/i;->e()V

    sget-object v1, Lcom/loc/i;->b:Lcom/loc/ea;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v1}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v0}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/i;->d()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/i;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/i;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/i;->d:Lcom/loc/ea;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/i;->a()V

    iget-object v1, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    invoke-virtual {v1}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/loc/i;->e:Lcom/loc/ae;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    iget-object v2, p0, Lcom/loc/i;->d:Lcom/loc/ea;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    invoke-virtual {v1}, Lcom/loc/ea;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    invoke-virtual {v1}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    invoke-virtual {v2}, Lcom/loc/ea;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/i;->c:Lcom/loc/ea;

    iput-object v3, p0, Lcom/loc/i;->d:Lcom/loc/ea;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/loc/i;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/loc/dy;->a([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/loc/i;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/dy;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/o;->b([B)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/loc/ea;

    invoke-direct {v2}, Lcom/loc/ea;-><init>()V

    invoke-virtual {v2, v1}, Lcom/loc/ea;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/loc/ea;->a(J)V

    invoke-virtual {v2, v0}, Lcom/loc/ea;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/loc/i;->e:Lcom/loc/ae;

    const-string v1, "_id=1"

    invoke-virtual {v0, v2, v1}, Lcom/loc/ae;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/i;->f:J

    sget-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/loc/ea;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "saveLastFix"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
