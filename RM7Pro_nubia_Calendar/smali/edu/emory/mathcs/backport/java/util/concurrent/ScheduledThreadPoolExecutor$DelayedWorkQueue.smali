.class Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedWorkQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x40


# instance fields
.field private final transient available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

.field private final transient lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

.field private transient queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 734
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 761
    const/16 v0, 0x40

    new-array v0, v0, [Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .line 763
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 764
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1146
    return-void
.end method

.method private finishPoll(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .locals 4
    .param p1, "f"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    .line 823
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 824
    .local v0, "s":I
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v2, v0

    .line 825
    .local v1, "x":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 826
    if-eqz v0, :cond_0

    .line 827
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    .line 828
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V

    .line 830
    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 831
    return-object p1
.end method

.method private grow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 838
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    array-length v2, v3

    .line 839
    .local v2, "oldCapacity":I
    shr-int/lit8 v3, v2, 0x1

    add-int v0, v2, v3

    .line 840
    .local v0, "newCapacity":I
    if-gez v0, :cond_0

    .line 841
    const v0, 0x7fffffff

    .line 842
    :cond_0
    new-array v1, v0, [Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .line 843
    .local v1, "newqueue":[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .line 845
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 851
    if-eqz p1, :cond_1

    .line 852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 853
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 852
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private pollExpired()Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1048
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v4, v8

    .line 1049
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-eqz v0, :cond_0

    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    :cond_0
    move-object v0, v3

    .line 1057
    .end local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_1
    :goto_0
    return-object v0

    .line 1051
    .restart local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_2
    const/4 v4, -0x1

    invoke-direct {p0, v0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 1052
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v1, v4, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1053
    .local v1, "s":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v4, v1

    .line 1054
    .local v2, "x":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aput-object v3, v4, v1

    .line 1055
    if-eqz v1, :cond_1

    .line 1056
    invoke-direct {p0, v8, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    goto :goto_0
.end method

.method private setIndex(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "f"    # Ljava/lang/Object;
    .param p2, "idx"    # I

    .prologue
    .line 772
    instance-of v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v0, :cond_0

    .line 773
    check-cast p1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .end local p1    # "f":Ljava/lang/Object;
    iput p2, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    .line 774
    :cond_0
    return-void
.end method

.method private siftDown(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V
    .locals 5
    .param p1, "k"    # I
    .param p2, "key"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    .line 799
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    ushr-int/lit8 v2, v4, 0x1

    .line 800
    .local v2, "half":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 801
    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 802
    .local v1, "child":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v4, v1

    .line 803
    .local v0, "c":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    add-int/lit8 v3, v1, 0x1

    .line 804
    .local v3, "right":I
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    .line 805
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move v1, v3

    aget-object v0, v4, v3

    .line 806
    :cond_0
    invoke-interface {p2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 812
    .end local v0    # "c":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v4, p1

    .line 813
    invoke-direct {p0, p2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 814
    return-void

    .line 808
    .restart local v0    # "c":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .restart local v1    # "child":I
    .restart local v3    # "right":I
    :cond_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v4, p1

    .line 809
    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 810
    move p1, v1

    goto :goto_0
.end method

.method private siftUp(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V
    .locals 3
    .param p1, "k"    # I
    .param p2, "key"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    .line 781
    :goto_0
    if-lez p1, :cond_0

    .line 782
    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v1, v2, 0x1

    .line 783
    .local v1, "parent":I
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v2, v1

    .line 784
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    invoke-interface {p2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 790
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .end local v1    # "parent":I
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v2, p1

    .line 791
    invoke-direct {p0, p2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 792
    return-void

    .line 786
    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .restart local v1    # "parent":I
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v2, p1

    .line 787
    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 788
    move p1, v1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Runnable;

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 1027
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1028
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1030
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v3, :cond_1

    .line 1031
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v3, v0

    .line 1032
    .local v2, "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-eqz v2, :cond_0

    .line 1033
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 1034
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1037
    .end local v2    # "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1041
    return-void

    .line 1039
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 1061
    if-nez p1, :cond_0

    .line 1062
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1063
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1064
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1065
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1066
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1068
    const/4 v2, 0x0

    .line 1070
    .local v2, "n":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->pollExpired()Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    .line 1071
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-eqz v0, :cond_2

    .line 1072
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v2, v2, 0x1

    .line 1076
    goto :goto_0

    .line 1078
    :cond_2
    if-lez v2, :cond_3

    .line 1079
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    :cond_3
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
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
    .line 1087
    if-nez p1, :cond_0

    .line 1088
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1089
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1090
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1091
    :cond_1
    if-gtz p2, :cond_2

    .line 1092
    const/4 v2, 0x0

    .line 1110
    :goto_0
    return v2

    .line 1093
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1094
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1096
    const/4 v2, 0x0

    .line 1097
    .local v2, "n":I
    :goto_1
    if-ge v2, p2, :cond_3

    .line 1098
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->pollExpired()Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    .line 1099
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-eqz v0, :cond_3

    .line 1100
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v2, v2, 0x1

    .line 1104
    goto :goto_1

    .line 1106
    .end local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_3
    if-lez v2, :cond_4

    .line 1107
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :cond_4
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 899
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1140
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 917
    if-nez p1, :cond_0

    .line 918
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    move-object v0, p1

    .line 919
    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .line 920
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 921
    .local v2, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 923
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 924
    .local v1, "i":I
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    array-length v5, v5

    if-lt v1, v5, :cond_1

    .line 925
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->grow()V

    .line 926
    :cond_1
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 928
    if-nez v1, :cond_3

    .line 929
    const/4 v3, 0x1

    .line 930
    .local v3, "notify":Z
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 931
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 937
    :goto_0
    if-eqz v3, :cond_2

    .line 938
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :cond_2
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 942
    return v4

    .line 934
    .end local v3    # "notify":Z
    :cond_3
    :try_start_1
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v0, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    move v3, v4

    .line 935
    .restart local v3    # "notify":Z
    :cond_4
    invoke-direct {p0, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 940
    .end local v1    # "i":I
    .end local v3    # "notify":Z
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 954
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 908
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 910
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 958
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 959
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 961
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 962
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-eqz v0, :cond_0

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 963
    :cond_0
    const/4 v2, 0x0

    .line 967
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v2

    .line 965
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 967
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

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
    .line 994
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 995
    .local v6, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v6

    .line 996
    .local v0, "deadline":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 997
    .local v5, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1000
    :goto_0
    :try_start_0
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v9, 0x0

    aget-object v4, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    .local v4, "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-nez v4, :cond_1

    .line 1002
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 1003
    const/4 v8, 0x0

    .line 1022
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v8

    .line 1005
    :cond_0
    :try_start_1
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v8, v6, v7, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 1006
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    goto :goto_0

    .line 1009
    :cond_1
    sget-object v8, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v4, v8}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1010
    .local v2, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 1011
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_2

    .line 1012
    const/4 v8, 0x0

    .line 1022
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 1013
    :cond_2
    cmp-long v8, v2, v6

    if-lez v8, :cond_3

    .line 1014
    move-wide v2, v6

    .line 1015
    :cond_3
    :try_start_2
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v8, v2, v3, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 1016
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    goto :goto_0

    .line 1018
    :cond_4
    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1022
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v2    # "delay":J
    .end local v4    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :catchall_0
    move-exception v8

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Object;)Z

    .line 947
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 903
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 861
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 862
    .local v2, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 865
    :try_start_0
    instance-of v6, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v6, :cond_1

    .line 866
    move-object v0, p1

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    move-object v6, v0

    iget v1, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    .line 869
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v6, v6, v1

    if-ne v6, p1, :cond_2

    const/4 v3, 0x1

    .local v3, "removed":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 870
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/lang/Object;I)V

    .line 871
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v5, v6, -0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 872
    .local v5, "s":I
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v6, v5

    .line 873
    .local v4, "replacement":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    .line 874
    if-eq v5, v1, :cond_0

    .line 875
    invoke-direct {p0, v1, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    .line 876
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    aget-object v6, v6, v1

    if-ne v6, v4, :cond_0

    .line 877
    invoke-direct {p0, v1, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILedu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    .end local v4    # "replacement":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .end local v5    # "s":I
    :cond_0
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 883
    return v3

    .line 868
    .end local v1    # "i":I
    .end local v3    # "removed":Z
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .restart local v1    # "i":I
    goto :goto_0

    .line 869
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 881
    .end local v1    # "i":I
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public size()I
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 889
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 891
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    .local v1, "s":I
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 895
    return v1

    .line 893
    .end local v1    # "s":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public take()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 972
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 973
    .local v3, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 976
    :goto_0
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v5, 0x0

    aget-object v2, v4, v5

    .line 977
    .local v2, "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    if-nez v2, :cond_0

    .line 978
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 988
    .end local v2    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 980
    .restart local v2    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_0
    :try_start_1
    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v2, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 981
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 982
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v5, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 984
    :cond_1
    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 988
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1115
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1116
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1118
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1120
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 1125
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1126
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1128
    :try_start_0
    array-length v1, p1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v1, v2, :cond_0

    .line 1129
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    .line 1130
    :cond_0
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    array-length v1, p1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-le v1, v2, :cond_1

    .line 1132
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    :cond_1
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
