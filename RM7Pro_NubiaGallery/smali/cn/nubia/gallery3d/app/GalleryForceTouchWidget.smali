.class public Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "GalleryForceTouchWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;
    }
.end annotation


# static fields
.field private static final BTN_MORE:Ljava/lang/String; = "BTN_MORE"

.field private static final NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final OPEN_APP:Ljava/lang/String; = "OPEN_APP"

.field private static final OPEN_CAMERA:Ljava/lang/String; = "OPEN_CAMERA"

.field private static final REVIEW_ACTION_FORCE_TOUCH:Ljava/lang/String; = "cn.nubia.gallery.action.force.REVIEW"

.field private static final TAG:Ljava/lang/String; = "GalleryForceTouchWidget"

.field private static mBaseUriImage:Landroid/net/Uri;

.field private static mBaseUriVideo:Landroid/net/Uri;


# instance fields
.field private final CORN_DEFAULT:I

.field private mApplication:Lcn/nubia/gallery3d/app/GalleryAppImpl;

.field private mEntrys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileUri:Landroid/net/Uri;

.field private mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mBaseUriImage:Landroid/net/Uri;

    .line 81
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mBaseUriVideo:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const-string v0, "external"

    .line 78
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mFileUri:Landroid/net/Uri;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    const/16 v0, 0x8

    .line 84
    iput v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->CORN_DEFAULT:I

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 70
    sget-object v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mBaseUriImage:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 70
    sget-object v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mBaseUriVideo:Landroid/net/Uri;

    return-object v0
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 405
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 406
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, p2, :cond_0

    if-le p1, p3, :cond_0

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 410
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 411
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 412
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private createBitmaps()V
    .locals 6

    .line 209
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    .line 210
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->isVideo()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    iget v3, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->id:I

    iget-wide v4, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->datetaken:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->createImageThumb(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    iget-object v3, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 214
    invoke-static {v2, v3, v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 217
    :cond_0
    iget-object v2, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    iget v3, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->id:I

    iget-wide v4, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->date:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->createVideoThumb(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/16 v4, 0x96

    .line 221
    invoke-static {v2, v4, v4, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    .line 220
    invoke-static {v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 224
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBitmaps bitmap is null, ptah is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryForceTouchWidget"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private createImageThumb(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;
    .locals 8

    .line 230
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mApplication:Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getImageCacheService()Lcn/nubia/gallery3d/data/ImageCacheService;

    move-result-object v0

    .line 232
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/BytesBufferPool;->get()Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    .line 235
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object v1, v0

    move-wide v4, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->getImageData(Ljava/lang/String;IJLcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 238
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 239
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 240
    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne p2, v3, :cond_0

    .line 241
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p2

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p3, p4}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    iput-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 243
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 245
    iget-object p2, v7, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget p3, v7, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget p4, v7, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 246
    invoke-static {p2, p3, p4, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 245
    invoke-static {p1}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    return-object p1

    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    const/4 v1, 0x2

    .line 254
    invoke-static {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    invoke-static {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 255
    invoke-static {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    invoke-static {v4, v1, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    return-object v2

    .line 259
    :cond_2
    invoke-static {v7}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object v1, v0

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->putImageData(Ljava/lang/String;IJ[B)V

    return-object v7

    :catchall_0
    move-exception p1

    .line 251
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 252
    throw p1
.end method

.method private createVideoThumb(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;
    .locals 11

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mApplication:Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getImageCacheService()Lcn/nubia/gallery3d/data/ImageCacheService;

    move-result-object v0

    .line 298
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/BytesBufferPool;->get()Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    .line 301
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    move-object v1, v0

    move-wide v4, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->getImageData(Ljava/lang/String;IJLcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 304
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 306
    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne p2, v3, :cond_0

    .line 307
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p2

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p3, p4}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    iput-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 309
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 311
    iget-object p2, v7, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget p3, v7, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget p4, v7, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 312
    invoke-static {p2, p3, p4, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 311
    invoke-static {p1}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    return-object p1

    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 322
    :try_start_1
    new-instance v1, Lcn/nubia/video/editor/VideoItem;

    invoke-direct {v1}, Lcn/nubia/video/editor/VideoItem;-><init>()V

    .line 323
    invoke-virtual {v1, p1, v3}, Lcn/nubia/video/editor/VideoItem;->setDataSource(Ljava/lang/String;Z)I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v4, 0x6

    .line 325
    invoke-static {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    .line 326
    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->getWidth()I

    move-result v5

    .line 327
    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->getHeight()I

    move-result v6

    const-wide/16 v7, 0x0

    .line 332
    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->getDuration()I

    move-result v9

    const/16 v10, 0x3e8

    if-le v9, v10, :cond_2

    const-wide/16 v7, 0x3e8

    :cond_2
    int-to-float v9, v4

    int-to-float v5, v5

    div-float v10, v9, v5

    int-to-float v6, v6

    div-float/2addr v9, v6

    .line 335
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v5, v9

    float-to-int v5, v5

    mul-float/2addr v6, v9

    float-to-int v6, v6

    .line 339
    invoke-virtual {v1, v5, v6, v7, v8}, Lcn/nubia/video/editor/VideoItem;->getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :try_start_2
    invoke-static {v5, v4, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    :cond_3
    move-object v5, v2

    .line 343
    :goto_0
    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v2

    .line 345
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v7, v5

    if-nez v7, :cond_4

    return-object v2

    .line 350
    :cond_4
    invoke-static {v7}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    move-object v1, v0

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/data/ImageCacheService;->putImageData(Ljava/lang/String;IJ[B)V

    return-object v7

    :catchall_0
    move-exception p1

    .line 318
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcn/nubia/gallery3d/data/BytesBufferPool;->recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 319
    throw p1
.end method

.method private decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 420
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 430
    array-length v0, v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 434
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 435
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 437
    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 438
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 439
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    const-class v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.category.ALTERNATIVE"

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 400
    invoke-static {p1, p2, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getPendingIntent(Landroid/content/Context;Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;)Landroid/app/PendingIntent;
    .locals 1

    .line 204
    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->toUri()Landroid/net/Uri;

    move-result-object p2

    const-string v0, "NORMAL"

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private gotoGallery2(Landroid/content/Context;)V
    .locals 2

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/gallery3d/app/Gallery;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private gotoGallery2(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.gallery.action.force.REVIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x14000000

    .line 446
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "cameraview"

    const/4 v1, 0x1

    .line 447
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    const-string p2, "cn.nubia.gallery3d"

    .line 449
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 453
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 456
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->loadData(Landroid/content/Context;)V

    .line 199
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->createBitmaps()V

    return-void
.end method

.method private loadData(Landroid/content/Context;)V
    .locals 7

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mApplication:Lcn/nubia/gallery3d/app/GalleryAppImpl;

    .line 358
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 359
    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->setup(Landroid/content/Context;)V

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 361
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x6

    .line 362
    invoke-static {p1}, Lcn/nubia/gallery3d/data/CameraAlbum;->getCameraSelection(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC, _id DESC"

    .line 360
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 365
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    invoke-direct {v0}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;-><init>()V

    const-string v1, "_data"

    .line 367
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    iput-object v1, v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    const/4 v1, 0x0

    .line 369
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 370
    iput v1, v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->id:I

    const/4 v1, 0x7

    .line 371
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 372
    iput v1, v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->mediaType:I

    const/4 v1, 0x3

    .line 373
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 374
    iput-wide v1, v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->date:J

    const/16 v1, 0x8

    .line 375
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 376
    iput-wide v1, v0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->datetaken:J

    .line 377
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 381
    throw v0
.end method

.method private setClickIntent(Landroid/content/Context;)V
    .locals 8

    .line 142
    invoke-static {p1}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f090118

    const v2, 0x7f09018f

    const-string v3, "OPEN_APP"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c004b

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 146
    invoke-direct {p0, p1, v4, v3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 145
    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 148
    invoke-direct {p0, p1, v4, v3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 147
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->initData(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c004a

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string v5, "OPEN_CAMERA"

    .line 155
    invoke-direct {p0, p1, v4, v5}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 154
    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 157
    invoke-direct {p0, p1, v4, v3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 156
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 159
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0c0049

    invoke-direct {v0, v1, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 162
    invoke-direct {p0, p1, v4, v3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f090063

    const v6, 0x7f090135

    const v7, 0x7f090060

    .line 165
    invoke-direct {p0, v5, v0, v6, v7}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->setPlayerVisable(IIII)V

    .line 168
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    invoke-direct {p0, p1, v5}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 168
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3
    const v0, 0x7f090062

    const v5, 0x7f090134

    const v6, 0x7f09005f

    .line 172
    invoke-direct {p0, v3, v0, v5, v6}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->setPlayerVisable(IIII)V

    .line 175
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    invoke-direct {p0, p1, v3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 175
    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_4
    const v0, 0x7f090061

    const v3, 0x7f090133

    const v5, 0x7f09005e

    .line 179
    invoke-direct {p0, v2, v0, v3, v5}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->setPlayerVisable(IIII)V

    .line 182
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    invoke-direct {p0, p1, v3}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 182
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    const v1, 0x7f0901b7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string v2, "BTN_MORE"

    .line 190
    invoke-direct {p0, p1, v4, v2}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->getPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setPlayerVisable(IIII)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 389
    iget-object p3, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->isVideo()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 390
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 391
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p4, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mEntrys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;

    .line 98
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->release()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.category.ALTERNATIVE"

    .line 117
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPEN_CAMERA"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v2, "BTN_MORE"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->gotoGallery2(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v2, "NORMAL"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->gotoGallery2(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const-string v0, "OPEN_APP"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->gotoGallery2(Landroid/content/Context;)V

    .line 130
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    .line 135
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->setClickIntent(Landroid/content/Context;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
