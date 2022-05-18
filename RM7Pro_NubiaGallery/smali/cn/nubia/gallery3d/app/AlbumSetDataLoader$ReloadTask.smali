.class Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 331
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 332
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    const/4 p1, 0x0

    .line 333
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(ZZ)V
    .locals 3

    .line 336
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 337
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    const/4 v0, 0x2

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 339
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 342
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 344
    :cond_2
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 405
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 350
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v0

    .line 352
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_9

    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 355
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-direct {p0, v0, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(ZZ)V

    .line 358
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 359
    monitor-exit p0

    goto :goto_0

    .line 361
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 362
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 363
    invoke-direct {p0, v3, v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(ZZ)V

    .line 366
    sget-object v1, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 368
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v6, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v2, v6, v4, v5}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;J)V

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 373
    :cond_3
    sget-object v2, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    :try_start_2
    iget-wide v6, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v6, v6, v4

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    .line 375
    iput-wide v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 376
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    iput v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 382
    iget v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v5, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v4, v5, :cond_4

    .line 383
    iput v7, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 386
    :cond_4
    iget v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v4, v7, :cond_8

    .line 387
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    iget v5, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    iput-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    .line 388
    iget-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v4, :cond_5

    iget-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v4, v4, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    if-nez v4, :cond_5

    iget-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v4, v4, Lcn/nubia/gallery3d/data/LocationAlbumSet;

    if-nez v4, :cond_5

    iget-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v4, v4, Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    if-nez v4, :cond_5

    .line 391
    monitor-exit v2

    goto :goto_4

    .line 393
    :cond_5
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    iget v5, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/MediaSet;->getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 394
    :cond_6
    iget-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v4

    :goto_2
    iput-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 395
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    iget v5, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/MediaSet;->getSubSetMediaItemCount(I)I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    .line 396
    :cond_7
    iget-object v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    :goto_3
    iput v4, v1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 398
    :cond_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    new-instance v4, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v4, v5, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V

    invoke-static {v2, v4}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    :goto_4
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 398
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 368
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 361
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 401
    :cond_9
    invoke-direct {p0, v0, v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(ZZ)V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 410
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
