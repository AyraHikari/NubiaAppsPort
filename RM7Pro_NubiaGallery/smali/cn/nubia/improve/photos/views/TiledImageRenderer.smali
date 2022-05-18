.class public Lcn/nubia/improve/photos/views/TiledImageRenderer;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;,
        Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;,
        Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;,
        Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;
    }
.end annotation


# static fields
.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TiledImageRenderer"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mLayoutTiles:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParent:Landroid/view/View;

.field private mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mTileDecoder:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mTileSize:I

.field private final mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

.field private mUploadQuota:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->sTilePool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevel:I

    .line 91
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 94
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    .line 98
    new-instance v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcn/nubia/improve/photos/views/TiledImageRenderer$1;)V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    .line 99
    new-instance v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v1, v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcn/nubia/improve/photos/views/TiledImageRenderer$1;)V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    .line 100
    new-instance v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v1, v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcn/nubia/improve/photos/views/TiledImageRenderer$1;)V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 104
    iput v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v0, v1, v3

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 172
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    .line 173
    new-instance p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;

    invoke-direct {p1, p0, v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcn/nubia/improve/photos/views/TiledImageRenderer;Lcn/nubia/improve/photos/views/TiledImageRenderer$1;)V

    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileDecoder:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;

    .line 174
    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->start()V

    return-void
.end method

