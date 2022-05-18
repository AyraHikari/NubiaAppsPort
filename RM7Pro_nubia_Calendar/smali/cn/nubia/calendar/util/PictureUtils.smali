.class public Lcn/nubia/calendar/util/PictureUtils;
.super Ljava/lang/Object;
.source "PictureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v6, 0x43f00000    # 480.0f

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    :goto_0
    float-to-int v3, v4

    .line 100
    .local v3, "scaleRate":I
    if-gtz v3, :cond_0

    .line 101
    const/4 v3, 0x1

    .line 103
    :cond_0
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scaleRate":I
    :goto_1
    return-object v0

    .line 97
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v4, v4

    div-float/2addr v4, v6

    goto :goto_0

    .line 109
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBitmapByPathForScale(Ljava/lang/String;FF)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "destWidth"    # F
    .param p2, "destHeight"    # F

    .prologue
    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v6, 0x43f00000    # 480.0f

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    :goto_0
    float-to-int v3, v4

    .line 32
    .local v3, "scaleRate":I
    if-gtz v3, :cond_0

    .line 33
    const/4 v3, 0x1

    .line 35
    :cond_0
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scaleRate":I
    :goto_1
    if-nez v0, :cond_2

    .line 48
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-object v0

    .line 29
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v4, v4

    div-float/2addr v4, v6

    goto :goto_0

    .line 41
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p2, v5

    .line 48
    invoke-static {v0, v4, v5}, Lcn/nubia/calendar/util/PictureUtils;->scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaleXFactor"    # F
    .param p2, "scaleYFactor"    # F

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 65
    .local v8, "centerX":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 67
    .local v9, "centerY":I
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .line 68
    move v10, p2

    .line 73
    .local v10, "scale":F
    :goto_0
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 74
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v2, v9

    int-to-float v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 75
    int-to-float v0, v8

    int-to-float v2, v9

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 77
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 80
    .local v7, "bm":Landroid/graphics/Bitmap;
    return-object v7

    .line 70
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v10    # "scale":F
    :cond_0
    move v10, p1

    .restart local v10    # "scale":F
    goto :goto_0
.end method
