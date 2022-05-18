.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27b857513300bd8bL


# instance fields
.field private final array:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [I

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 29
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4
    .param p1, "array"    # [I

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 41
    :cond_0
    array-length v0, p1

    .line 42
    .local v0, "length":I
    new-array v1, v0, [I

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 43
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-void
.end method


# virtual methods
.method public final declared-synchronized addAndGet(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized compareAndSet(III)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 112
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aput p3, v0, p1
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

.method public final declared-synchronized decrementAndGet(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndAdd(II)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v0, v1, p1

    .line 172
    .local v0, "old":I
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v2, v1, p1

    add-int/2addr v2, p2

    aput v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return v0

    .line 171
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized getAndDecrement(I)I
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, -0x1

    aput v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndIncrement(I)I
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndSet(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v0, v1, p1

    .line 96
    .local v0, "old":I
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aput p2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return v0

    .line 95
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized incrementAndGet(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized lazySet(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final declared-synchronized set(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
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
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

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
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 219
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 220
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

.method public final declared-synchronized weakCompareAndSet(III)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 135
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aput p3, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v0, 0x1

    .line 139
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
