.class public Lcn/nubia/gallery3d/ui/TileImageView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;,
        Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;,
        Lcn/nubia/gallery3d/ui/TileImageView$Tile;,
        Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;,
        Lcn/nubia/gallery3d/ui/TileImageView$TileSource;
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

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTileSize:I


# instance fields
.field private contentValide:Z

.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcn/nubia/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

.field private mTileDecoder:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

.field private mUploadQuota:I

.field private renderTilesSynchronously:Z


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryContext;)V
    .locals 5

    .line 159
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mLevel:I

    .line 98
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 101
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    .line 104
    new-instance v1, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcn/nubia/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    .line 105
    new-instance v1, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcn/nubia/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    .line 106
    new-instance v1, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcn/nubia/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 110
    iput v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 121
    new-instance v1, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcn/nubia/gallery3d/ui/TileImageView;Lcn/nubia/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileUploader:Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;

    .line 127
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->contentValide:Z

    .line 160
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryContext;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    .line 161
    new-instance v1, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcn/nubia/gallery3d/ui/TileImageView;Lcn/nubia/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileDecoder:Lcn/nubia/gallery3d/util/Future;

    .line 162
    sget v0, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    if-nez v0, :cond_1

    .line 163
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/TileImageView;->isHighResolution(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x400

    .line 164
    sput p1, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x200

    .line 166
    sput p1, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/TileImageView;)Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 42
    sget v0, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/TileImageView;)Lcn/nubia/gallery3d/ui/TileImageView$TileSource;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/TileImageView;III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView;->getTile(III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/TileImageView;)I
    .locals 0

    .line 42
    iget p0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mLevel:I

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/TileImageView;)Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    return-object p0
.end method

