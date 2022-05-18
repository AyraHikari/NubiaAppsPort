.class public Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# instance fields
.field private arrivalCount:I

.field private item:Ljava/lang/Object;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 15
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 90
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v12

    add-long v4, v12, p3

    .line 93
    .local v4, "deadline":J
    :goto_0
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->arrivalCount:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 94
    if-nez p2, :cond_1

    .line 95
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 155
    .end local v4    # "deadline":J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 90
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 96
    .restart local v4    # "deadline":J
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v9, p3, v12

    if-lez v9, :cond_2

    .line 97
    :try_start_1
    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v11, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 98
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v12

    sub-long p3, v4, v12

    goto :goto_0

    .line 101
    :cond_2
    new-instance v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;

    invoke-direct {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;-><init>()V

    throw v9

    .line 104
    :cond_3
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->arrivalCount:I

    add-int/lit8 v2, v9, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->arrivalCount:I

    .line 107
    .local v2, "count":I
    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    .line 108
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 109
    .local v7, "other":Ljava/lang/Object;
    move-object/from16 v0, p1

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 110
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v10

    move-object v8, v7

    .line 147
    .end local v7    # "other":Ljava/lang/Object;
    .local v8, "other":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 117
    .end local v8    # "other":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p1

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, "interrupted":Ljava/lang/InterruptedException;
    :goto_2
    :try_start_2
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->arrivalCount:I

    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    .line 121
    if-nez p2, :cond_7

    .line 122
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "ie":Ljava/lang/InterruptedException;
    move-object v6, v3

    .line 136
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_3
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 137
    .restart local v7    # "other":Ljava/lang/Object;
    const/4 v9, 0x0

    iput-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 138
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->arrivalCount:I

    .line 139
    const/4 v9, 0x0

    iput v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->arrivalCount:I

    .line 140
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 144
    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    .line 145
    if-eqz v6, :cond_6

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 147
    :cond_6
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v7

    .end local v7    # "other":Ljava/lang/Object;
    .restart local v8    # "other":Ljava/lang/Object;
    goto :goto_1

    .line 123
    .end local v8    # "other":Ljava/lang/Object;
    :cond_7
    const-wide/16 v12, 0x0

    cmp-long v9, p3, v12

    if-lez v9, :cond_5

    .line 124
    :try_start_4
    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->lock:Ljava/lang/Object;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v11, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 125
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v12

    sub-long p3, v4, v12

    goto :goto_2

    .line 151
    .restart local v7    # "other":Ljava/lang/Object;
    :cond_8
    if-eqz v6, :cond_9

    .line 152
    :try_start_5
    throw v6

    .line 154
    :cond_9
    new-instance v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;

    invoke-direct {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;-><init>()V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    :try_end_0
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "cannotHappen":Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public exchange(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
