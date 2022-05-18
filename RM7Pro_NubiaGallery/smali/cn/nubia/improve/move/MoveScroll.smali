.class public Lcn/nubia/improve/move/MoveScroll;
.super Ljava/lang/Object;
.source "MoveScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/move/MoveScroll$ReloadTask;,
        Lcn/nubia/improve/move/MoveScroll$MovePageListener;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static final MSG_TASK_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MoveScroll"


# instance fields
.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private final mListener:Lcn/nubia/improve/move/MoveScroll$MovePageListener;

.field private mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

.field private mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

.field private mReloadTask:Lcn/nubia/improve/move/MoveScroll$ReloadTask;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/improve/move/MoveScroll$MovePageListener;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/improve/move/MoveScroll;->mInitialSynced:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mReloadTask:Lcn/nubia/improve/move/MoveScroll$ReloadTask;

    .line 41
    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 42
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    .line 43
    invoke-virtual {p0}, Lcn/nubia/improve/move/MoveScroll;->getCount()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 44
    iput-object p3, p0, Lcn/nubia/improve/move/MoveScroll;->mListener:Lcn/nubia/improve/move/MoveScroll$MovePageListener;

    .line 46
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lcn/nubia/improve/move/MoveScroll$1;

    iget-object p2, p0, Lcn/nubia/improve/move/MoveScroll;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/improve/move/MoveScroll$1;-><init>(Lcn/nubia/improve/move/MoveScroll;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lcn/nubia/improve/move/MoveScroll$2;

    invoke-direct {p1, p0}, Lcn/nubia/improve/move/MoveScroll$2;-><init>(Lcn/nubia/improve/move/MoveScroll;)V

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/move/MoveScroll;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/improve/move/MoveScroll;[Lcn/nubia/gallery3d/data/MediaSet;)[Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/improve/move/MoveScroll;)Lcn/nubia/improve/move/MoveScroll$MovePageListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/improve/move/MoveScroll;->mListener:Lcn/nubia/improve/move/MoveScroll$MovePageListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/move/MoveScroll;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/improve/move/MoveScroll;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static creatRotationBitmap(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_0

    .line 158
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    long-to-float p1, p1

    .line 159
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public firstReloadAlbumSetData()V
    .locals 2

    .line 187
    new-instance v0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/move/MoveScroll$ReloadTask;-><init>(Lcn/nubia/improve/move/MoveScroll;Lcn/nubia/improve/move/MoveScroll$1;)V

    iput-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mReloadTask:Lcn/nubia/improve/move/MoveScroll$ReloadTask;

    .line 188
    invoke-virtual {v0}, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->start()V

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 113
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    return-object v2

    .line 116
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    aput-object v1, v0, p1

    .line 117
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez p1, :cond_1

    .line 119
    iput-object v2, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->isASyncLoadImage()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1, v0, v2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object p1

    sget-object v0, Lcn/nubia/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 124
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object p1

    sget-object v0, Lcn/nubia/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 128
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1}, Lcn/nubia/improve/move/MoveScroll;->creatRotationBitmap(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getBitmap(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Landroid/graphics/Bitmap;
    .locals 3

    .line 135
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    return-object v2

    .line 138
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    aput-object v1, v0, p1

    .line 139
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez p1, :cond_1

    .line 141
    iput-object v2, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->isASyncLoadImage()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object p1

    sget-object p2, Lcn/nubia/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 146
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object p1

    sget-object p2, Lcn/nubia/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    .line 148
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcn/nubia/improve/move/MoveScroll;->creatRotationBitmap(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    .line 153
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    return v0
.end method

.method public getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    return-object p1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPath(I)Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMediaSetDirPath(Lcn/nubia/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getSetPath(I)Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/ui/CloudAlbum;

    .line 198
    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudAlbum;->getCloudPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reloadAlbumSetData()V
    .locals 11

    .line 168
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v4, v0

    :goto_0
    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    .line 173
    sget-object v4, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 174
    :try_start_0
    iget-object v5, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v5

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    const-string v0, "MoveScroll"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish reload - duration: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ms"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v4

    goto :goto_1

    .line 179
    :cond_0
    monitor-exit v4

    move-wide v4, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 182
    invoke-virtual {p0}, Lcn/nubia/improve/move/MoveScroll;->getCount()I

    move-result v0

    new-array v0, v0, [Lcn/nubia/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    const-string v0, "MoveScroll"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It takes "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to reload data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSource(Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    .line 241
    iput-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 242
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSource:Lcn/nubia/gallery3d/data/MediaSet;

    .line 243
    invoke-virtual {p0}, Lcn/nubia/improve/move/MoveScroll;->getCount()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll;->mMediaSet:[Lcn/nubia/gallery3d/data/MediaSet;

    return-void
.end method

.method public stopReloadData()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll;->mReloadTask:Lcn/nubia/improve/move/MoveScroll$ReloadTask;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->terminate()V

    :cond_0
    return-void
.end method
