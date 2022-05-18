.class public Lcn/nubia/improve/category/algorithm/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2byteArray(Landroid/graphics/Bitmap;)[B
    .locals 10

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v9, v0, [I

    .line 20
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p0, v0, 0x4

    .line 21
    new-array p0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    aget v3, v9, v1

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    .line 24
    aget v4, v9, v1

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v2, 0x2

    .line 25
    aget v4, v9, v1

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v2, 0x3

    .line 26
    aget v4, v9, v1

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static byteArray2Bitmap([BII)Landroid/graphics/Bitmap;
    .locals 8

    mul-int v0, p1, p2

    .line 9
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x3

    .line 11
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
