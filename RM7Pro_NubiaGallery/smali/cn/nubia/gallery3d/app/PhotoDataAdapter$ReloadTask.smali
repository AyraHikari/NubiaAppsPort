.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 1412
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 1413
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1414
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    const/4 p1, 0x0

    .line 1416
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 1514
    iget-object v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1515
    iget v1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    if-ltz v1, :cond_2

    .line 1519
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaItem;

    :cond_2
    :goto_0
    return-object p1
.end method

.method private findIndexOfPathInCache(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcn/nubia/gallery3d/data/Path;)I
    .locals 4

    .line 1537
    iget-object v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1539
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1540
    iget p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v2, p1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findIndexOfTarget(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 2

    .line 1523
    iget-object v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcn/nubia/gallery3d/data/Path;

    if-nez v0, :cond_0

    iget p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    return p1

    .line 1524
    :cond_0
    iget-object v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1528
    iget-object v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcn/nubia/gallery3d/data/Path;

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcn/nubia/gallery3d/data/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 1533
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcn/nubia/gallery3d/data/Path;

    iget p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I

    move-result p1

    return p1
.end method

.method private updateLoading(Z)V
    .locals 1

    .line 1419
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1420
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1421
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

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

    .line 1504
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1505
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 9

    .line 1426
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1427
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v0, :cond_9

    .line 1428
    monitor-enter p0

    .line 1429
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v0, :cond_0

    .line 1430
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1431
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 1432
    monitor-exit p0

    goto :goto_0

    .line 1434
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1435
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1436
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1437
    sget-object v1, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 1438
    :try_start_1
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1439
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 1440
    iget-wide v6, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    .line 1441
    iput-boolean v2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1442
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    iput v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1444
    :cond_1
    iget-boolean v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v4, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 1445
    :cond_2
    iget v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lez v4, :cond_3

    iget v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    if-nez v4, :cond_3

    iget v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    if-nez v4, :cond_3

    .line 1446
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    invoke-static {v2, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2502(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I

    .line 1447
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    .line 1448
    monitor-exit v1

    goto :goto_0

    .line 1450
    :cond_3
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    iget v5, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v6, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget v7, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1456
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    .line 1457
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcn/nubia/gallery3d/data/Path;)I

    move-result v4

    .line 1458
    iget-object v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3402(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_6

    .line 1462
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1463
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcn/nubia/gallery3d/data/Path;

    if-ne v3, v4, :cond_5

    .line 1464
    iget v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    goto :goto_2

    .line 1466
    :cond_5
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 1469
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v3

    iget-object v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    iget-object v8, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_2
    if-ne v4, v5, :cond_7

    .line 1482
    iget v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1483
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v3

    if-ne v3, v2, :cond_7

    if-lez v4, :cond_7

    add-int/lit8 v4, v4, -0x1

    .line 1490
    :cond_7
    iget v3, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lez v3, :cond_8

    .line 1491
    iget v3, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lt v4, v3, :cond_8

    .line 1492
    iget v3, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    add-int/lit8 v4, v3, -0x1

    .line 1496
    :cond_8
    iput v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1497
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v2, v3, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1497
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1434
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1509
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1510
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
