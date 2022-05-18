.class final Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x658832e7537bbf0bL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFair()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public lock()V
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 184
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v3, :cond_0

    .line 186
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 187
    const/4 v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    .line 188
    monitor-exit p0

    .line 215
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v3, :cond_1

    .line 191
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->incHolds()V

    .line 192
    monitor-exit p0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 195
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 199
    .local v2, "wasInterrupted":Z
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    :goto_1
    :try_start_3
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v3, :cond_2

    .line 208
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 209
    const/4 v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    if-eqz v2, :cond_3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    goto :goto_1

    .line 215
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public lockInterruptibly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 223
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 224
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 226
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 227
    const/4 v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    .line 228
    monitor-exit p0

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v2, :cond_2

    .line 231
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->incHolds()V

    .line 232
    monitor-exit p0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 236
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_2

    .line 237
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 238
    const/4 v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "ex":Ljava/lang/InterruptedException;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 243
    :cond_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public tryLock(J)Z
    .locals 11
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 251
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 253
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v6, :cond_1

    .line 255
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 256
    const/4 v5, 0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    .line 257
    monitor-exit p0

    .line 282
    :goto_0
    return v4

    .line 259
    :cond_1
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v6, :cond_2

    .line 260
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->incHolds()V

    .line 261
    monitor-exit p0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 263
    :cond_2
    cmp-long v6, p1, v8

    if-gtz v6, :cond_3

    .line 264
    :try_start_1
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    add-long v2, v6, p1

    .line 269
    .local v2, "deadline":J
    :cond_4
    :try_start_2
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 270
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v6, :cond_5

    .line 271
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->incHolds()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 274
    :cond_5
    :try_start_4
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v6, :cond_6

    .line 275
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 276
    const/4 v5, 0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 280
    :cond_6
    :try_start_6
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v6

    sub-long p1, v2, v6

    .line 281
    cmp-long v6, p1, v8

    if-gtz v6, :cond_4

    .line 282
    :try_start_7
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "ex":Ljava/lang/InterruptedException;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v4, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 288
    :cond_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized unlock()V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_0
    :try_start_1
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    if-nez v0, :cond_1

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_1
    monitor-exit p0

    return-void
.end method
