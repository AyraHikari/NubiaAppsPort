.class public Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;
.super Ljava/lang/Object;
.source "CountDownLatch.java"


# instance fields
.field private count_:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    .line 145
    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 176
    :cond_0
    monitor-enter p0

    .line 177
    :goto_0
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    if-lez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    return-void
.end method

.method public await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 224
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 225
    :cond_0
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 226
    .local v2, "nanos":J
    monitor-enter p0

    .line 227
    :try_start_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    if-gtz v6, :cond_1

    .line 228
    monitor-exit p0

    .line 240
    :goto_0
    return v4

    .line 229
    :cond_1
    cmp-long v6, v2, v8

    if-gtz v6, :cond_2

    .line 230
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 234
    .local v0, "deadline":J
    :cond_3
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 235
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    if-gtz v6, :cond_4

    .line 236
    monitor-exit p0

    goto :goto_0

    .line 244
    .end local v0    # "deadline":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 238
    .restart local v0    # "deadline":J
    :cond_4
    :try_start_1
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 239
    cmp-long v6, v2, v8

    if-gtz v6, :cond_3

    .line 240
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public declared-synchronized countDown()V
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->count_:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
