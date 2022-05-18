.class Lcn/nubia/gallery3d/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/nubia/gallery3d/util/Future;
.implements Lcn/nubia/gallery3d/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcn/nubia/gallery3d/util/Future<",
        "TT;>;",
        "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcn/nubia/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/util/ThreadPool;Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "TT;>;",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->this$0:Lcn/nubia/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;

    .line 112
    iput-object p3, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    return-void
.end method

.method private acquireResource(Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;)Z
    .locals 3

    .line 228
    :goto_0
    monitor-enter p0

    .line 229
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    iput-object v1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    const/4 p1, 0x0

    .line 231
    monitor-exit p0

    return p1

    .line 233
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 236
    monitor-enter p1

    .line 237
    :try_start_1
    iget v0, p1, Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 238
    iget v0, p1, Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p1, Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    .line 239
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    monitor-enter p0

    .line 251
    :try_start_2
    iput-object v1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    .line 252
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 242
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :catch_0
    :try_start_4
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 234
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private modeToCounter(I)Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 218
    iget-object p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->this$0:Lcn/nubia/gallery3d/util/ThreadPool;

    iget-object p1, p1, Lcn/nubia/gallery3d/util/ThreadPool;->mCpuCounter:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 220
    iget-object p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->this$0:Lcn/nubia/gallery3d/util/ThreadPool;

    iget-object p1, p1, Lcn/nubia/gallery3d/util/ThreadPool;->mNetworkCounter:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private releaseResource(Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;)V
    .locals 1

    .line 258
    monitor-enter p1

    .line 259
    :try_start_0
    iget v0, p1, Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 261
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 154
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    .line 155
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_1

    .line 156
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :try_start_2
    iget-object v1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 174
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 176
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    .line 178
    invoke-static {v1, v2, v0}, Lcn/nubia/gallery3d/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;

    invoke-interface {v0, p0}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Worker"

    const-string v2, "Exception in running a job"

    .line 139
    invoke-static {v1, v2, v0}, Lcn/nubia/gallery3d/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 142
    :goto_0
    monitor-enter p0

    .line 143
    :try_start_1
    iput-object v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsDone:Z

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/nubia/gallery3d/util/FutureListener;->onFutureDone(Lcn/nubia/gallery3d/util/Future;)V

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    .line 146
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V
    .locals 0

    monitor-enter p0

    .line 192
    :try_start_0
    iput-object p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

    .line 193
    iget-boolean p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)Z
    .locals 2

    .line 200
    iget v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->modeToCounter(I)Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->releaseResource(Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;)V

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mMode:I

    .line 205
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->modeToCounter(I)Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->acquireResource(Lcn/nubia/gallery3d/util/ThreadPool$ResourceCounter;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 210
    :cond_1
    iput p1, p0, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->mMode:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public waitDone()V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcn/nubia/gallery3d/util/ThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
