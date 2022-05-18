.class public Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;
.super Ljava/lang/Object;
.source "ImageLoaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 44
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 45
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 48
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 49
    div-int/lit8 p0, p0, 0x2

    .line 51
    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_1

    div-int v2, p0, v1

    if-le v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p1
.end method

.method public static loadFromFd(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 13
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 16
    invoke-static {v0, p1, p2}, Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;->calculateInSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 20
    invoke-static {p0, p1, p2}, Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;->createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static loadFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    .line 28
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 32
    invoke-static {v0, p2, p3}, Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;->calculateInSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 37
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 39
    invoke-static {p0, p2, p3}, Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;->createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
