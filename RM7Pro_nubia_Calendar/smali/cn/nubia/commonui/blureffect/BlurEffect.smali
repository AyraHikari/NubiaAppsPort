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
    .locals 14
    .param p0, "wallPapaerBmp"    # Landroid/graphics/Bitmap;
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 200
    if-nez p0, :cond_1

    move-object p0, v9

    .line 222
    .end local p0    # "wallPapaerBmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 201
    .restart local p0    # "wallPapaerBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 202
    .local v7, "rWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 203
    .local v6, "rHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 204
    .local v3, "dWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 205
    .local v2, "dHeight":I
    if-ne v7, v3, :cond_2

    if-eq v6, v2, :cond_0

    .line 209
    :cond_2
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 212
    .local v4, "dstRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, p1, Landroid/graphics/Rect;->right:I

    iget v13, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v8, "srcRect":Landroid/graphics/Rect;
    if-ge v3, v7, :cond_3

    .line 215
    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 216
    const/4 v10, 0x0

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 218
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v1, p0, v8, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 220
    goto :goto_0

    .line 221
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "dstRect":Landroid/graphics/Rect;
    .end local v8    # "srcRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/OutOfMemoryError;
    move-object p0, v9

    .line 222
    goto :goto_0
.end method

.method public static doArcBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "arcHeight"    # I

    .prologue
    const/4 v9, 0x1

    .line 126
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 127
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 128
    .local v1, "bmpWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 129
    .local v0, "bmpHeight":I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 131
    const v3, 0x424242

    .line 132
    .local v3, "color":I
    const v8, 0x424242

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 135
    mul-int v8, v1, v1

    int-to-float v8, v8

    const/high16 v9, 0x3e000000    # 0.125f

    mul-float/2addr v8, v9

    int-to-float v9, p1

    div-float/2addr v8, v9

    int-to-float v9, p1

    add-float v7, v8, v9

    .line 136
    .local v7, "radius":F
    int-to-float v8, v1

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v4, v8, v9

    .line 137
    .local v4, "cx":F
    int-to-float v8, v0

    add-float/2addr v8, v7

    int-to-float v9, p1

    sub-float v5, v8, v9

    .line 138
    .local v5, "cy":F
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 139
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    return-object p0
.end method

.method public static doBitmapGaussianBlurByDefault(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "wallpaperBmp"    # Landroid/graphics/Bitmap;
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 155
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, p1, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doBitmapGaussianBlurInGeneral(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBitmapGaussianBlurInGeneral(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "wallpaperBmp"    # Landroid/graphics/Bitmap;
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "scale"    # I
    .param p3, "sigma"    # F

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcn/nubia/commonui/blureffect/BlurEffect;->clipWallPaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "clipBmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2, p3}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static doGaussianBlur(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlur(Landroid/graphics/Bitmap;IF)Z

    move-result v0

    return v0
.end method

.method public static doGaussianBlur(Landroid/graphics/Bitmap;IF)Z
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I
    .param p2, "sigma"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    .local v6, "srcRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 51
    .local v3, "dstRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 52
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x0

    .line 53
    .local v0, "bitmapSubIn":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 54
    .local v1, "bitmapSubOut":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 56
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-ne v8, v10, :cond_1

    :cond_0
    move v8, v9

    .line 77
    :goto_0
    return v8

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int v7, v10, p1

    .line 61
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int v4, v10, p1

    .line 62
    .local v4, "height":I
    int-to-float v10, p1

    div-float/2addr p2, v10

    .line 63
    invoke-static {p0, v7, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    invoke-static {v0, v1, p2}, Lcn/nubia/commonui/blureffect/BlurEffect;->getGaussianBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "srcRect":Landroid/graphics/Rect;
    invoke-direct {v6, v9, v9, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .restart local v6    # "srcRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v3, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .restart local v3    # "dstRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .restart local v5    # "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 74
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static doGaussianBlur2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

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
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I
    .param p2, "sigma"    # F

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doGaussianBlurByDefault(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 180
    const/16 v0, 0x10

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, p1, v0, v1}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurInGeneral(Landroid/content/Context;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doGaussianBlurInGeneral(Landroid/content/Context;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "scale"    # I
    .param p3, "sigma"    # F

    .prologue
    .line 193
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 194
    .local v1, "wallPaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 195
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p1}, Lcn/nubia/commonui/blureffect/BlurEffect;->clipWallPaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, "clipBmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {v0, p2, p3}, Lcn/nubia/commonui/blureffect/BlurEffect;->doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private static doGaussianBlurSelf(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I
    .param p2, "sigma"    # F

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 102
    .local v6, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 103
    .local v5, "srcHeight":I
    div-int v7, v6, p1

    .line 104
    .local v7, "width":I
    div-int v3, v5, p1

    .line 105
    .local v3, "height":I
    int-to-float v8, p1

    div-float/2addr p2, v8

    .line 107
    const/4 v8, 0x1

    :try_start_0
    invoke-static {p0, v7, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "bitmapSubIn":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 109
    .local v1, "bitmapSubOut":Landroid/graphics/Bitmap;
    invoke-static {v0, v1, p2}, Lcn/nubia/commonui/blureffect/BlurEffect;->getGaussianBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    const/4 v0, 0x0

    .line 112
    const/4 v8, 0x1

    invoke-static {v1, v6, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 115
    .end local v0    # "bitmapSubIn":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapSubOut":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static native getFrostedGlassMask(Landroid/graphics/Bitmap;IIII)V
.end method

.method public static native getGaussianBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native getSimpleBlurEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method
