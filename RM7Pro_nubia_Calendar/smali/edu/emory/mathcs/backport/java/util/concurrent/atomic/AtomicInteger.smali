.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x563f5ecc8c6c168aL


# instance fields
.field private volatile value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialValue"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 33
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized addAndGet(I)I
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized compareAndSet(II)Z
    .locals 1
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    if-ne v0, p1, :cond_0

    .line 93
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
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

.method public final declared-synchronized decrementAndGet()I
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final get()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    return v0
.end method

.method public final declared-synchronized getAndAdd(I)I
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    .line 152
    .local v0, "old":I
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    add-int/2addr v1, p1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return v0

    .line 151
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized getAndDecrement()I
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndIncrement()I
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndSet(I)I
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    .line 78
    .local v0, "old":I
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return v0

    .line 77
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized incrementAndGet()I
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized lazySet(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
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
    .line 199
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final declared-synchronized set(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
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
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized weakCompareAndSet(II)Z
    .locals 1
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I

    if-ne v0, p1, :cond_0

    .line 115
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->value:I
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
