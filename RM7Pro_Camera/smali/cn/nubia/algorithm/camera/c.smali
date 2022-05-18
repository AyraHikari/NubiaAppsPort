.class public Lcn/nubia/algorithm/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:[I

.field private f:J


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    .line 21
    iput v0, p0, Lcn/nubia/algorithm/camera/c;->a:I

    .line 22
    iput v0, p0, Lcn/nubia/algorithm/camera/c;->b:I

    .line 23
    iput v0, p0, Lcn/nubia/algorithm/camera/c;->c:I

    .line 24
    iput v0, p0, Lcn/nubia/algorithm/camera/c;->d:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 25
    iput-object v0, p0, Lcn/nubia/algorithm/camera/c;->e:[I

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcn/nubia/algorithm/camera/c;->f:J

    .line 29
    invoke-static {p1}, Lcn/nubia/algorithm/utils/SnpeJni;->initSNPE([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/algorithm/camera/c;->f:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const-string p1, "PrismaJni"

    const-string v0, "init snpe fail!"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lcn/nubia/algorithm/camera/c;->e:[I

    invoke-static {v2, v3, p1}, Lcn/nubia/algorithm/utils/SnpeJni;->getInputSize(J[I)V

    .line 35
    iget-object p1, p0, Lcn/nubia/algorithm/camera/c;->e:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcn/nubia/algorithm/camera/c;->d:I

    iput v0, p0, Lcn/nubia/algorithm/camera/c;->b:I

    const/4 v0, 0x1

    .line 36
    aget p1, p1, v0

    add-int/lit8 p1, p1, -0x50

    iput p1, p0, Lcn/nubia/algorithm/camera/c;->c:I

    iput p1, p0, Lcn/nubia/algorithm/camera/c;->a:I

    return-void
.end method

.method private a(II[F)Landroid/graphics/Bitmap;
    .locals 3

    .line 67
    iget v0, p0, Lcn/nubia/algorithm/camera/c;->c:I

    iget v1, p0, Lcn/nubia/algorithm/camera/c;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    iget v1, p0, Lcn/nubia/algorithm/camera/c;->c:I

    iget v2, p0, Lcn/nubia/algorithm/camera/c;->d:I

    invoke-static {p3, v0, v1, v2}, Lcn/nubia/algorithm/utils/SnpeJni;->floatArrayToBitmap([FLandroid/graphics/Bitmap;II)Z

    const/4 p3, 0x1

    .line 69
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcn/nubia/algorithm/utils/a;II)[F
    .locals 1

    .line 75
    invoke-static {p1, p2, p3}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->c()[I

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 78
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 80
    iget p2, p0, Lcn/nubia/algorithm/camera/c;->a:I

    iget p3, p0, Lcn/nubia/algorithm/camera/c;->b:I

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 82
    iget p2, p0, Lcn/nubia/algorithm/camera/c;->a:I

    add-int/lit8 p2, p2, 0x50

    iget p3, p0, Lcn/nubia/algorithm/camera/c;->b:I

    add-int/lit8 p3, p3, 0x50

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 p3, 0x28

    .line 83
    invoke-static {p1, p2, p3}, Lcn/nubia/algorithm/utils/SnpeJni;->addPadding(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    .line 85
    invoke-static {p2}, Lcn/nubia/algorithm/utils/SnpeJni;->bitmapToFloatArray(Landroid/graphics/Bitmap;)[F

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Lcn/nubia/algorithm/utils/a;II)Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "PrismaJni"

    const-string p2, "snpe has been release!"

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-object v1

    .line 44
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/algorithm/camera/c;->b(Lcn/nubia/algorithm/utils/a;II)[F

    move-result-object p1

    .line 45
    iget-wide v2, p0, Lcn/nubia/algorithm/camera/c;->f:J

    invoke-static {v2, v3, p1}, Lcn/nubia/algorithm/utils/SnpeJni;->process(J[F)[F

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 47
    monitor-exit p0

    return-object v1

    .line 49
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p3, p1}, Lcn/nubia/algorithm/camera/c;->a(II[F)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 53
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 54
    invoke-static {v0, v1}, Lcn/nubia/algorithm/utils/SnpeJni;->releaseSNPE(J)V

    .line 55
    iput-wide v2, p0, Lcn/nubia/algorithm/camera/c;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
