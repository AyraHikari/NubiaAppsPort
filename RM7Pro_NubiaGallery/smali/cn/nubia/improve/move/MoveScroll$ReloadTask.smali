.class Lcn/nubia/improve/move/MoveScroll$ReloadTask;
.super Ljava/lang/Thread;
.source "MoveScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/move/MoveScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field final synthetic this$0:Lcn/nubia/improve/move/MoveScroll;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/move/MoveScroll;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mActive:Z

    .line 203
    iput-boolean p1, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/move/MoveScroll;Lcn/nubia/improve/move/MoveScroll$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcn/nubia/improve/move/MoveScroll$ReloadTask;-><init>(Lcn/nubia/improve/move/MoveScroll;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    .line 207
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 209
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mActive:Z

    if-eqz v0, :cond_2

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mDirty:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-static {v0}, Lcn/nubia/improve/move/MoveScroll;->access$100(Lcn/nubia/improve/move/MoveScroll;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/improve/move/MoveScroll;->access$202(Lcn/nubia/improve/move/MoveScroll;[Lcn/nubia/gallery3d/data/MediaSet;)[Lcn/nubia/gallery3d/data/MediaSet;

    .line 214
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-virtual {v0}, Lcn/nubia/improve/move/MoveScroll;->getCount()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/gallery3d/data/MediaSet;

    invoke-static {v0, v1}, Lcn/nubia/improve/move/MoveScroll;->access$202(Lcn/nubia/improve/move/MoveScroll;[Lcn/nubia/gallery3d/data/MediaSet;)[Lcn/nubia/gallery3d/data/MediaSet;

    .line 215
    iget-object v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-static {v0}, Lcn/nubia/improve/move/MoveScroll;->access$400(Lcn/nubia/improve/move/MoveScroll;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-static {v1}, Lcn/nubia/improve/move/MoveScroll;->access$400(Lcn/nubia/improve/move/MoveScroll;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-static {v3}, Lcn/nubia/improve/move/MoveScroll;->access$300(Lcn/nubia/improve/move/MoveScroll;)Lcn/nubia/improve/move/MoveScroll$MovePageListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    monitor-exit p0

    goto :goto_1

    .line 219
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mDirty:Z

    .line 222
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 224
    iget-object v3, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-static {v3}, Lcn/nubia/improve/move/MoveScroll;->access$100(Lcn/nubia/improve/move/MoveScroll;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x1f4

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    const-string v1, "MoveScroll"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish reload - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit v0

    goto :goto_1

    .line 230
    :cond_1
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 219
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/improve/move/MoveScroll$ReloadTask;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
