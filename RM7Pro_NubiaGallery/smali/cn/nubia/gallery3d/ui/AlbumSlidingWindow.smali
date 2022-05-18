.class public Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;,
        Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;,
        Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x4

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

.field private final mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

.field private mListener:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

.field private final mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

.field private final mThreadPool:Lcn/nubia/gallery3d/util/JobLimiter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/app/AlbumDataLoader;ILcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 81
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 83
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 84
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 88
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 89
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 95
    invoke-virtual {p2, p0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setDataListener(Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;)V

    .line 96
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    .line 97
    new-array p3, p3, [Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 98
    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->size()I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 100
    new-instance p2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    .line 108
    new-instance p2, Lcn/nubia/gallery3d/util/JobLimiter;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p3

    const/4 v0, 0x4

    invoke-direct {p2, p3, v0}, Lcn/nubia/gallery3d/util/JobLimiter;-><init>(Lcn/nubia/gallery3d/util/ThreadPool;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcn/nubia/gallery3d/util/JobLimiter;

    .line 109
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    .line 110
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    .line 111
    new-instance p1, Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-direct {p1, p4}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/util/JobLimiter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcn/nubia/gallery3d/util/JobLimiter;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return p0
.end method

.method static synthetic access$606(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1

    .line 41
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/ItemLabelMaker;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    return-object p0
.end method

.method private cancelNonactiveImages()V
    .locals 3

    .line 276
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 279
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 2

    .line 284
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 290
    :cond_1
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 292
    :cond_2
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 293
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->cancelLoad()V

    :cond_3
    :goto_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 298
    array-length v1, v0

    rem-int/2addr p1, v1

    .line 299
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 304
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 305
    :cond_1
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 307
    :cond_2
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 308
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 309
    :cond_3
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v2, :cond_4

    .line 310
    iget-object v1, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    :cond_4
    const/4 v1, 0x0

    .line 311
    aput-object v1, v0, p1

    return-void
.end method

.method private prepareSlotContent(I)V
    .locals 6

    .line 315
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 316
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    .line 317
    iput-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    .line 318
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPano(Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    .line 319
    :cond_0
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    :goto_0
    iput v3, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcn/nubia/gallery3d/data/Path;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_2

    .line 321
    :cond_2
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    :goto_2
    iput v4, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 322
    new-instance v4, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v5, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-direct {v4, p0, p1, v5}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILcn/nubia/gallery3d/data/MediaItem;)V

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    if-eqz v1, :cond_5

    .line 324
    instance-of v4, v1, Lcn/nubia/gallery3d/data/MultiShootItem;

    if-eqz v4, :cond_3

    .line 325
    new-instance v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v5, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->getTotalCount(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p1, v3, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    goto :goto_3

    .line 326
    :cond_3
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcn/nubia/gallery3d/data/LocalVideo;

    if-eqz v3, :cond_4

    .line 327
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    check-cast v1, Lcn/nubia/gallery3d/data/LocalVideo;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/LocalVideo;->getDurationInSec()I

    move-result v1

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;

    invoke-direct {v3, p0, p1, v1, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V

    invoke-static {v0, v3}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    goto :goto_3

    .line 329
    :cond_4
    instance-of v3, v1, Lcn/nubia/gallery3d/data/RecycledItem;

    if-eqz v3, :cond_5

    .line 330
    new-instance v3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;

    check-cast v1, Lcn/nubia/gallery3d/data/RecycledItem;

    .line 331
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/RecycledItem;->getRemainingDays()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v3, p0, p1, v1, v4}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V

    .line 330
    invoke-static {v0, v3}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 334
    :cond_5
    :goto_3
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 335
    iput-boolean v2, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    .line 337
    :cond_6
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v1

    rem-int/2addr p1, v2

    aput-object v0, v1, p1

    return-void
.end method

.method private requestNonactiveImages()V
    .locals 3

    .line 241
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 244
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 3

    .line 250
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v0

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    if-eqz p1, :cond_2

    .line 253
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcn/nubia/gallery3d/glrenderer/Texture;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 257
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private requestSlotLabel(I)Z
    .locals 3

    .line 261
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v0

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    if-eqz p1, :cond_2

    .line 266
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 272
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private setContentWindow(II)V
    .locals 2

    .line 136
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v1, :cond_0

    return-void

    .line 139
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_1

    .line 140
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 141
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 142
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    return-void

    .line 146
    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_6

    if-lt v0, p2, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_3

    .line 156
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_3
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 159
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 162
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 163
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_5
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_3
    if-ge v0, p2, :cond_8

    .line 166
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v0, v1, :cond_7

    .line 148
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 150
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_5
    if-ge v0, p2, :cond_8

    .line 152
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 170
    :cond_8
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 171
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    return-void
.end method

.method private updateAllImageRequests()V
    .locals 3

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 342
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_2

    .line 343
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 345
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->requestSlotLabel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v0, :cond_3

    .line 349
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 351
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    :goto_1
    return-void
.end method

.method private updateTextureUploadQueue()V
    .locals 5

    .line 208
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 211
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 214
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_4

    .line 215
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    return-void

    .line 219
    :cond_1
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v3, :cond_2

    .line 220
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object v4, v2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 222
    :cond_2
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v3, :cond_3

    .line 223
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_4
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 230
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 231
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 2

    .line 193
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object v1, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 201
    :cond_1
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public get(I)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 2

    .line 119
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "invalid slot: %s outsides (%s, %s)"

    .line 120
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSlidingWindow"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 522
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v0

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    .line 525
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public isActiveSlot(I)Z
    .locals 1

    .line 132
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onContentChanged(I)V
    .locals 1

    .line 493
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 495
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 496
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 497
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    .line 480
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 481
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 482
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 484
    :cond_0
    iget p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p1, v0, :cond_1

    .line 485
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 486
    :cond_1
    iget p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-le p1, v0, :cond_2

    .line 487
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    :cond_2
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 6

    .line 534
    iget p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    if-ne p2, p1, :cond_0

    return-void

    .line 538
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    .line 539
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->setLabelWidth(I)V

    .line 541
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez p1, :cond_1

    return-void

    .line 545
    :cond_1
    iget p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge p1, p2, :cond_7

    .line 546
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 548
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 549
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    const/4 v1, 0x0

    .line 550
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 551
    iput-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 554
    :cond_2
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 555
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcn/nubia/gallery3d/data/MultiShootItem;

    if-eqz v1, :cond_3

    .line 556
    new-instance v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v5, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->getTotalCount(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p1, v3, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    goto :goto_1

    .line 557
    :cond_3
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcn/nubia/gallery3d/data/LocalVideo;

    if-eqz v1, :cond_4

    .line 558
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    check-cast v1, Lcn/nubia/gallery3d/data/LocalVideo;

    .line 559
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/LocalVideo;->getDurationInSec()I

    move-result v1

    .line 558
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    new-instance v3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;

    invoke-direct {v3, p0, p1, v1, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V

    invoke-static {v0, v3}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    goto :goto_1

    .line 561
    :cond_4
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcn/nubia/gallery3d/data/RecycledItem;

    if-eqz v1, :cond_5

    .line 562
    new-instance v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    check-cast v3, Lcn/nubia/gallery3d/data/RecycledItem;

    .line 563
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/RecycledItem;->getRemainingDays()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, p0, p1, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V

    .line 562
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 567
    :cond_5
    :goto_1
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 568
    iput-boolean v2, v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 573
    :cond_7
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 574
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 513
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 514
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mLabelUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 515
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 516
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 505
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 506
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    sub-int v2, p2, p1

    .line 175
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v2, :cond_1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget v4, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s, %s, %s, %s"

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 180
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 181
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr p1, p2

    .line 183
    div-int/2addr p1, v0

    array-length p2, v2

    div-int/2addr p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v0, v2

    sub-int/2addr p2, v0

    .line 184
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 183
    invoke-static {p1, v1, p2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 185
    array-length p2, v2

    add-int/2addr p2, p1

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 186
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 187
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 188
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz p1, :cond_2

    .line 189
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    :cond_2
    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-void
.end method
