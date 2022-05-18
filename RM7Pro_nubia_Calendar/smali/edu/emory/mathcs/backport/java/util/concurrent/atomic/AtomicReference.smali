.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;
.super Ljava/lang/Object;
.source "AtomicReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x19a88e2baa87ab3aL


# instance fields
.field private volatile value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initialValue"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "update"    # Ljava/lang/Object;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 74
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized getAndSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    .line 108
    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-object v0

    .line 107
    .end local v0    # "old":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized lazySet(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "update"    # Ljava/lang/Object;

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 94
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
