.class public Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field static class$edu$emory$mathcs$backport$java$util$concurrent$PriorityBlockingQueue:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private final lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

.field private final q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$PriorityBlockingQueue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.concurrent.PriorityBlockingQueue"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$PriorityBlockingQueue:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$PriorityBlockingQueue:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 76
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 77
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 85
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 76
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 77
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 98
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 114
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 76
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 77
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 115
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 134
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 76
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 77
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 135
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 136
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    .prologue
    .line 71
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/PriorityQueue;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    .prologue
    .line 71
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 71
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 562
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 566
    return-void

    .line 564
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 435
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 437
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 441
    return-void

    .line 439
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 332
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 333
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 335
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 337
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 384
    :cond_0
    if-ne p1, p0, :cond_1

    .line 385
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 386
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 387
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 389
    const/4 v2, 0x0

    .line 391
    .local v2, "n":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 392
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0    # "e":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "maxElements"    # I

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 410
    :cond_0
    if-ne p1, p0, :cond_1

    .line 411
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 412
    :cond_1
    if-gtz p2, :cond_2

    .line 413
    const/4 v2, 0x0

    .line 425
    :goto_0
    return v2

    .line 414
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 415
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 417
    const/4 v2, 0x0

    .line 419
    .local v2, "n":I
    :goto_1
    if-ge v2, p2, :cond_3

    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 420
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 425
    .end local v0    # "e":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 163
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 164
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 167
    .local v1, "ok":Z
    sget-boolean v2, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v1    # "ok":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 168
    .restart local v1    # "ok":Z
    :cond_0
    :try_start_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    const/4 v2, 0x1

    .line 171
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 262
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->peek()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 208
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 210
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 237
    .local v4, "nanos":J
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 238
    .local v3, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 240
    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v4

    .line 242
    .local v0, "deadline":J
    :goto_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 243
    .local v6, "x":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 256
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v6    # "x":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 245
    .restart local v6    # "x":Ljava/lang/Object;
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gtz v7, :cond_1

    .line 246
    const/4 v6, 0x0

    .line 256
    .end local v6    # "x":Ljava/lang/Object;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 248
    .restart local v6    # "x":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v8, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v7, v4, v5, v8}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 249
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    sub-long v4, v0, v8

    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 252
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .end local v0    # "deadline":J
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v6    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 299
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 314
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 315
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 317
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 319
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 285
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 287
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 289
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 218
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 221
    :goto_0
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 222
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 225
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 227
    :cond_0
    :try_start_2
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "x":Ljava/lang/Object;
    sget-boolean v3, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 356
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 358
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 481
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 482
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 484
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 486
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 367
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 369
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->q:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 371
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
