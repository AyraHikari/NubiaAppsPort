.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L


# instance fields
.field private volatile value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "initialValue"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized compareAndSet(ZZ)Z
    .locals 3
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    monitor-enter p0

    :try_start_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-ne p1, v2, :cond_2

    .line 60
    if-eqz p2, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v2, v1

    .line 59
    goto :goto_0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized getAndSet(Z)Z
    .locals 4
    .param p1, "newValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 117
    .local v0, "old":I
    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v0, :cond_1

    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    move v3, v2

    .line 117
    goto :goto_0

    :cond_1
    move v1, v2

    .line 118
    goto :goto_1

    .line 116
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized lazySet(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 106
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 96
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized weakCompareAndSet(ZZ)Z
    .locals 3
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    monitor-enter p0

    :try_start_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-ne p1, v2, :cond_2

    .line 82
    if-eqz p2, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicBoolean;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v2, v1

    .line 81
    goto :goto_0

    :cond_2
    move v0, v1

    .line 86
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
