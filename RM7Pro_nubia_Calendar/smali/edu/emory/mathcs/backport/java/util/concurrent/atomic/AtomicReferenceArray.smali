.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;
.super Ljava/lang/Object;
.source "AtomicReferenceArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x562d215e419a9ff4L


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # [Ljava/lang/Object;

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
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public final declared-synchronized compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 111
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aput-object p3, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const/4 v0, 0x1

    .line 115
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 96
    .local v0, "old":Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object v0

    .line 95
    .end local v0    # "old":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized lazySet(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1
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
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final declared-synchronized set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1
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
    .locals 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 148
    const-string v2, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-object v2

    .line 150
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 153
    if-nez v1, :cond_1

    .line 154
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    :goto_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 147
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 161
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "i":I
    :cond_2
    :try_start_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0
.end method

.method public final declared-synchronized weakCompareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 134
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aput-object p3, v0, p1
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
