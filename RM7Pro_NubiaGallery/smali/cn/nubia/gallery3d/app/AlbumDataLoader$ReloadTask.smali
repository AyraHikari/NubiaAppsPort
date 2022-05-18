.class Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 370
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 371
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 376
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 377
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1600(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 417
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .line 383
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 385
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_5

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 389
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 390
    monitor-exit p0

    goto :goto_0

    .line 392
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 393
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    const/4 v1, 0x1

    .line 394
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 396
    sget-object v2, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    :try_start_1
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 398
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 399
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    new-instance v5, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;

    iget-object v6, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-direct {v5, v6, v3, v4}, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;J)V

    invoke-static {v2, v5}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 402
    :cond_2
    sget-object v5, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 403
    :try_start_2
    iget-wide v6, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_3

    .line 404
    iget-object v6, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v6}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    iput v6, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 405
    iput-wide v3, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 407
    :cond_3
    iget v3, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v3, :cond_4

    .line 408
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    iget v4, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v6, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v3, v4, v6}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 410
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    new-instance v4, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-direct {v4, v5, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;)V

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1800(Lcn/nubia/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 410
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 398
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 392
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 413
    :cond_5
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 422
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
