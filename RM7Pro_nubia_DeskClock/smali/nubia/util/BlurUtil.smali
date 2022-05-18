.class public Lnubia/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field public static final BLUR_RADIUS_100:I = 0x5a

.field public static final BLUR_RADIUS_25:I = 0x5a

.field public static final BLUR_RADIUS_DEFAULT:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "DeskClock:[BlurUtil]"

.field private static final mSurpportBlurRadius:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    .line 18
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void

    .line 13
    :array_0
    .array-data 4
        0x5a
        0xa
        0x5a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 126
    int-to-float v0, p2

    invoke-static {p1, v0}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "radius"    # F
    .param p3, "color"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "bitmapSub":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-ne v5, v4, :cond_1

    .line 98
    :cond_0
    const-string v4, "DeskClock:[BlurUtil]"

    const-string v5, "doBlur ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-object v3

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v2, v4

    .line 104
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v1, v4

    .line 105
    .local v1, "height":I
    div-float/2addr p2, p1

    .line 107
    if-le v2, v5, :cond_2

    if-gt v1, v5, :cond_3

    .line 108
    :cond_2
    const-string v4, "DeskClock:[BlurUtil]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GaussianBlurEffect error width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {p0, v2, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    invoke-static {v0, p2, p3}, Lnubia/util/BlurUtil;->getBlurEffect(Landroid/graphics/Bitmap;FI)V

    move-object v3, v0

    .line 115
    goto :goto_0
.end method

.method public static doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
    .param p2, "color"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 84
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {p0, v1, v2, p2}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    :goto_1
    return-object v1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native getBlurEffect(Landroid/graphics/Bitmap;FI)V
.end method

.method private static getInnerRadiusByBlurRadius(I)F
    .locals 3
    .param p0, "radius"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p0, v1, :cond_0

    .line 64
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    .line 68
    :goto_1
    return v1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/16 v1, 0x5a

    invoke-static {v1}, Lnubia/util/BlurUtil;->getInnerRadiusByBlurRadius(I)F

    move-result v1

    goto :goto_1
.end method

.method public static getInnerScaleByBlurRadius(I)F
    .locals 3
    .param p0, "radius"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 53
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p0, v1, :cond_0

    .line 54
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    .line 58
    :goto_1
    return v1

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/16 v1, 0x5a

    invoke-static {v1}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v1

    goto :goto_1
.end method

.method private static getSurpportBlurRadius()[I
    .locals 5

    .prologue
    .line 28
    sget-object v3, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v3

    .line 29
    .local v1, "length":I
    new-array v2, v1, [I

    .line 31
    .local v2, "radiusArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 32
    sget-object v3, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v2, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-object v2
.end method

.method private static isSurpportBlurRadius(I)Z
    .locals 3
    .param p0, "radius"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 40
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne p0, v2, :cond_1

    .line 41
    const/4 v1, 0x1

    .line 45
    :cond_0
    return v1

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
