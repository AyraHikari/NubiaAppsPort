.class public Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field private count:I

.field private final items:[Ljava/lang/Object;

.field private final lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

.field private final notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

.field private putIndex:I

.field private takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 152
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    .prologue
    .line 163
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 164
    if-gtz p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 167
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 168
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 169
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 170
    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z
    .param p3, "c"    # Ljava/util/Collection;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 190
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 193
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    .prologue
    .line 50
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    return v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    .prologue
    .line 50
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    return v0
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    .prologue
    .line 50
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    .prologue
    .line 50
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    return v0
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    .prologue
    .line 50
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private extract()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 108
    .local v0, "items":[Ljava/lang/Object;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v0, v2

    .line 109
    .local v1, "x":Ljava/lang/Object;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 110
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 111
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 112
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 113
    return-object v1
.end method

.method private insert(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    .line 97
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 98
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 99
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 100
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 209
    invoke-super {p0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 576
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 577
    .local v1, "items":[Ljava/lang/Object;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 578
    .local v4, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 580
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 581
    .local v0, "i":I
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .local v2, "k":I
    move v3, v2

    .line 582
    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    if-lez v3, :cond_0

    .line 583
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 584
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_0

    .line 586
    .end local v3    # "k":I
    .restart local v2    # "k":I
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 587
    const/4 v5, 0x0

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 588
    const/4 v5, 0x0

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 589
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 593
    return-void

    .line 591
    .end local v0    # "i":I
    .end local v2    # "k":I
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 451
    if-nez p1, :cond_0

    .line 465
    :goto_0
    return v5

    .line 452
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 453
    .local v1, "items":[Ljava/lang/Object;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 454
    .local v4, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 456
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 457
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "k":I
    move v3, v2

    .line 458
    .end local v2    # "k":I
    .local v3, "k":I
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v3, v6, :cond_2

    .line 459
    aget-object v6, v1, v0

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 460
    const/4 v5, 0x1

    .line 465
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 461
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_1

    .line 465
    .end local v3    # "k":I
    .restart local v2    # "k":I
    :cond_2
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "k":I
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 6
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 603
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 604
    :cond_0
    if-ne p1, p0, :cond_1

    .line 605
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 606
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 607
    .local v1, "items":[Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 608
    .local v2, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 610
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 611
    .local v0, "i":I
    const/4 v4, 0x0

    .line 612
    .local v4, "n":I
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 613
    .local v3, "max":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 614
    aget-object v5, v1, v0

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 615
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 616
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    .line 617
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 619
    :cond_2
    if-lez v4, :cond_3

    .line 620
    const/4 v5, 0x0

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 621
    const/4 v5, 0x0

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 622
    const/4 v5, 0x0

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 623
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_3
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    .end local v0    # "i":I
    .end local v3    # "max":I
    .end local v4    # "n":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "maxElements"    # I

    .prologue
    .line 638
    if-nez p1, :cond_0

    .line 639
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 640
    :cond_0
    if-ne p1, p0, :cond_1

    .line 641
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 642
    :cond_1
    if-gtz p2, :cond_2

    .line 643
    const/4 v4, 0x0

    .line 665
    :goto_0
    return v4

    .line 644
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 645
    .local v1, "items":[Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 646
    .local v2, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 648
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 649
    .local v0, "i":I
    const/4 v4, 0x0

    .line 650
    .local v4, "n":I
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 651
    .local v5, "sz":I
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge p2, v6, :cond_3

    move v3, p2

    .line 652
    .local v3, "max":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 653
    aget-object v6, v1, v0

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 654
    const/4 v6, 0x0

    aput-object v6, v1, v0

    .line 655
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    .line 656
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 651
    .end local v3    # "max":I
    :cond_3
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    goto :goto_1

    .line 658
    .restart local v3    # "max":I
    :cond_4
    if-lez v4, :cond_5

    .line 659
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v6, v4

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 660
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 661
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :cond_5
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "i":I
    .end local v3    # "max":I
    .end local v4    # "n":I
    .end local v5    # "sz":I
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method final inc(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 88
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "i":I
    :cond_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 682
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 684
    :try_start_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 223
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 224
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 227
    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v1

    .line 229
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 275
    :cond_0
    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 276
    .local v4, "nanos":J
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 277
    .local v3, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 279
    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v4

    .line 281
    .local v0, "deadline":J
    :goto_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v7, v7

    if-eq v6, v7, :cond_1

    .line 282
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/4 v6, 0x1

    .line 296
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v6

    .line 285
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    .line 286
    const/4 v6, 0x0

    .line 296
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 288
    :cond_2
    :try_start_1
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v7, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v6, v4, v5, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 289
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v4, v0, v6

    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 292
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .end local v0    # "deadline":J
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 360
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 362
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 364
    :goto_0
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 362
    :cond_0
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 302
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 304
    :try_start_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 305
    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    .line 306
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 309
    .local v1, "x":Ljava/lang/Object;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
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
    .line 332
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 333
    .local v4, "nanos":J
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 334
    .local v3, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 336
    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v4

    .line 338
    .local v0, "deadline":J
    :goto_0
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-eqz v7, :cond_0

    .line 339
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 354
    .local v6, "x":Ljava/lang/Object;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v6    # "x":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 342
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gtz v7, :cond_1

    .line 343
    const/4 v6, 0x0

    .line 354
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 345
    :cond_1
    :try_start_1
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v8, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v7, v4, v5, v8}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 346
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    sub-long v4, v0, v8

    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 349
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    .end local v0    # "deadline":J
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public put(Ljava/lang/Object;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 246
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 247
    .local v1, "items":[Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 248
    .local v2, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 251
    :goto_0
    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    array-length v4, v1

    if-ne v3, v4, :cond_1

    .line 252
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 255
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 257
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 400
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 402
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 404
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 420
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return v5

    .line 421
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 422
    .local v1, "items":[Ljava/lang/Object;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 423
    .local v4, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 425
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 426
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "k":I
    move v3, v2

    .line 428
    .end local v2    # "k":I
    .local v3, "k":I
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v6, :cond_1

    .line 438
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 430
    :cond_1
    :try_start_1
    aget-object v6, v1, v0

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 431
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    const/4 v5, 0x1

    .line 438
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 434
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_1

    .line 438
    .end local v0    # "i":I
    .end local v3    # "k":I
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method removeAt(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 123
    .local v0, "items":[Ljava/lang/Object;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne p1, v2, :cond_0

    .line 124
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v3, v0, v2

    .line 125
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 140
    :goto_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    .line 141
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 142
    return-void

    .line 129
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v1

    .line 130
    .local v1, "nexti":I
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v1, v2, :cond_1

    .line 131
    aget-object v2, v0, v1

    aput-object v2, v0, p1

    .line 132
    move p1, v1

    goto :goto_1

    .line 134
    :cond_1
    aput-object v3, v0, p1

    .line 135
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->putIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 377
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 379
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
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
    .line 314
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 315
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 318
    :goto_0
    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v3, :cond_0

    .line 319
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 322
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 324
    :cond_0
    :try_start_2
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 327
    .local v2, "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 483
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 484
    .local v2, "items":[Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 485
    .local v5, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    new-array v0, v6, [Ljava/lang/Object;

    .line 488
    .local v0, "a":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 489
    .local v3, "k":I
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v1, "i":I
    move v4, v3

    .line 490
    .end local v3    # "k":I
    .local v4, "k":I
    :goto_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v4, v6, :cond_0

    .line 491
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget-object v6, v2, v1

    aput-object v6, v0, v4

    .line 492
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v4    # "k":I
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 537
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 538
    .local v2, "items":[Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 539
    .local v5, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 541
    :try_start_0
    array-length v6, p1

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v6, v7, :cond_0

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 547
    :cond_0
    const/4 v3, 0x0

    .line 548
    .local v3, "k":I
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v1, "i":I
    move v4, v3

    .line 549
    .end local v3    # "k":I
    .local v4, "k":I
    :goto_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v4, v6, :cond_1

    .line 550
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget-object v6, v2, v1

    aput-object v6, p1, v4

    .line 551
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    goto :goto_0

    .line 553
    :cond_1
    array-length v6, p1

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    if-le v6, v7, :cond_2

    .line 554
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v7, 0x0

    aput-object v7, p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :cond_2
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v1    # "i":I
    .end local v4    # "k":I
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 563
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    :try_start_0
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 567
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
