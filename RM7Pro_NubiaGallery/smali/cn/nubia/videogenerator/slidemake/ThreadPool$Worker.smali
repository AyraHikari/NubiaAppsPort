.class Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/nubia/videogenerator/slidemake/Future;
.implements Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/ThreadPool;
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
        "Lcn/nubia/videogenerator/slidemake/Future<",
        "TT;>;",
        "Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/videogenerator/slidemake/ThreadPool$Job<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcn/nubia/videogenerator/slidemake/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/videogenerator/slidemake/FutureListener<",
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

.field private mWaitOnResource:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/ThreadPool;Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;Lcn/nubia/videogenerator/slidemake/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/videogenerator/slidemake/ThreadPool$Job<",
            "TT;>;",
            "Lcn/nubia/videogenerator/slidemake/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->this$0:Lcn/nubia/videogenerator/slidemake/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mJob:Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;

    .line 113
    iput-object p3, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mListener:Lcn/nubia/videogenerator/slidemake/FutureListener;

    return-void
.end method

.method private acquireResource(Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;)Z
    .locals 3

    .line 229
    :goto_0
    monitor-enter p0

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    iput-object v1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    const/4 p1, 0x0

    .line 232
    monitor-exit p0

    return p1

    .line 234
    :cond_0
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    .line 235
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 237
    monitor-enter p1

    .line 238
    :try_start_1
    iget v0, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 239
    iget v0, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;->value:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;->value:I

    .line 240
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    monitor-enter p0

    .line 252
    :try_start_2
    iput-object v1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    .line 253
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 243
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
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

    .line 235
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private modeToCounter(I)Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->this$0:Lcn/nubia/videogenerator/slidemake/ThreadPool;

    iget-object p1, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool;->mCpuCounter:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 221
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->this$0:Lcn/nubia/videogenerator/slidemake/ThreadPool;

    iget-object p1, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool;->mNetworkCounter:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private releaseResource(Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;)V
    .locals 1

    .line 259
    monitor-enter p1

    .line 260
    :try_start_0
    iget v0, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;->value:I

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 262
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

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 155
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsCancelled:Z

    .line 156
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_1

    .line 157
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    :try_start_2
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mWaitOnResource:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 161
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mCancelListener:Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
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

    .line 175
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 177
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

    .line 179
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mResult:Ljava/lang/Object;
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

    .line 167
    iget-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsDone:Z
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

    .line 138
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mJob:Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;

    invoke-interface {v0, p0}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;->run(Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Worker"

    const-string v2, "Exception in running a job"

    .line 140
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 143
    :goto_0
    monitor-enter p0

    .line 144
    :try_start_1
    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsDone:Z

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 147
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mListener:Lcn/nubia/videogenerator/slidemake/FutureListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/nubia/videogenerator/slidemake/FutureListener;->onFutureDone(Lcn/nubia/videogenerator/slidemake/Future;)V

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    .line 147
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized setCancelListener(Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;)V
    .locals 0

    monitor-enter p0

    .line 193
    :try_start_0
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mCancelListener:Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;

    .line 194
    iget-boolean p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mCancelListener:Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;

    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p1}, Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
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

    .line 201
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->modeToCounter(I)Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->releaseResource(Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;)V

    :cond_0
    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mMode:I

    .line 206
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->modeToCounter(I)Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->acquireResource(Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 211
    :cond_1
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->mMode:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public waitDone()V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
