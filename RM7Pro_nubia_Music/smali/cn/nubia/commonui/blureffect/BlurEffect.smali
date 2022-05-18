.class public Lcn/nubia/commonui/blureffect/BlurEffect;
.super Ljava/lang/Object;
.source "BlurEffect.java"


# static fields
.field public static final DEFAULT_SCALE:I = 0x10

.field public static final DEFAULT_SIGMA:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "BlurEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clipWallPaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p0, :cond_1

    move-object p0, v0

    .line 222
    :cond_0
    :goto_0
    return-object p0

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 205
    if-ne v2, v4, :cond_2

    if-eq v3, v1, :cond_0

    .line 209
    :cond_2
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 212
    new-instance v3, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    if-ge v4, v2, :cond_3

    .line 215
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 216
    const/4 v2, 0x0

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 218
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v5, p0, v3, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 220
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 222
    goto :goto_0
.end method

.method public static doArcBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 129
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 132
    const v4, 0x424242

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 135
    mul-int v4, v1, v1

    int-to-float v4, v4

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float/2addr v4, v5

    int-to-float v5, p1

    div-float/2addr v4, v5

    int-to-float v5, p1

    add-float/2addr v4, v5

    .line 136
    int-to-float v1, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    .line 137
    int-to-float v2, v2

    add-float/2addr v2, v4

    int-to-float v5, p1

    sub-float/2addr v2, v5

    .line 138
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 139
    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    return-object p0
.end method

.method public static doBitmapGaussianBlurByDefault(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 155
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, p1, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doBitmapGaussianBlurInGeneral(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBitmapGaussianBlurInGeneral(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcn/nubia/commonui/blureffect/BlurEffect;->clipWallPaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p2, p3}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static doGaussianBlur(Landroid/graphics/Bitmap;)Z
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlur(Landroid/graphics/Bitmap;IF)Z

    move-result v0

    return v0
.end method

.method public static doGaussianBlur(Landroid/graphics/Bitmap;IF)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, p1

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, p1

    .line 62
    int-to-float v4, p1

    div-float v4, p2, v4

    .line 63
    invoke-static {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 64
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 65
    invoke-static {v5, v6, v4}, Lcn/nubia/commonui/blureffect/BlurEffect;->getGaussianBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 66
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v2, v1, v1, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 72
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 74
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    invoke-virtual {v4, v6, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static doGaussianBlur2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 86
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doGaussianBlur2(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doGaussianBlurByDefault(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 180
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, p1, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurInGeneral(Landroid/content/Context;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doGaussianBlurInGeneral(Landroid/content/Context;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 193
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 195
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/commonui/blureffect/BlurEffect;->clipWallPaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p2, p3}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 103
    div-int v2, v0, p1

    .line 104
    div-int v3, v1, p1

    .line 105
    int-to-float v4, p1

    div-float v4, p2, v4

    .line 107
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 108
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    invoke-static {v5, v2, v4}, Lcn/nubia/commonui/blureffect/BlurEffect;->getGaussianBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 110
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native getFrostedGlassMask(Landroid/graphics/Bitmap;IIII)V
.end method

.method public static native getGaussianBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native getSimpleBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method
