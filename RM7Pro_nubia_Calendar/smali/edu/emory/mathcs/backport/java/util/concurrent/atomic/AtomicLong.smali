.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1ac0fab477001718L


# instance fields
.field private volatile value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "initialValue"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 33
    iput-wide p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized addAndGet(J)J
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized compareAndSet(JJ)Z
    .locals 3
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 93
    iput-wide p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized decrementAndGet()J
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final get()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final declared-synchronized getAndAdd(J)J
    .locals 5
    .param p1, "delta"    # J

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    .line 151
    .local v0, "old":J
    iget-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-wide v0

    .line 150
    .end local v0    # "old":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized getAndDecrement()J
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndIncrement()J
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndSet(J)J
    .locals 3
    .param p1, "newValue"    # J

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    .line 78
    .local v0, "old":J
    iput-wide p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-wide v0

    .line 77
    .end local v0    # "old":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized incrementAndGet()J
    .locals 4

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final declared-synchronized lazySet(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized set(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized weakCompareAndSet(JJ)Z
    .locals 3
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 115
    iput-wide p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
