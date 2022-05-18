.class final Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final ACK:I = 0x1

.field private static final CANCEL:I = -0x1

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field item:Ljava/lang/Object;

.field next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

.field state:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 286
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "n"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 289
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    return-void
.end method

.method private attempt(J)Z
    .locals 11
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 366
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    if-eqz v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 367
    :cond_1
    cmp-long v4, p1, v8

    if-gtz v4, :cond_2

    .line 368
    iput v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    move v2, v3

    .line 370
    goto :goto_0

    .line 372
    :cond_2
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v4

    add-long v0, v4, p1

    .line 374
    .local v0, "deadline":J
    :cond_3
    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 375
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    if-nez v4, :cond_0

    .line 376
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v4

    sub-long p1, v0, v4

    .line 377
    cmp-long v4, p1, v8

    if-gtz v4, :cond_3

    .line 378
    iput v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    move v2, v3

    .line 380
    goto :goto_0
.end method

.method private checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V
    .locals 1
    .param p1, "ie"    # Ljava/lang/InterruptedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    if-nez v0, :cond_0

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 314
    throw p1

    .line 316
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 317
    return-void
.end method

.method private extract()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    .line 298
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    .line 299
    return-object v0
.end method


# virtual methods
.method declared-synchronized getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 339
    :goto_0
    monitor-exit p0

    return-object v0

    .line 337
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 339
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setItem(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 324
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 328
    :goto_0
    monitor-exit p0

    return v0

    .line 325
    :cond_0
    :try_start_1
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    .line 326
    const/4 v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized waitForPut()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 358
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V

    .line 362
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized waitForPut(J)Ljava/lang/Object;
    .locals 3
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->attempt(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 406
    :goto_0
    monitor-exit p0

    return-object v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V

    .line 406
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized waitForTake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->state:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized waitForTake(J)Z
    .locals 3
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->attempt(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 394
    :goto_0
    monitor-exit p0

    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
