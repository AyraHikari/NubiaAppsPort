.class Lpl/droidsonroids/gif/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized block()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 45
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iput-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized open()V
    .locals 2

    monitor-enter p0

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized set(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->open()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
