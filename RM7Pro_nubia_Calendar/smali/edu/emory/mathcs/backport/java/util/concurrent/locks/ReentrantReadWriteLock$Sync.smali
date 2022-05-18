.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Sync"
.end annotation


# static fields
.field static final IONE:Ljava/lang/Integer;

.field private static final NONE:I = 0x0

.field private static final READER:I = 0x1

.field private static final WRITER:I = 0x2


# instance fields
.field transient activeReaders_:I

.field transient activeWriter_:Ljava/lang/Thread;

.field transient readers_:Ljava/util/HashMap;

.field transient waitingReaders_:I

.field transient waitingWriters_:I

.field transient writeHolds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->IONE:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    .line 186
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I

    .line 187
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    .line 190
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    .line 198
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    .line 367
    monitor-exit p0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method allowReader()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized cancelledWaitingReader()V
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cancelledWaitingWriter()V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized endRead()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 284
    .local v3, "t":Ljava/lang/Thread;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    .local v0, "c":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 286
    new-instance v4, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v4}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v0    # "c":Ljava/lang/Object;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 287
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v3    # "t":Ljava/lang/Thread;
    :cond_0
    :try_start_1
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    .line 288
    sget-object v5, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->IONE:Ljava/lang/Integer;

    if-eq v0, v5, :cond_3

    .line 289
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "c":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 290
    .local v1, "h":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->IONE:Ljava/lang/Integer;

    .line 291
    .local v2, "ih":Ljava/lang/Integer;
    :goto_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .end local v1    # "h":I
    .end local v2    # "ih":Ljava/lang/Integer;
    :cond_1
    :goto_1
    monitor-exit p0

    return v4

    .line 290
    .restart local v1    # "h":I
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 295
    .end local v1    # "h":I
    .restart local v0    # "c":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I

    if-gtz v5, :cond_1

    .line 299
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    if-nez v5, :cond_1

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v5, :cond_1

    .line 300
    const/4 v4, 0x2

    goto :goto_1
.end method

.method declared-synchronized endWrite()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :cond_0
    :try_start_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I

    .line 311
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_2

    .line 320
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 314
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    .line 315
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->allowReader()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_3
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v1, :cond_1

    .line 318
    const/4 v0, 0x2

    goto :goto_0
.end method

.method declared-synchronized getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized getQueueLength()I
    .locals 2

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getReadHoldCount()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 345
    monitor-enter p0

    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 346
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 347
    .local v1, "t":Ljava/lang/Thread;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 348
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 345
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getReadLockCount()I
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getWriteHoldCount()I
    .locals 1

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    if-gtz v0, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isWriteLocked()Z
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isWriteLockedByCurrentThread()Z
    .locals 2

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized startRead()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 246
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 247
    .local v1, "t":Ljava/lang/Thread;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "c":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 249
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "c":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    monitor-exit p0

    return v2

    .line 253
    .restart local v0    # "c":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->allowReader()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->IONE:Ljava/lang/Integer;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 259
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized startReadFromNewReader()Z
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startRead()Z

    move-result v0

    .line 209
    .local v0, "pass":Z
    if-nez v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return v0

    .line 208
    .end local v0    # "pass":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized startReadFromWaitingReader()Z
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startRead()Z

    move-result v0

    .line 221
    .local v0, "pass":Z
    if-eqz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingReaders_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit p0

    return v0

    .line 220
    .end local v0    # "pass":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized startWrite()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 264
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_0
    monitor-exit p0

    return v0

    .line 267
    :cond_0
    :try_start_1
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I

    if-nez v2, :cond_3

    .line 268
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeReaders_:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readers_:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 271
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->activeWriter_:Ljava/lang/Thread;

    .line 272
    const/4 v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writeHolds_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    .line 276
    goto :goto_0

    :cond_3
    move v0, v1

    .line 279
    goto :goto_0
.end method

.method declared-synchronized startWriteFromNewWriter()Z
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWrite()Z

    move-result v0

    .line 215
    .local v0, "pass":Z
    if-nez v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return v0

    .line 214
    .end local v0    # "pass":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized startWriteFromWaitingWriter()Z
    .locals 2

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWrite()Z

    move-result v0

    .line 227
    .local v0, "pass":Z
    if-eqz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->waitingWriters_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return v0

    .line 226
    .end local v0    # "pass":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
