.class Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/Future;
.implements Lcn/nubia/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSetSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/Future<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcn/nubia/gallery3d/data/MediaSet$SyncListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery.MultiSetSync"


# instance fields
.field private final mFutures:[Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcn/nubia/gallery3d/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcn/nubia/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;[Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)V
    .locals 3

    .line 320
    iput-object p1, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->this$0:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    const/4 v0, -0x1

    .line 316
    iput v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 321
    iput-object p3, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mListener:Lcn/nubia/gallery3d/data/MediaSet$SyncListener;

    .line 322
    array-length p3, p2

    iput p3, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 323
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/gallery3d/util/Future;

    iput-object p3, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcn/nubia/gallery3d/util/Future;

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_0

    .line 327
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcn/nubia/gallery3d/util/Future;

    aget-object v1, p2, p1

    invoke-virtual {v1, p0}, Lcn/nubia/gallery3d/data/MediaSet;->requestSync(Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v1

    aput-object v1, v0, p1

    const-string v0, "Gallery.MultiSetSync"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  request sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, p1

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    monitor-enter p0

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 336
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 337
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcn/nubia/gallery3d/util/Future;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    if-gez v1, :cond_2

    iput v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->waitDone()V

    .line 354
    iget v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 348
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 3

    .line 370
    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 371
    :try_start_0
    iput v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 372
    :cond_0
    iget p2, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    if-nez p2, :cond_1

    .line 374
    iget-object p2, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mListener:Lcn/nubia/gallery3d/data/MediaSet$SyncListener;

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Gallery.MultiSetSync"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " #pending="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 380
    iget-object p1, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->this$0:Lcn/nubia/gallery3d/data/MediaSet;

    iget v0, p0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-interface {p2, p1, v0}, Lcn/nubia/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 379
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized waitDone()V
    .locals 2

    monitor-enter p0

    .line 360
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "Gallery.MultiSetSync"

    const-string v1, "waitDone() interrupted"

    .line 362
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
