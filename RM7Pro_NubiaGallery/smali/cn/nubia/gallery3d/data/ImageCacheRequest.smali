.class public abstract Lcn/nubia/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final PANORAMASIGNALCASESIZE:I = 0x96000

.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"


# instance fields
.field private isNeedColorSpace:Z

.field protected mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mDate:J

.field protected mLocalFilePath:Ljava/lang/String;

.field private final mPanoScale:F

.field protected mPath:Lcn/nubia/gallery3d/data/Path;

.field protected mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->isNeedColorSpace:Z

    .line 53
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 54
    iput-object p2, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 55
    iput p3, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    .line 56
    iput p7, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 57
    iput-wide p4, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mDate:J

    .line 58
    iput-object p6, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070200

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f0701ff

    .line 62
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 63
    iput p1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPanoScale:F

    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "THUMB"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "MICROTHUMB"

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const-string v1, "BMPTHUMB"

    goto :goto_0

    :cond_3
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private recodeBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const v1, 0x96000

    if-gt v0, v1, :cond_0

    return-object p1

    .line 195
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    .line 197
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private requestImageFromCache(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 12

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getImageCacheService()Lcn/nubia/gallery3d/data/ImageCacheService;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/BytesBufferPool;->get()Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v8

    .line 107
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v9

    .line 109
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mDate:J

    move-object v1, v0

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->getImageData(Ljava/lang/String;IJLcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    .line 111
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 138
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    return-object v3

    :cond_0
    const/4 v2, 0x2

    const-string v4, "ImageCacheRequest"

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eqz v9, :cond_1

    .line 113
    :try_start_1
    instance-of v0, v9, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v0, :cond_1

    .line 114
    check-cast v9, Lcn/nubia/gallery3d/data/LocalMediaItem;

    iget-object v0, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v1, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v6

    aget-byte v0, v0, v1

    invoke-virtual {v9, v0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setSourceType(I)V

    .line 117
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 120
    iget v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v1, v2, :cond_2

    .line 121
    iget-object v1, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v1, v2, v3, v0}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    .line 124
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 125
    iget-object v1, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v1, v2, v3, v0}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->recodeBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v1, v2, v3, v0}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 132
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode cached failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :cond_4
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    return-object v0

    :cond_5
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 140
    iget v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v1}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_6

    return-object v3

    :cond_6
    if-nez v1, :cond_7

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decode orig failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 148
    :cond_7
    iget v4, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v8, 0x5

    if-ne v4, v8, :cond_8

    goto :goto_2

    :cond_8
    if-eq v4, v2, :cond_c

    const/4 v2, 0x6

    if-eq v4, v2, :cond_c

    const/16 v2, 0x9

    if-ne v4, v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x3

    if-ne v4, v2, :cond_a

    .line 155
    sget v2, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpecialHeight:I

    .line 156
    sget v4, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpecialWidth:I

    .line 157
    invoke-static {v1, v4, v2, v6}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_a
    if-ne v4, v5, :cond_b

    .line 159
    move-object v2, v9

    check-cast v2, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/LocalImage;->getRotation()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    iget v2, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    int-to-float v4, v2

    iget v8, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mPanoScale:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-static {v1, v2, v4, v6}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 163
    :cond_b
    iget v2, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v2, v6}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 153
    :cond_c
    :goto_1
    iget v2, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v2, v6}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    :goto_2
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v3

    .line 167
    :cond_d
    iget v2, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v2, v5, :cond_e

    .line 168
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->recodeBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_e
    move-object v8, v1

    if-eqz v9, :cond_f

    .line 172
    instance-of v1, v9, Lcn/nubia/gallery3d/data/ResourceCoverItem;

    if-eqz v1, :cond_f

    const/16 v1, 0x64

    .line 173
    invoke-static {v8, v1}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    goto :goto_3

    .line 175
    :cond_f
    invoke-static {v8}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    :goto_3
    move-object v10, v1

    if-eqz v9, :cond_11

    .line 178
    instance-of v1, v9, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_11

    .line 179
    array-length v1, v10

    add-int/2addr v1, v6

    new-array v11, v1, [B

    .line 180
    array-length v2, v10

    const/4 v4, 0x0

    invoke-static {v10, v4, v11, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v1, v6

    .line 181
    check-cast v9, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSourceType()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 182
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_10

    return-object v3

    .line 183
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mDate:J

    move-object v1, v0

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->putImageData(Ljava/lang/String;IJ[B)V

    goto :goto_4

    .line 185
    :cond_11
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_12

    return-object v3

    .line 186
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mDate:J

    move-object v1, v0

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->putImageData(Ljava/lang/String;IJ[B)V

    :goto_4
    return-object v8

    :catchall_0
    move-exception p1

    .line 138
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 139
    throw p1
.end method

.method private requestImageWithoutCache(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2

    .line 92
    iget v0, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decode orig failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageCacheRequest"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public isNeedColorSpace()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->isNeedColorSpace:Z

    return v0
.end method

.method public abstract onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2

    .line 84
    iget v0, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->mType:I

    const/16 v1, 0x8

    if-ne v1, v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->requestImageWithoutCache(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->requestImageFromCache(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/ImageCacheRequest;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public setNeedColorSpace(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/ImageCacheRequest;->isNeedColorSpace:Z

    return-void
.end method
