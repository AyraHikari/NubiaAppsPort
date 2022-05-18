.class public Lcn/nubia/camera/x/d;
.super Lcn/nubia/camera/i/a;
.source "SourceFile"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/camera/i/a;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 25
    iput-object p1, p0, Lcn/nubia/camera/x/d;->a:[I

    return-void
.end method

.method private a([BII)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_2

    .line 110
    array-length v0, p1

    if-eqz v0, :cond_2

    if-lez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    mul-int v0, p2, p3

    .line 113
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x3

    .line 115
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/x/d;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcn/nubia/camera/i/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 10

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v8, v6, v7

    .line 80
    new-array v9, v8, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v9

    move v3, v6

    .line 81
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p1, v8, 0x3

    .line 82
    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    mul-int/lit8 v1, v0, 0x3

    .line 84
    aget v2, v9, v0

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 85
    aget v3, v9, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x2

    .line 86
    aget v2, v9, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private b(Landroid/graphics/Bitmap;)[F
    .locals 10

    .line 93
    invoke-super {p0}, Lcn/nubia/camera/i/a;->b()I

    move-result v6

    .line 94
    invoke-super {p0}, Lcn/nubia/camera/i/a;->c()I

    move-result v7

    .line 95
    invoke-super {p0}, Lcn/nubia/camera/i/a;->d()I

    move-result v8

    const/4 v0, 0x1

    .line 96
    invoke-static {p1, v6, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int p1, v6, v7

    .line 98
    new-array v9, p1, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move v3, v6

    .line 99
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v0, p1, v8

    .line 100
    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int v2, v1, v8

    .line 102
    aget v3, v9, v1

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    aput v3, v0, v2

    add-int/lit8 v3, v2, 0x1

    .line 103
    aget v7, v9, v1

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    mul-float/2addr v7, v5

    sub-float/2addr v7, v6

    aput v7, v0, v3

    add-int/lit8 v2, v2, 0x2

    .line 104
    aget v3, v9, v1

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/x/d;->a:[I

    aput v1, p1, v1

    return-object v0

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/d;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/d;->b(Landroid/graphics/Bitmap;)[F

    move-result-object p1

    invoke-super {p0, p1}, Lcn/nubia/camera/i/a;->a([F)[F

    move-result-object v5

    .line 62
    invoke-super {p0}, Lcn/nubia/camera/i/a;->e()I

    move-result v6

    .line 63
    invoke-super {p0}, Lcn/nubia/camera/i/a;->f()I

    move-result v7

    if-nez v5, :cond_1

    .line 65
    iget-object p1, p0, Lcn/nubia/camera/x/d;->a:[I

    aput v1, p1, v1

    return-object v0

    .line 69
    :cond_1
    iget-object v10, p0, Lcn/nubia/camera/x/d;->a:[I

    move v8, p2

    move v9, p3

    invoke-static/range {v2 .. v10}, Lcn/nubia/algorithm/camera/IdPhoto;->generatePhoto([BII[FIIII[I)[B

    move-result-object p1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/x/d;->a([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-super {p0}, Lcn/nubia/camera/i/a;->a()V

    .line 47
    invoke-static {}, Lcn/nubia/algorithm/camera/IdPhoto;->release()V

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 1

    .line 32
    new-instance v0, Lcn/nubia/camera/x/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/x/d$1;-><init>(Lcn/nubia/camera/x/d;)V

    .line 40
    invoke-virtual {v0}, Lcn/nubia/camera/x/d$1;->start()V

    return-void
.end method

.method public h()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/x/d;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
