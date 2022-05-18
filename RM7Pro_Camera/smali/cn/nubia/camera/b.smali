.class public Lcn/nubia/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 158
    invoke-static {p0, p1, p2}, Lcn/nubia/camera/b;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 168
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, p1, v0}, Lcn/nubia/camera/b;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    if-eqz p2, :cond_7

    :cond_0
    if-eqz p0, :cond_7

    .line 49
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p2, :cond_5

    add-int/lit16 p1, p1, 0x168

    .line 53
    rem-int/lit16 p1, p1, 0x168

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_4

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid degrees="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 55
    :cond_4
    :goto_1
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    int-to-float p1, p1

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 66
    invoke-virtual {v5, p1, p2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 71
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_7

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "BitmapProcess"

    const-string v0, "Have no memory to rotate. Return the original bitmap."

    .line 78
    invoke-static {p2, v0, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-object p0
.end method

.method public static a([BI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 114
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 115
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 118
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v1, v4, p1}, Lcn/nubia/camera/b;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 127
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "BitmapProcess"

    const-string v1, "Got oom exception "

    .line 132
    invoke-static {p1, v1, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static a([BII)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p2, 0x0

    .line 86
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 90
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 96
    :goto_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, p1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v2, v4, :cond_1

    .line 97
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 99
    :cond_1
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shr-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 103
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    array-length p1, p0

    invoke-static {p0, v3, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_1
    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "BitmapProcess"

    const-string v0, "Got oom exception "

    .line 107
    invoke-static {p1, v0, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 176
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 177
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gez p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gez p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    .line 183
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 182
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    return p0

    :cond_3
    if-gez p1, :cond_4

    return v4

    :cond_4
    return v0
.end method
