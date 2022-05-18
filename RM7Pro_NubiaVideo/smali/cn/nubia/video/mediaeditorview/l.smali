.class public Lcn/nubia/video/mediaeditorview/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    if-le p0, p2, :cond_0

    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, p0

    int-to-float v4, p2

    div-float/2addr v3, v4

    .line 4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v2, v2

    .line 7
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 8
    :cond_1
    :goto_0
    div-int v3, v0, v2

    div-int/lit8 v4, p1, 0x2

    if-lt v3, v4, :cond_3

    div-int v3, p0, v2

    div-int/lit8 v4, p2, 0x2

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    div-int/lit8 v2, v2, 0x2

    if-gt v2, v1, :cond_1

    :goto_2
    return v1
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    invoke-static {p0}, Lcn/nubia/video/mediaeditorview/l;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 8
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v4, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v1
.end method

.method public static d(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v2}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v2, p0}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 3
    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, p0

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 7
    :cond_2
    throw p0
.end method