.method static synthetic access$200()Landroid/support/v4/util/Pools$Pool;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->sTilePool:Landroid/support/v4/util/Pools$Pool;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/photos/views/TiledImageRenderer;III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->getTile(III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevel:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/improve/photos/views/TiledImageRenderer;Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->decodeTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V

    return-void
.end method

.method private activateTile(III)V
    .locals 3

    .line 545
    invoke-static {p1, p2, p3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v0

    .line 546
    iget-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    if-eqz v2, :cond_1

    .line 548
    iget p1, v2, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 549
    iput p1, v2, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    :cond_0
    return-void

    .line 553
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->obtainTile(III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object p1

    .line 554
    iget-object p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p2, v0, v1, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method private calculateLevelCount()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    int-to-float v2, v2

    .line 203
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 202
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    goto :goto_1

    .line 206
    :cond_0
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 207
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_1
    iput v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    :goto_1
    return-void
.end method

.method private decodeTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V
    .locals 4

    .line 491
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 493
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 495
    iput v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 496
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->decode()Z

    move-result v0

    .line 498
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_1
    iget v2, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/16 v0, 0x40

    .line 500
    iput v0, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 501
    iget-object v0, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 502
    sget-object v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->sTilePool:Landroid/support/v4/util/Pools$Pool;

    iget-object v2, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 503
    iput-object v0, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 505
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->push(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z

    .line 506
    monitor-exit v1

    return-void

    :cond_2
    if-eqz v0, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    const/16 v2, 0x10

    .line 508
    :goto_0
    iput v2, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    if-nez v0, :cond_4

    .line 510
    monitor-exit v1

    return-void

    .line 512
    :cond_4
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->push(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z

    .line 513
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->invalidate()V

    return-void

    :catchall_0
    move-exception p1

    .line 513
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 496
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private drawTile(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 597
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    add-float v2, p5, p7

    add-float/2addr p7, p6

    .line 598
    invoke-virtual {v1, p5, p6, v2, p7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 599
    iget p5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float p6, p5

    int-to-float p5, p5

    const/4 p7, 0x0

    invoke-virtual {v0, p7, p7, p6, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 601
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->getTile(III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 603
    invoke-virtual {p5}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result p6

    if-nez p6, :cond_2

    .line 604
    iget p6, p5, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 p7, 0x8

    const/4 v2, 0x0

    if-ne p6, p7, :cond_1

    .line 605
    iget p6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQuota:I

    if-lez p6, :cond_0

    add-int/lit8 p6, p6, -0x1

    .line 606
    iput p6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 607
    invoke-virtual {p5, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->updateContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 609
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRenderComplete:Z

    goto :goto_0

    .line 611
    :cond_1
    iget p6, p5, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 p7, 0x10

    if-eq p6, p7, :cond_2

    .line 612
    iput-boolean v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 613
    invoke-direct {p0, p5}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->queueForDecode(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V

    .line 616
    :cond_2
    :goto_0
    invoke-direct {p0, p5, p1, v0, v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->drawTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p5

    if-eqz p5, :cond_3

    return-void

    .line 620
    :cond_3
    iget-object p5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    if-eqz p5, :cond_4

    .line 621
    iget p6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int p4, p6, p4

    .line 622
    invoke-virtual {p5}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget p6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 623
    iget-object p6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {p6}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result p6

    int-to-float p6, p6

    iget p7, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    int-to-float p7, p7

    div-float/2addr p6, p7

    int-to-float p7, p2

    mul-float/2addr p7, p5

    int-to-float v2, p3

    mul-float/2addr v2, p6

    add-int/2addr p2, p4

    int-to-float p2, p2

    mul-float/2addr p2, p5

    add-int/2addr p3, p4

    int-to-float p3, p3

    mul-float/2addr p3, p6

    .line 624
    invoke-virtual {v0, p7, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 626
    iget-object p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    invoke-interface {p1, p2, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_4
    return-void
.end method

.method private drawTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    .line 633
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-interface {p2, p1, p3, p4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    return p1

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->getParentTile()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 643
    :cond_1
    iget v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v2, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    .line 644
    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 645
    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 647
    :cond_2
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 648
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    .line 650
    :goto_1
    iget p1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    iget v1, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    if-ne p1, v1, :cond_3

    .line 651
    iget p1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v3

    iput p1, p3, Landroid/graphics/RectF;->top:F

    .line 652
    iget p1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v3

    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 654
    :cond_3
    iget p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float p1, p1

    iget v1, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    div-float/2addr p1, v3

    iput p1, p3, Landroid/graphics/RectF;->top:F

    .line 655
    iget p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float p1, p1

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v1

    div-float/2addr p1, v3

    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    :goto_2
    move-object p1, v0

    goto :goto_0
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p6

    neg-int v1, v1

    int-to-double v1, v1

    .line 360
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 361
    iget v3, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-double v3, v3

    .line 362
    iget v5, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-double v5, v5

    .line 364
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 365
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v9, v7, v3

    mul-double v11, v1, v5

    sub-double v13, v9, v11

    .line 367
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 366
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    mul-double/2addr v1, v3

    mul-double/2addr v7, v5

    add-double v3, v1, v7

    .line 369
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 368
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move/from16 v2, p2

    int-to-float v2, v2

    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p5

    div-float v5, v3, v4

    sub-float/2addr v2, v5

    float-to-double v5, v2

    .line 371
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    move/from16 v5, p3

    int-to-float v5, v5

    int-to-float v1, v1

    div-float v4, v1, v4

    sub-float/2addr v5, v4

    float-to-double v4, v5

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v2

    div-float v3, v3, p5

    add-float/2addr v5, v3

    float-to-double v5, v5

    .line 373
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    int-to-float v5, v4

    div-float v1, v1, p5

    add-float/2addr v5, v1

    float-to-double v5, v5

    .line 374
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 377
    iget v5, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v5, v5, p4

    .line 378
    div-int/2addr v2, v5

    mul-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 379
    div-int/2addr v4, v5

    mul-int/2addr v5, v4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 380
    iget v5, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 381
    iget v5, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v5, p1

    .line 383
    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 9

    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v7, v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    .line 348
    invoke-direct/range {v2 .. v8}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    return-void
.end method

.method private getTile(III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
    .locals 1

    .line 558
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    return-object p1
.end method

.method private invalidate()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private invalidateTiles()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 335
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 338
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 340
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    .line 341
    invoke-direct {p0, v3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->recycleTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 344
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isHighResolution(Landroid/content/Context;)Z
    .locals 2

    .line 164
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 166
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 167
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x800

    if-gt p0, v1, :cond_1

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private layoutTiles()V
    .locals 12

    .line 257
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 268
    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->floorLog2(F)I

    move-result v1

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v1, v0, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v7

    iput v7, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevel:I

    .line 273
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eq v7, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 275
    iget v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterX:I

    iget v6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterY:I

    iget v8, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    iget v9, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRotation:I

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 276
    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 277
    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetY:I

    .line 278
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevel:I

    shl-int v3, v10, v2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v7, -0x2

    .line 282
    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 283
    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterY:I

    int-to-float v2, v2

    iget v4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v4

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetY:I

    move v2, v1

    .line 286
    :cond_2
    :goto_0
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    add-int/lit8 v1, v1, -0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    .line 287
    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 289
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    move v11, v1

    :goto_1
    if-ge v11, v2, :cond_3

    sub-int v4, v11, v1

    .line 291
    aget-object v5, v3, v4

    iget v6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterX:I

    iget v7, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterY:I

    iget v9, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRotation:I

    move-object v4, p0

    move v8, v11

    invoke-direct/range {v4 .. v9}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 295
    :cond_3
    iget v4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRotation:I

    rem-int/lit8 v4, v4, 0x5a

    if-eqz v4, :cond_4

    return-void

    .line 299
    :cond_4
    iget-object v4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 300
    :try_start_0
    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v5}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 301
    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v5}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 302
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 306
    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    :goto_2
    if-ge v0, v5, :cond_7

    .line 308
    iget-object v6, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    .line 309
    iget v7, v6, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    if-lt v7, v1, :cond_5

    if-ge v7, v2, :cond_5

    sub-int/2addr v7, v1

    .line 310
    aget-object v7, v3, v7

    iget v8, v6, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v9, v6, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 311
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_6

    .line 312
    :cond_5
    iget-object v7, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, -0x1

    .line 315
    invoke-direct {p0, v6}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->recycleTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V

    :cond_6
    add-int/2addr v0, v10

    goto :goto_2

    .line 318
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_a

    .line 321
    iget v4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int/2addr v4, v0

    sub-int v5, v0, v1

    .line 322
    aget-object v5, v3, v5

    .line 323
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    :goto_4
    if-ge v6, v7, :cond_9

    .line 324
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    :goto_5
    if-ge v8, v9, :cond_8

    .line 325
    invoke-direct {p0, v8, v6, v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->activateTile(III)V

    add-int/2addr v8, v4

    goto :goto_5

    :cond_8
    add-int/2addr v6, v4

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 329
    :cond_a
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->invalidate()V

    return-void

    :catchall_0
    move-exception v0

    .line 318
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    :goto_6
    return-void
.end method

.method private static makeTileKey(III)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x10

    shl-long/2addr v0, p0

    int-to-long v2, p1

    or-long/2addr v0, v2

    shl-long p0, v0, p0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private obtainTile(III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
    .locals 3

    .line 518
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->pop()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 521
    iput v2, v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 522
    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->update(III)V

    .line 523
    monitor-exit v0

    return-object v1

    .line 525
    :cond_0
    new-instance v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;-><init>(Lcn/nubia/improve/photos/views/TiledImageRenderer;III)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private queueForDecode(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 482
    iput v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 483
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->push(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 487
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private recycleTile(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V
    .locals 3

    .line 530
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    iget v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    .line 532
    iput v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 533
    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0x40

    .line 535
    iput v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 536
    iget-object v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 537
    sget-object v1, Lcn/nubia/improve/photos/views/TiledImageRenderer;->sTilePool:Landroid/support/v4/util/Pools$Pool;

    iget-object v2, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 538
    iput-object v1, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 540
    :cond_1
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->push(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z

    .line 541
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static suggestedTileSize(Landroid/content/Context;)I
    .locals 0

    .line 160
    invoke-static {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->isHighResolution(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x200

    goto :goto_0

    :cond_0
    const/16 p0, 0x100

    :goto_0
    return p0
.end method

.method private uploadBackgroundTiles(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 470
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 472
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    .line 473
    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    invoke-direct {p0, v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->queueForDecode(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private uploadTiles(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 572
    iget-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->pop()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    .line 574
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    iget v2, v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 580
    invoke-virtual {v1, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->updateContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string v2, "TiledImageRenderer"

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tile in upload queue has invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 574
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 588
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 412
    invoke-direct/range {p0 .. p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->layoutTiles()V

    .line 413
    invoke-direct/range {p0 .. p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->uploadTiles(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x1

    .line 415
    iput v0, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 416
    iput-boolean v0, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 418
    iget v11, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevel:I

    .line 419
    iget v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRotation:I

    const/4 v2, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    move v13, v2

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    if-eqz v13, :cond_1

    .line 426
    invoke-interface {v10, v13}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    if-eqz v1, :cond_1

    .line 428
    iget v3, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    div-int/2addr v3, v2

    iget v4, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    div-int/2addr v4, v2

    int-to-float v2, v3

    int-to-float v5, v4

    .line 429
    invoke-interface {v10, v2, v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 430
    invoke-interface {v10, v1, v5, v5, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v4

    int-to-float v2, v2

    .line 431
    invoke-interface {v10, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 435
    :cond_1
    :try_start_0
    iget v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v11, v1, :cond_3

    .line 436
    iget v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v14, v1, v11

    int-to-float v1, v14

    .line 437
    iget v2, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float v15, v1, v2

    .line 438
    iget-object v8, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 440
    iget v1, v8, Landroid/graphics/Rect;->top:I

    move v7, v1

    move v6, v12

    :goto_1
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v1, :cond_4

    .line 441
    iget v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetY:I

    int-to-float v1, v1

    int-to-float v2, v6

    mul-float/2addr v2, v15

    add-float v16, v1, v2

    .line 442
    iget v1, v8, Landroid/graphics/Rect;->left:I

    move v5, v1

    move v4, v12

    :goto_2
    iget v1, v8, Landroid/graphics/Rect;->right:I

    if-ge v5, v1, :cond_2

    .line 443
    iget v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetX:I

    int-to-float v1, v1

    int-to-float v2, v4

    mul-float/2addr v2, v15

    add-float v17, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    move/from16 v18, v4

    move v4, v7

    move/from16 v19, v5

    move v5, v11

    move/from16 v20, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v21, v8

    move v8, v15

    .line 444
    invoke-direct/range {v1 .. v8}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->drawTile(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    add-int v5, v19, v14

    add-int/lit8 v4, v18, 0x1

    move/from16 v7, v17

    move/from16 v6, v20

    move-object/from16 v8, v21

    goto :goto_2

    :cond_2
    move/from16 v20, v6

    move/from16 v17, v7

    move-object/from16 v21, v8

    add-int v7, v17, v14

    add-int/lit8 v6, v20, 0x1

    goto :goto_1

    .line 447
    :cond_3
    iget-object v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    if-eqz v1, :cond_4

    .line 448
    iget v3, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetX:I

    iget v4, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mOffsetY:I

    iget v2, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    int-to-float v2, v2

    iget v5, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v5

    .line 449
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v2, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    int-to-float v2, v2

    iget v6, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v6

    .line 450
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v2, p1

    .line 448
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v13, :cond_5

    .line 454
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 458
    :cond_5
    iget-boolean v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRenderComplete:Z

    if-eqz v1, :cond_6

    .line 459
    iget-boolean v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    if-nez v1, :cond_7

    .line 460
    invoke-direct/range {p0 .. p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->uploadBackgroundTiles(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_3

    .line 463
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->invalidate()V

    .line 465
    :cond_7
    :goto_3
    iget-boolean v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRenderComplete:Z

    if-nez v1, :cond_9

    iget-object v1, v9, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v12

    :cond_9
    :goto_4
    return v0

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_a

    .line 454
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 456
    :cond_a
    throw v0
.end method

.method public freeTextures()V
    .locals 4

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 389
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileDecoder:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->finishAndWait()V

    .line 390
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mUploadQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 392
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mDecodeQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 393
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->pop()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->recycle()V

    .line 396
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRecycledQueue:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->pop()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    goto :goto_0

    .line 398
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 402
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    .line 403
    invoke-virtual {v3}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 406
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 408
    :goto_2
    sget-object v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->sTilePool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 398
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getViewHeight()I
    .locals 1

    .line 182
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 178
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    return v0
.end method

.method public notifyModelInvalidated()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->invalidateTiles()V

    .line 218
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 220
    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 221
    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 225
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 226
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getPreview()Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mPreview:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    .line 227
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mTileSize:I

    .line 228
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->calculateLevelCount()V

    :goto_0
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    return-void
.end method

.method public setModel(Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-eq v0, p1, :cond_0

    .line 191
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mModel:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    .line 192
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->notifyModelInvalidated()V

    .line 194
    :cond_0
    iget p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRotation:I

    if-eq p1, p2, :cond_1

    .line 195
    iput p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mRotation:I

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    :cond_1
    return-void
.end method

.method public setPosition(IIF)V
    .locals 1

    .line 239
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    iput p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterX:I

    .line 244
    iput p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mCenterY:I

    .line 245
    iput p3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mScale:F

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    return-void
.end method

.method public setViewSize(II)V
    .locals 0

    .line 234
    iput p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewWidth:I

    .line 235
    iput p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mViewHeight:I

    return-void
.end method
