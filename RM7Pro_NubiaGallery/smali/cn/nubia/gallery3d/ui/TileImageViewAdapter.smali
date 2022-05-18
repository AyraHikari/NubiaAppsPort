.class public Lcn/nubia/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/TileImageView$TileSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field private final EXPERIENCE_VALUE:I

.field private isNeedColorSpace:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 38
    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->EXPERIENCE_VALUE:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->isNeedColorSpace:Z

    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v0

    const/16 v1, 0x280

    if-ge v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 84
    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    .line 85
    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 84
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 5

    shl-int v0, p4, p1

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, v0

    add-int/2addr v0, p3

    invoke-direct {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 168
    monitor-exit p0

    return-object p3

    .line 169
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    .line 175
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    shl-int/2addr v3, p1

    .line 176
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    monitor-enter p2

    .line 181
    :try_start_1
    invoke-virtual {p2, v0, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const-string p2, "TileImageViewAdapter"

    const-string v3, "fail in decoding region"

    .line 185
    invoke-static {p2, v3}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v2

    .line 190
    :cond_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 191
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    shr-int/2addr v3, p1

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    shr-int p1, v0, p1

    int-to-float p1, p1

    invoke-virtual {p4, v2, v3, p1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 182
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 171
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 47
    iput v1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 48
    iput v1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 49
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 205
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 210
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .line 215
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 5

    .line 103
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    shl-int v0, p4, p1

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, v0

    add-int/2addr v0, p3

    invoke-direct {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 116
    monitor-exit p0

    return-object p3

    .line 120
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    .line 122
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v3

    invoke-virtual {v3, p4, p4}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    .line 128
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    :cond_4
    :goto_1
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->isNeedColorSpace:Z

    if-eqz v0, :cond_5

    .line 133
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 135
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 136
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    shl-int p1, v2, p1

    .line 137
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 138
    iput-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 142
    :try_start_1
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    invoke-virtual {p2, v1, p4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v3, :cond_6

    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6

    .line 147
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p1

    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 148
    iput-object p3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_6
    if-nez v3, :cond_7

    const-string p1, "TileImageViewAdapter"

    const-string p2, "fail in decoding region"

    .line 153
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v3

    :catchall_0
    move-exception p1

    .line 144
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 146
    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p2, v3, :cond_8

    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_8

    .line 147
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p2

    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 148
    iput-object p3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 150
    :cond_8
    throw p1

    :catchall_2
    move-exception p1

    .line 122
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public setNeedColorSpace(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->isNeedColorSpace:Z

    return-void
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 66
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 67
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;II)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 71
    iput p2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 72
    iput p3, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;II)V
    .locals 0

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    .line 57
    iput p2, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 58
    iput p3, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
