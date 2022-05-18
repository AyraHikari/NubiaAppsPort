.class Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/Future;
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/util/JobLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/Future<",
        "TT;>;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "TT;>;",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 49
    iput-object p1, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;

    .line 50
    iput-object p2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 64
    iput-object v2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;

    .line 65
    iput-object v2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 66
    iget-object v1, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcn/nubia/gallery3d/util/Future;

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v1}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 68
    iput-object v2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcn/nubia/gallery3d/util/Future;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 71
    iput v1, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 72
    iput-object v2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0, p0}, Lcn/nubia/gallery3d/util/FutureListener;->onFutureDone(Lcn/nubia/gallery3d/util/Future;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :goto_0
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public isDone()Z
    .locals 1

    .line 86
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-object v2

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v3, "JobLimiter"

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error executing job: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcn/nubia/gallery3d/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 117
    :goto_0
    monitor-enter p0

    .line 118
    :try_start_2
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v0, 0x1

    .line 119
    iput v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 121
    iput-object v2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 122
    iput-object v2, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcn/nubia/gallery3d/util/ThreadPool$Job;

    .line 123
    iput-object p1, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v0, p0}, Lcn/nubia/gallery3d/util/FutureListener;->onFutureDone(Lcn/nubia/gallery3d/util/Future;)V

    :cond_2
    return-object p1

    :catchall_1
    move-exception p1

    .line 125
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 109
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public declared-synchronized setFuture(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcn/nubia/gallery3d/util/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitDone()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->get()Ljava/lang/Object;

    return-void
.end method
