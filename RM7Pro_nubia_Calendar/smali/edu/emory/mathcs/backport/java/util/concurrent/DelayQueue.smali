.class public Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "DelayQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field static class$edu$emory$mathcs$backport$java$util$concurrent$DelayQueue:Ljava/lang/Class;


# instance fields
.field private final transient lock:Ljava/lang/Object;

.field private final q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$DelayQueue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.concurrent.DelayQueue"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$DelayQueue:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$DelayQueue:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 61
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 62
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->addAll(Ljava/util/Collection;)Z

    .line 63
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;

    .prologue
    .line 42
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;)Ledu/emory/mathcs/backport/java/util/PriorityQueue;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;

    .prologue
    .line 42
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->clear()V

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 8
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 245
    :cond_0
    if-ne p1, p0, :cond_1

    .line 246
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 247
    :cond_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "n":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "first":Ljava/lang/Object;
    if-eqz v0, :cond_2

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .end local v0    # "first":Ljava/lang/Object;
    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 256
    :cond_2
    if-lez v1, :cond_3

    .line 257
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 258
    :cond_3
    monitor-exit v3

    return v1

    .line 253
    :cond_4
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 8
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "maxElements"    # I

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 271
    :cond_0
    if-ne p1, p0, :cond_1

    .line 272
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 273
    :cond_1
    if-gtz p2, :cond_2

    .line 274
    const/4 v1, 0x0

    .line 286
    :goto_0
    return v1

    .line 275
    :cond_2
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "n":I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 278
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, "first":Ljava/lang/Object;
    if-eqz v0, :cond_3

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .end local v0    # "first":Ljava/lang/Object;
    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    .line 284
    :cond_3
    if-lez v1, :cond_4

    .line 285
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 286
    :cond_4
    monitor-exit v3

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 281
    :cond_5
    :try_start_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "first":Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 87
    if-eqz v0, :cond_0

    check-cast p1, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 88
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 89
    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 90
    .end local v0    # "first":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 126
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "first":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .end local v0    # "first":Ljava/lang/Object;
    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x0

    monitor-exit v3

    .line 135
    :goto_0
    return-object v1

    .line 131
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "x":Ljava/lang/Object;
    sget-boolean v2, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 137
    .end local v1    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 133
    .restart local v1    # "x":Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 135
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 181
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 182
    .local v10, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v12

    add-long v4, v12, v10

    .line 183
    .local v4, "deadline":J
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 185
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v12}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    .line 186
    .local v8, "first":Ljava/lang/Object;
    if-nez v8, :cond_1

    .line 187
    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-gtz v12, :cond_0

    .line 188
    const/4 v9, 0x0

    monitor-exit v13

    .line 207
    .end local v8    # "first":Ljava/lang/Object;
    :goto_1
    return-object v9

    .line 190
    .restart local v8    # "first":Ljava/lang/Object;
    :cond_0
    sget-object v12, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v12, v14, v10, v11}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 191
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v14

    sub-long v10, v4, v14

    goto :goto_0

    .line 194
    :cond_1
    check-cast v8, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .end local v8    # "first":Ljava/lang/Object;
    sget-object v12, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v8, v12}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 195
    .local v6, "delay":J
    const-wide/16 v14, 0x0

    cmp-long v12, v6, v14

    if-lez v12, :cond_4

    .line 196
    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-gtz v12, :cond_2

    .line 197
    const/4 v9, 0x0

    monitor-exit v13

    goto :goto_1

    .line 211
    .end local v6    # "delay":J
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 198
    .restart local v6    # "delay":J
    :cond_2
    cmp-long v12, v6, v10

    if-lez v12, :cond_3

    .line 199
    move-wide v6, v10

    .line 200
    :cond_3
    :try_start_1
    sget-object v12, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v12, v14, v6, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 201
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v14

    sub-long v10, v4, v14

    goto :goto_0

    .line 203
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v12}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 204
    .local v9, "x":Ljava/lang/Object;
    sget-boolean v12, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    if-nez v12, :cond_5

    if-nez v9, :cond_5

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 205
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v12}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size()I

    move-result v12

    if-eqz v12, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 207
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->offer(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 309
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 378
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public take()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 150
    :goto_0
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, "first":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 152
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 167
    .end local v2    # "first":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 154
    .restart local v2    # "first":Ljava/lang/Object;
    :cond_0
    :try_start_1
    check-cast v2, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .end local v2    # "first":Ljava/lang/Object;
    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v2, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 155
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    .line 156
    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v4, v6, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 159
    .local v3, "x":Ljava/lang/Object;
    sget-boolean v4, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 160
    :cond_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 162
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 368
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
