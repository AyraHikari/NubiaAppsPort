.class public Lcn/nubia/improve/photos/BitmapRegionTileSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;,
        Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;,
        Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;,
        Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;
    }
.end annotation


# static fields
.field private static final GL_SIZE_LIMIT:I = 0x800

.field public static final MAX_PREVIEW_SIZE:I = 0x400

.field private static final REUSE_BITMAP:Z

.field private static final TAG:Ljava/lang/String; = "BitmapRegionTileSource"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

.field mHeight:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOverlapRegion:Landroid/graphics/Rect;

.field private mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

.field private final mRotation:I

.field mTileSize:I

.field private mWantRegion:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->REUSE_BITMAP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;)V
    .locals 3

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    .line 371
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    .line 376
    invoke-static {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->suggestedTileSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mTileSize:I

    .line 377
    invoke-virtual {p2}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->getRotation()I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mRotation:I

    .line 378
    invoke-virtual {p2}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->getBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    if-eqz p1, :cond_1

    .line 380
    invoke-interface {p1}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWidth:I

    .line 381
    iget-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    invoke-interface {p1}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mHeight:I

    .line 382
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 383
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 384
    iget-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 385
    iget-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 386
    invoke-virtual {p2}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->getPreviewSize()I

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x400

    .line 388
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 392
    invoke-direct {p0, p2, p1}, Lcn/nubia/improve/photos/BitmapRegionTileSource;->decodePreview(Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    const/16 v1, 0x800

    if-gt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-gt p2, v1, :cond_0

    .line 394
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 396
    iget v2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWidth:I

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    iget v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d"

    .line 396
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BitmapRegionTileSource"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private decodePreview(Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 498
    invoke-virtual {p1}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    int-to-float p2, p2

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 508
    invoke-static {p1, p2, v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 510
    :cond_1
    invoke-static {p1}, Lcn/nubia/improve/photos/BitmapRegionTileSource;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    .line 514
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 3

    shl-int v0, p4, p1

    .line 466
    iget-object v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v2, p2, v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 468
    iget-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWidth:I

    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mHeight:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 470
    iget-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 p3, 0x1

    shl-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 471
    iget-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {p2, p3, v0}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p3, "BitmapRegionTileSource"

    const-string v0, "fail in decoding region"

    .line 474
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    .line 481
    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 482
    iget-object p4, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    if-nez p4, :cond_2

    .line 483
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4}, Landroid/graphics/Canvas;-><init>()V

    iput-object p4, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    .line 485
    :cond_2
    iget-object p4, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 486
    iget-object p4, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    shr-int/2addr v0, p1

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    shr-int p1, v1, p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p4, p2, v0, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 489
    iget-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p3
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .line 418
    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 413
    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWidth:I

    return v0
.end method

.method public getPreview()Lcn/nubia/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .line 423
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 428
    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mRotation:I

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 433
    invoke-virtual {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource;->getTileSize()I

    move-result v0

    .line 434
    sget-boolean v1, Lcn/nubia/improve/photos/BitmapRegionTileSource;->REUSE_BITMAP:Z

    if-nez v1, :cond_0

    .line 435
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/improve/photos/BitmapRegionTileSource;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    shl-int v1, v0, p1

    .line 439
    iget-object v2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v3, p2, v1

    add-int/2addr v1, p3

    invoke-virtual {v2, p2, p3, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_1

    .line 442
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 445
    :cond_1
    iget-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 p3, 0x1

    shl-int p1, p3, p1

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 446
    iget-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 449
    :try_start_0
    iget-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {p2, p3, v0}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p3, p2, :cond_2

    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 452
    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "BitmapRegionTileSource"

    const-string p3, "fail in decoding region"

    .line 457
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p2

    :catchall_0
    move-exception p2

    .line 451
    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p3, p4, :cond_4

    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_4

    .line 452
    iget-object p3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 454
    :cond_4
    throw p2
.end method

.method public getTileSize()I
    .locals 1

    .line 408
    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource;->mTileSize:I

    return v0
.end method