.method private activateTile(III)V
    .locals 3

    .line 567
    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    .line 568
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    if-eqz v2, :cond_1

    .line 570
    iget p1, v2, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 571
    iput p1, v2, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    :cond_0
    return-void

    .line 575
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView;->obtainTile(III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object p1

    .line 576
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method static drawTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    .line 660
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {p1, p0, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 p0, 0x1

    return p0

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->getParentTile()Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 668
    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    .line 669
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 670
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 672
    :cond_2
    sget v1, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 673
    sget v1, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 675
    :goto_1
    iget p0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    iget v1, v0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    if-ne p0, v1, :cond_3

    .line 676
    iget p0, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 677
    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 679
    :cond_3
    sget p0, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float p0, p0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v1

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 680
    sget p0, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float p0, p0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v1

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :goto_2
    move-object p0, v0

    goto :goto_0
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p6

    neg-int v1, v1

    int-to-double v1, v1

    .line 314
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 315
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    .line 316
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getHeight()I

    move-result v5

    int-to-double v5, v5

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 319
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v9, v7, v3

    mul-double v11, v1, v5

    sub-double v13, v9, v11

    .line 321
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 320
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    mul-double/2addr v1, v3

    mul-double/2addr v7, v5

    add-double v3, v1, v7

    .line 323
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 322
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

    .line 325
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    move/from16 v5, p3

    int-to-float v5, v5

    int-to-float v1, v1

    div-float v4, v1, v4

    sub-float/2addr v5, v4

    float-to-double v4, v5

    .line 326
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v2

    div-float v3, v3, p5

    add-float/2addr v5, v3

    float-to-double v5, v5

    .line 327
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    int-to-float v5, v4

    div-float v1, v1, p5

    add-float/2addr v5, v1

    float-to-double v5, v5

    .line 328
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 331
    sget v5, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v5, v5, p4

    .line 332
    div-int/2addr v2, v5

    mul-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 333
    div-int/2addr v4, v5

    mul-int/2addr v5, v4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 334
    iget v5, v0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 335
    iget v5, v0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v5, p1

    .line 337
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

    .line 302
    invoke-direct/range {v2 .. v8}, Lcn/nubia/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    return-void
.end method

.method private getTile(III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;
    .locals 1

    .line 580
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    return-object p1
.end method

.method public static isHighResolution(Landroid/content/Context;)Z
    .locals 2

    .line 152
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 154
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 155
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x400

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

.method private isScreenNailAnimating()Z
    .locals 2

    .line 487
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    instance-of v1, v0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    .line 488
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScreenNailReady()Z
    .locals 2

    .line 493
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    instance-of v1, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    .line 494
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->isTextureReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutTiles(IIFI)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v9, p2

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getWidth()I

    move-result v10

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getHeight()I

    move-result v11

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v1, v1, p3

    .line 227
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->floorLog2(F)I

    move-result v1

    iget v2, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    const/4 v12, 0x0

    invoke-static {v1, v12, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v5

    iput v5, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mLevel:I

    .line 232
    iget v1, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-eq v5, v1, :cond_0

    .line 233
    iget-object v15, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 234
    invoke-direct/range {v1 .. v7}, Lcn/nubia/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    int-to-float v1, v10

    div-float/2addr v1, v13

    .line 235
    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v1, v11

    div-float/2addr v1, v13

    .line 236
    iget v2, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 237
    iget v1, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mLevel:I

    shl-int v2, v14, v1

    int-to-float v2, v2

    mul-float v2, v2, p3

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v5, -0x2

    int-to-float v2, v10

    div-float/2addr v2, v13

    int-to-float v3, v0

    mul-float v3, v3, p3

    sub-float/2addr v2, v3

    .line 241
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v2, v11

    div-float/2addr v2, v13

    int-to-float v3, v9

    mul-float v3, v3, p3

    sub-float/2addr v2, v3

    .line 242
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 245
    :cond_1
    :goto_0
    iget v2, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v1, v7, 0x2

    .line 246
    iget v2, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 248
    iget-object v11, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    move v13, v7

    :goto_1
    if-ge v13, v10, :cond_2

    sub-int v1, v13, v7

    .line 250
    aget-object v2, v11, v1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v13

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 254
    :cond_2
    rem-int/lit8 v0, p4, 0x5a

    if-eqz v0, :cond_3

    return-void

    .line 256
    :cond_3
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 258
    iget-object v0, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 259
    iput-boolean v12, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 263
    iget-object v0, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    :goto_2
    if-ge v12, v0, :cond_6

    .line 265
    iget-object v1, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    .line 266
    iget v2, v1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    if-lt v2, v7, :cond_4

    if-ge v2, v10, :cond_4

    sub-int/2addr v2, v7

    .line 267
    aget-object v2, v11, v2

    iget v3, v1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v4, v1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 268
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 269
    :cond_4
    iget-object v2, v8, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v12}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 272
    invoke-virtual {v8, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->recycleTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V

    :cond_5
    add-int/2addr v12, v14

    goto :goto_2

    .line 275
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    :goto_3
    if-ge v0, v10, :cond_9

    .line 278
    sget v1, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int/2addr v1, v0

    sub-int v2, v0, v7

    .line 279
    aget-object v2, v11, v2

    .line 280
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    if-ge v3, v4, :cond_8

    .line 281
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    :goto_5
    if-ge v5, v6, :cond_7

    .line 282
    invoke-direct {v8, v5, v3, v0}, Lcn/nubia/gallery3d/ui/TileImageView;->activateTile(III)V

    add-int/2addr v5, v1

    goto :goto_5

    :cond_7
    add-int/2addr v3, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 286
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->invalidate()V

    return-void

    :catchall_0
    move-exception v0

    .line 275
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

.method private declared-synchronized obtainTile(III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;
    .locals 2

    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->pop()Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 546
    iput v1, v0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 547
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-object v0

    .line 550
    :cond_0
    :try_start_1
    new-instance v0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;-><init>(Lcn/nubia/gallery3d/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private uploadBackgroundTiles(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    const/4 p1, 0x1

    .line 498
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 499
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 501
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    .line 502
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->queueForDecode(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method decodeTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z
    .locals 4

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    iget v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 525
    iput v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 526
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 527
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 528
    monitor-enter p0

    .line 529
    :try_start_1
    iget v1, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    const/16 v0, 0x40

    .line 530
    iput v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 531
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 532
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 533
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 535
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->push(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z

    .line 536
    monitor-exit p0

    return v2

    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    .line 538
    :goto_0
    iput v1, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 539
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 540
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 526
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public drawTile(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 3

    .line 622
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 623
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    add-float v2, p5, p7

    add-float/2addr p7, p6

    .line 624
    invoke-virtual {v1, p5, p6, v2, p7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 625
    sget p5, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float p6, p5

    int-to-float p5, p5

    const/4 p7, 0x0

    invoke-virtual {v0, p7, p7, p6, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 627
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/gallery3d/ui/TileImageView;->getTile(III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 629
    invoke-virtual {p5}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result p6

    if-nez p6, :cond_2

    .line 630
    iget p6, p5, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 p7, 0x8

    const/4 v2, 0x0

    if-ne p6, p7, :cond_1

    .line 631
    iget p6, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQuota:I

    if-lez p6, :cond_0

    add-int/lit8 p6, p6, -0x1

    .line 632
    iput p6, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 633
    invoke-virtual {p5, p1}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->updateContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 635
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 637
    :cond_1
    iget p6, p5, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 p7, 0x10

    if-eq p6, p7, :cond_2

    .line 638
    iput-boolean v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 639
    invoke-virtual {p0, p5}, Lcn/nubia/gallery3d/ui/TileImageView;->queueForDecode(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V

    .line 642
    :cond_2
    :goto_0
    iget-boolean p6, p0, Lcn/nubia/gallery3d/ui/TileImageView;->contentValide:Z

    if-eqz p6, :cond_3

    .line 643
    invoke-static {p5, p1, v0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->drawTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p5

    if-eqz p5, :cond_3

    return-void

    .line 646
    :cond_3
    iget-object p5, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz p5, :cond_4

    .line 647
    sget p6, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int p4, p6, p4

    .line 648
    invoke-interface {p5}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget p6, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 649
    iget-object p6, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {p6}, Lcn/nubia/gallery3d/ui/ScreenNail;->getHeight()I

    move-result p6

    int-to-float p6, p6

    iget p7, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

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

    .line 650
    invoke-virtual {v0, p7, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 652
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {p2, p1, v0, v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_4
    return-void
.end method

.method public freeTextures()V
    .locals 5

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 379
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileDecoder:Lcn/nubia/gallery3d/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 381
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileDecoder:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    .line 382
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileDecoder:Lcn/nubia/gallery3d/util/Future;

    .line 385
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 387
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    .line 388
    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->recycle()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 391
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 395
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 396
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->pop()Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 399
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->pop()Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    goto :goto_1

    .line 401
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    return-void

    :catchall_0
    move-exception v0

    .line 401
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getImageCenter(Landroid/graphics/Point;)V
    .locals 6

    .line 343
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getWidth()I

    move-result v0

    .line 344
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getHeight()I

    move-result v1

    .line 350
    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 351
    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    sub-int/2addr v2, v3

    .line 352
    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    goto :goto_0

    .line 354
    :cond_0
    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    sub-int/2addr v2, v3

    .line 355
    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    :goto_0
    sub-int/2addr v3, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    int-to-float v2, v2

    .line 360
    iget v5, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v1

    div-float/2addr v0, v4

    int-to-float v1, v3

    .line 361
    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 3

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 291
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 293
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 295
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    .line 296
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/TileImageView;->recycleTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 182
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 185
    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 186
    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    goto :goto_1

    .line 188
    :cond_0
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/TileImageView;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    .line 189
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v1

    mul-int/2addr v0, v1

    const v1, 0x75300

    if-lt v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 191
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 194
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 196
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    .line 198
    :goto_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 199
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 205
    invoke-super/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/GLView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 206
    iget p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    iget p2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    iget p3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    iget p4, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileDecoder:Lcn/nubia/gallery3d/util/Future;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v2, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcn/nubia/gallery3d/ui/TileImageView;Lcn/nubia/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileDecoder:Lcn/nubia/gallery3d/util/Future;

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v0, :cond_2

    .line 410
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    iget v4, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcn/nubia/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 412
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    :cond_2
    return-void
.end method

.method declared-synchronized queueForDecode(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V
    .locals 2

    monitor-enter p0

    .line 516
    :try_start_0
    iget v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 517
    iput v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 518
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mDecodeQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->push(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method queueForUpload(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V
    .locals 2

    .line 507
    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->push(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z

    .line 509
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileUploader:Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mTileUploader:Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 509
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized recycleTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V
    .locals 2

    monitor-enter p0

    .line 554
    :try_start_0
    iget v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    .line 555
    iput v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x40

    .line 558
    :try_start_1
    iput v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 559
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 560
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 561
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 563
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRecycledQueue:Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->push(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x1

    .line 418
    iput v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 419
    iput-boolean v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 421
    iget v11, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mLevel:I

    .line 422
    iget v1, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    const/4 v2, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    move v13, v2

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    if-eqz v13, :cond_1

    .line 427
    invoke-interface {v10, v13}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v3

    int-to-float v5, v4

    .line 430
    invoke-interface {v10, v2, v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 431
    invoke-interface {v10, v1, v5, v5, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v4

    int-to-float v2, v2

    .line 432
    invoke-interface {v10, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 436
    :cond_1
    :try_start_0
    iget v1, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v11, v1, :cond_7

    .line 437
    iget-object v1, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_2

    .line 438
    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->noDraw()V

    .line 441
    :cond_2
    sget v1, Lcn/nubia/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v14, v1, v11

    int-to-float v1, v14

    .line 442
    iget v2, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    mul-float v15, v1, v2

    .line 443
    iget-object v8, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 445
    iput-boolean v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->contentValide:Z

    .line 446
    iget-boolean v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->renderTilesSynchronously:Z

    if-eqz v0, :cond_5

    .line 447
    iget v0, v8, Landroid/graphics/Rect;->top:I

    :goto_1
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_5

    .line 449
    iget v1, v8, Landroid/graphics/Rect;->left:I

    :goto_2
    iget v2, v8, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_4

    .line 451
    invoke-direct {v9, v1, v0, v11}, Lcn/nubia/gallery3d/ui/TileImageView;->getTile(III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 453
    iput-boolean v12, v9, Lcn/nubia/gallery3d/ui/TileImageView;->contentValide:Z

    goto :goto_3

    :cond_3
    add-int/2addr v1, v14

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v0, v14

    goto :goto_1

    .line 460
    :cond_5
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move v7, v12

    :goto_4
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_8

    .line 461
    iget v1, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetY:I

    int-to-float v1, v1

    int-to-float v2, v7

    mul-float/2addr v2, v15

    add-float v16, v1, v2

    .line 462
    iget v1, v8, Landroid/graphics/Rect;->left:I

    move v6, v1

    move v5, v12

    :goto_5
    iget v1, v8, Landroid/graphics/Rect;->right:I

    if-ge v6, v1, :cond_6

    .line 463
    iget v1, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v1, v1

    int-to-float v2, v5

    mul-float/2addr v2, v15

    add-float v17, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v6

    move v4, v0

    move/from16 v18, v5

    move v5, v11

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v20, v8

    move v8, v15

    .line 464
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/gallery3d/ui/TileImageView;->drawTile(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    add-int v6, v19, v14

    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v17

    move-object/from16 v8, v20

    goto :goto_5

    :cond_6
    move/from16 v17, v7

    move-object/from16 v20, v8

    add-int/2addr v0, v14

    add-int/lit8 v7, v17, 0x1

    goto :goto_4

    .line 467
    :cond_7
    iget-object v1, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_8

    .line 468
    iget v2, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetX:I

    add-int/2addr v2, v0

    and-int/lit8 v3, v2, -0x2

    iget v2, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mOffsetY:I

    add-int/2addr v2, v0

    and-int/lit8 v4, v2, -0x2

    iget v2, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v2, v2

    iget v5, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v5

    .line 469
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    and-int/lit8 v5, v2, -0x2

    iget v2, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v2, v2

    iget v6, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v6

    .line 470
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    and-int/lit8 v6, v2, -0x2

    move-object/from16 v2, p1

    .line 468
    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/ScreenNail;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 471
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-eqz v13, :cond_9

    .line 476
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 479
    :cond_9
    iget-boolean v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mRenderComplete:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->contentValide:Z

    if-eqz v0, :cond_a

    .line 480
    iget-boolean v0, v9, Lcn/nubia/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v0, :cond_b

    invoke-direct/range {p0 .. p1}, Lcn/nubia/gallery3d/ui/TileImageView;->uploadBackgroundTiles(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_6

    .line 482
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/TileImageView;->invalidate()V

    :cond_b
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_c

    .line 476
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 477
    :cond_c
    throw v0
.end method

.method public setModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mModel:Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1

    .line 365
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 367
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterX:I

    .line 368
    iput p2, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mCenterY:I

    .line 369
    iput p3, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScale:F

    .line 370
    iput p4, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mRotation:I

    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 372
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public setRenderTilesSynchronously(Z)V
    .locals 0

    .line 824
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->renderTilesSynchronously:Z

    return-void
.end method

.method public setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    return-void
.end method
