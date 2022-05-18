.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x200931f59d1d4008L


# instance fields
.field private final array:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [J

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 28
    return-void
.end method

.method public constructor <init>([J)V
    .locals 4
    .param p1, "array"    # [J

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 40
    :cond_0
    array-length v0, p1

    .line 41
    .local v0, "length":I
    new-array v1, v0, [J

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 42
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized addAndGet(IJ)J
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v2, v0, p1

    add-long/2addr v2, p2

    aput-wide v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized compareAndSet(IJJ)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v0, v0, p1

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aput-wide p4, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v0, 0x1

    .line 116
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized decrementAndGet(I)J
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndAdd(IJ)J
    .locals 6
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v0, v2, p1

    .line 171
    .local v0, "old":J
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v4, v2, p1

    add-long/2addr v4, p2

    aput-wide v4, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-wide v0

    .line 170
    .end local v0    # "old":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized getAndDecrement(I)J
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    aput-wide v4, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndIncrement(I)J
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    aput-wide v4, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndSet(IJ)J
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v0, v2, p1

    .line 96
    .local v0, "old":J
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aput-wide p2, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-wide v0

    .line 95
    .end local v0    # "old":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized incrementAndGet(I)J
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized lazySet(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aput-wide p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final declared-synchronized set(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aput-wide p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v2, v2

    if-nez v2, :cond_0

    .line 213
    const-string v2, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    monitor-exit p0

    return-object v2

    .line 215
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 219
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 220
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 212
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized weakCompareAndSet(IJJ)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v0, v0, p1

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLongArray;->array:[J

    aput-wide p4, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v0, 0x1

    .line 138
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
