.class public Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;
.super Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x1fffffff

.field private static final COUNT_BITS:I = 0x1d

.field private static final ONLY_ONE:Z = true

.field private static final RUNNING:I = -0x20000000

.field private static final SHUTDOWN:I = 0x0

.field private static final STOP:I = 0x20000000

.field private static final TERMINATED:I = 0x60000000

.field private static final TIDYING:I = 0x40000000

.field private static final defaultHandler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

.field private static final shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile allowCoreThreadTimeOut:Z

.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

.field private volatile handler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

.field private volatile keepAliveTime:J

.field private largestPoolSize:I

.field private final mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

.field private volatile maximumPoolSize:I

.field private final termination:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

.field private volatile threadFactory:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

.field private final workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

.field private final workers:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .line 538
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor <init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .prologue
    .line 1114
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors;->defaultThreadFactory()Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    move-result-object v8

    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V

    .line 1116
    return-void
.end method

.method public constructor <init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    .param p7, "handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 1184
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors;->defaultThreadFactory()Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V

    .line 1186
    return-void
.end method

.method public constructor <init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    .param p7, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 1149
    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V

    .line 1151
    return-void
.end method

.method public constructor <init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V
    .locals 3
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    .param p7, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 1221
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;-><init>()V

    .line 349
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x20000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    .line 433
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 439
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    .line 444
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->termination:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 1222
    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    if-lt p2, p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 1226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1227
    :cond_1
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    if-nez p8, :cond_3

    .line 1228
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1229
    :cond_3
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1230
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1231
    iput-object p6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .line 1232
    invoke-virtual {p5, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1233
    iput-object p7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->threadFactory:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .line 1234
    iput-object p8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->handler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .line 1235
    return-void
.end method

.method private addWorker(Ljava/lang/Runnable;Z)Z
    .locals 9
    .param p1, "firstTask"    # Ljava/lang/Runnable;
    .param p2, "core"    # Z

    .prologue
    const/4 v7, 0x0

    .line 840
    :goto_0
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 841
    .local v0, "c":I
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 844
    .local v2, "rs":I
    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 903
    :cond_0
    :goto_1
    return v7

    .line 851
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v6

    .line 852
    .local v6, "wc":I
    const v8, 0x1fffffff

    if-ge v6, v8, :cond_0

    if-eqz p2, :cond_3

    iget v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    :goto_2
    if-ge v6, v8, :cond_0

    .line 855
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 864
    new-instance v5, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v5, p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V

    .line 865
    .local v5, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 867
    .local v4, "t":Ljava/lang/Thread;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 868
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 873
    :try_start_0
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 874
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 876
    if-eqz v4, :cond_2

    if-ltz v2, :cond_5

    if-nez v2, :cond_2

    if-eqz p1, :cond_5

    .line 880
    :cond_2
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 881
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 852
    .end local v1    # "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v5    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_3
    iget v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    goto :goto_2

    .line 857
    :cond_4
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 858
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v8

    if-eq v8, v2, :cond_1

    goto :goto_0

    .line 885
    .restart local v1    # "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v5    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_5
    :try_start_1
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 888
    .local v3, "s":I
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v7, :cond_6

    .line 889
    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    :cond_6
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 894
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 900
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v7

    const/high16 v8, 0x20000000

    if-ne v7, v8, :cond_7

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_7

    .line 901
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 903
    :cond_7
    const/4 v7, 0x1

    goto :goto_1

    .line 891
    .end local v3    # "s":I
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method private advanceRunState(I)V
    .locals 3
    .param p1, "targetState"    # I

    .prologue
    .line 592
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 593
    .local v0, "c":I
    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    invoke-static {p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :cond_1
    return-void
.end method

.method private checkShutdownAccess()V
    .locals 5

    .prologue
    .line 653
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 654
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1

    .line 655
    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 656
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 657
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 659
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 660
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    .line 661
    .local v3, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 664
    .end local v0    # "itr":Ljava/util/Iterator;
    .end local v3    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .restart local v0    # "itr":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 667
    .end local v0    # "itr":Ljava/util/Iterator;
    .end local v1    # "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_1
    return-void
.end method

.method private clearInterruptsForTaskRun()V
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 749
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 753
    :cond_0
    return-void
.end method

.method private compareAndDecrementWorkerCount(I)Z
    .locals 2
    .param p1, "expect"    # I

    .prologue
    .line 393
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private compareAndIncrementWorkerCount(I)Z
    .locals 2
    .param p1, "expect"    # I

    .prologue
    .line 386
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private static ctlOf(II)I
    .locals 1
    .param p0, "rs"    # I
    .param p1, "wc"    # I

    .prologue
    .line 363
    or-int v0, p0, p1

    return v0
.end method

.method private decrementWorkerCount()V
    .locals 1

    .prologue
    .line 402
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    return-void
.end method

.method private drainQueue()Ljava/util/List;
    .locals 6

    .prologue
    .line 794
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .line 795
    .local v2, "q":Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v4, "taskList":Ljava/util/List;
    invoke-interface {v2, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 797
    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 798
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-interface {v2, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    .line 799
    .local v0, "arr":[Ljava/lang/Runnable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 800
    aget-object v3, v0, v1

    .line 801
    .local v3, "r":Ljava/lang/Runnable;
    invoke-interface {v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 802
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v0    # "arr":[Ljava/lang/Runnable;
    .end local v1    # "i":I
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_1
    return-object v4
.end method

.method private getTask()Ljava/lang/Runnable;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 964
    const/4 v5, 0x0

    .line 968
    .local v5, "timedOut":Z
    :goto_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 969
    .local v0, "c":I
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v3

    .line 972
    .local v3, "rs":I
    if-ltz v3, :cond_2

    const/high16 v7, 0x20000000

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 973
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    move-object v1, v8

    .line 998
    :cond_1
    :goto_1
    return-object v1

    .line 980
    :cond_2
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v6

    .line 981
    .local v6, "wc":I
    iget-boolean v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-nez v7, :cond_3

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v6, v7, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 983
    .local v4, "timed":Z
    :goto_2
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-gt v6, v7, :cond_6

    if-eqz v5, :cond_4

    if-nez v4, :cond_6

    .line 994
    :cond_4
    if-eqz v4, :cond_8

    :try_start_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    iget-wide v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v7, v10, v11, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 997
    .local v1, "r":Ljava/lang/Runnable;
    :goto_3
    if-nez v1, :cond_1

    .line 999
    const/4 v5, 0x1

    goto :goto_0

    .line 981
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v4    # "timed":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 985
    .restart local v4    # "timed":Z
    :cond_6
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v1, v8

    .line 986
    goto :goto_1

    .line 987
    :cond_7
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 988
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v7

    if-eq v7, v3, :cond_2

    goto :goto_0

    .line 994
    :cond_8
    :try_start_1
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v7

    goto :goto_3

    .line 1000
    :catch_0
    move-exception v2

    .line 1001
    .local v2, "retry":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private interruptIdleWorkers()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 738
    return-void
.end method

.method private interruptIdleWorkers(Z)V
    .locals 5
    .param p1, "onlyOne"    # Z

    .prologue
    .line 709
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 710
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 712
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 713
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 714
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    .line 715
    .local v3, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v2, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 716
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 718
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    :try_start_2
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 724
    :cond_1
    :goto_0
    if-eqz p1, :cond_0

    .line 728
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 730
    return-void

    .line 719
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_0
    move-exception v4

    .line 721
    :try_start_3
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 728
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 721
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private interruptWorkers()V
    .locals 4

    .prologue
    .line 674
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 675
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 677
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .local v2, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_1
    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v3

    goto :goto_0

    .line 685
    .end local v2    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_0
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 687
    return-void

    .line 685
    .end local v0    # "itr":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private static isRunning(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 379
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processWorkerExit(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .locals 8
    .param p1, "w"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    .param p2, "completedAbruptly"    # Z

    .prologue
    const/4 v3, 0x0

    .line 920
    if-eqz p2, :cond_0

    .line 921
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 923
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 924
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 926
    :try_start_0
    iget-wide v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v6, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 927
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 932
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 934
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 935
    .local v0, "c":I
    const/high16 v4, 0x20000000

    invoke-static {v0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 936
    if-nez p2, :cond_4

    .line 937
    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz v4, :cond_3

    move v2, v3

    .line 938
    .local v2, "min":I
    :goto_0
    if-nez v2, :cond_1

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 939
    const/4 v2, 0x1

    .line 940
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    if-lt v4, v2, :cond_4

    .line 945
    .end local v2    # "min":I
    :cond_2
    :goto_1
    return-void

    .line 929
    .end local v0    # "c":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 937
    .restart local v0    # "c":I
    :cond_3
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    goto :goto_0

    .line 943
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_1
.end method

.method private static runStateAtLeast(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    .prologue
    .line 375
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runStateLessThan(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    .prologue
    .line 371
    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runStateOf(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 361
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    return v0
.end method

.method private static workerCountOf(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 362
    const v0, 0x1fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1862
    return-void
.end method

.method public allowCoreThreadTimeOut(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1543
    if-eqz p1, :cond_0

    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1545
    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eq p1, v0, :cond_1

    .line 1546
    iput-boolean p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    .line 1547
    if-eqz p1, :cond_1

    .line 1548
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1550
    :cond_1
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    .prologue
    .line 1522
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    return v0
.end method

.method public awaitTermination(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1367
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 1368
    .local v4, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v4

    .line 1369
    .local v0, "deadline":J
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1370
    .local v2, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1372
    :try_start_0
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/high16 v7, 0x60000000

    invoke-static {v6, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1382
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v3

    .line 1378
    :cond_0
    :try_start_1
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    sub-long v4, v0, v6

    .line 1374
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 1375
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->termination:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v7, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v6, v4, v5, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 1376
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/high16 v7, 0x60000000

    invoke-static {v6, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1382
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1380
    :cond_2
    const/4 v3, 0x0

    .line 1382
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1814
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1274
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1275
    .local v0, "c":I
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v2, v3, :cond_3

    .line 1276
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1289
    :cond_1
    :goto_0
    return-void

    .line 1278
    :cond_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1280
    :cond_3
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1281
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1282
    .local v1, "recheck":I
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1283
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1284
    :cond_4
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1285
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    .line 1287
    .end local v1    # "recheck":I
    :cond_5
    invoke-direct {p0, p1, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1288
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1391
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1392
    return-void
.end method

.method public getActiveCount()I
    .locals 5

    .prologue
    .line 1718
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1719
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1721
    const/4 v2, 0x0

    .line 1722
    .local v2, "n":I
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1723
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1724
    .local v3, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1725
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1729
    .end local v3    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0    # "itr":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public getCompletedTaskCount()J
    .locals 8

    .prologue
    .line 1784
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1785
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1787
    :try_start_0
    iget-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1788
    .local v2, "n":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1790
    .local v4, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v6

    goto :goto_0

    .line 1794
    .end local v4    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_0
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    .end local v0    # "itr":Ljava/util/Iterator;
    .end local v2    # "n":J
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getCorePoolSize()I
    .locals 1

    .prologue
    .line 1478
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getKeepAliveTime(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 1618
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1741
    .local v0, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1743
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .prologue
    .line 1579
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 3

    .prologue
    .line 1699
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1700
    .local v0, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1704
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1707
    :goto_0
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1704
    :cond_0
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1707
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getQueue()Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->handler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 8

    .prologue
    .line 1758
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1759
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1761
    :try_start_0
    iget-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1762
    .local v2, "n":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1763
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1764
    .local v4, "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v2, v6

    .line 1765
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1766
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    .line 1768
    .end local v4    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    .line 1770
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v6

    .end local v0    # "itr":Ljava/util/Iterator;
    .end local v2    # "n":J
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getThreadFactory()Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->threadFactory:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method final isRunningOrShutdown(Z)Z
    .locals 2
    .param p1, "shutdownOK"    # Z

    .prologue
    .line 783
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v0

    .line 784
    .local v0, "rs":I
    const/high16 v1, -0x20000000

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 2

    .prologue
    .line 1357
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1358
    .local v0, "c":I
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onShutdown()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    .prologue
    .line 1502
    const/4 v0, 0x0

    .line 1503
    .local v0, "n":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1505
    :cond_0
    return v0
.end method

.method public prestartCoreThread()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1490
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purge()V
    .locals 7

    .prologue
    .line 1668
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .line 1670
    .local v4, "q":Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    :try_start_0
    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1671
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1672
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 1673
    .local v5, "r":Ljava/lang/Runnable;
    instance-of v6, v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    if-eqz v6, :cond_0

    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .end local v5    # "r":Ljava/lang/Runnable;
    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1674
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1676
    .end local v3    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1680
    .local v1, "fallThrough":Ljava/util/ConcurrentModificationException;
    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1681
    .local v0, "arr":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 1682
    aget-object v5, v0, v2

    .line 1683
    .local v5, "r":Ljava/lang/Object;
    instance-of v6, v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1684
    invoke-interface {v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1681
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1688
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "fallThrough":Ljava/util/ConcurrentModificationException;
    .end local v2    # "i":I
    .end local v5    # "r":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1689
    return-void
.end method

.method final reject(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 765
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->handler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;)V

    .line 766
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1652
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1653
    .local v0, "removed":Z
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1654
    return v0
.end method

.method final runWorker(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;)V
    .locals 10
    .param p1, "w"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;

    .prologue
    const-wide/16 v8, 0x1

    .line 1050
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1051
    .local v1, "task":Ljava/lang/Runnable;
    const/4 v4, 0x0

    iput-object v4, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1052
    const/4 v0, 0x1

    .line 1054
    .local v0, "completedAbruptly":Z
    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1055
    :cond_0
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    .line 1056
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->clearInterruptsForTaskRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :try_start_1
    iget-object v4, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {p0, v4, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1059
    const/4 v2, 0x0

    .line 1061
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1069
    :try_start_3
    invoke-virtual {p0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1072
    const/4 v1, 0x0

    .line 1073
    :try_start_4
    iget-wide v4, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v8

    iput-wide v4, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1074
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1079
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    throw v4

    .line 1062
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 1063
    .local v3, "x":Ljava/lang/RuntimeException;
    move-object v2, v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1069
    .end local v3    # "x":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {p0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1072
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_2
    move-exception v4

    const/4 v1, 0x0

    .line 1073
    :try_start_7
    iget-wide v6, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v6, v8

    iput-wide v6, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1074
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1064
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 1065
    .local v3, "x":Ljava/lang/Error;
    move-object v2, v3

    :try_start_8
    throw v3

    .line 1066
    .end local v3    # "x":Ljava/lang/Error;
    :catch_2
    move-exception v3

    .line 1067
    .local v3, "x":Ljava/lang/Throwable;
    move-object v2, v3

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1077
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1
    const/4 v0, 0x0

    .line 1079
    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1081
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 5
    .param p1, "corePoolSize"    # I

    .prologue
    .line 1452
    if-gez p1, :cond_0

    .line 1453
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1454
    :cond_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, p1, v3

    .line 1455
    .local v0, "delta":I
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1456
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    if-le v3, p1, :cond_2

    .line 1457
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1469
    :cond_1
    return-void

    .line 1458
    :cond_2
    if-lez v0, :cond_1

    .line 1463
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "k":I
    move v2, v1

    .line 1464
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    if-lez v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1465
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0
.end method

.method public setKeepAliveTime(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v6, 0x0

    .line 1597
    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    .line 1598
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1599
    :cond_0
    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1600
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Core threads must have nonzero keep alive times"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1601
    :cond_1
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1602
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sub-long v0, v2, v4

    .line 1603
    .local v0, "delta":J
    iput-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1604
    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    .line 1605
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1606
    :cond_2
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 1565
    if-lez p1, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge p1, v0, :cond_1

    .line 1566
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1567
    :cond_1
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1568
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    if-le v0, p1, :cond_2

    .line 1569
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1570
    :cond_2
    return-void
.end method

.method public setRejectedExecutionHandler(Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 1425
    if-nez p1, :cond_0

    .line 1426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1427
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->handler:Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .line 1428
    return-void
.end method

.method public setThreadFactory(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 1402
    if-nez p1, :cond_0

    .line 1403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1404
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->threadFactory:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .line 1405
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1300
    .local v0, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1302
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1303
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1304
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1305
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1309
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1310
    return-void

    .line 1307
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3

    .prologue
    .line 1327
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 1328
    .local v0, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1330
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1331
    const/high16 v2, 0x20000000

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1332
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    .line 1333
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1335
    .local v1, "tasks":Ljava/util/List;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1337
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1338
    return-object v1

    .line 1335
    .end local v1    # "tasks":Ljava/util/List;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected terminated()V
    .locals 0

    .prologue
    .line 1870
    return-void
.end method

.method final tryTerminate()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 611
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 612
    .local v0, "c":I
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 634
    :cond_0
    :goto_1
    return-void

    .line 616
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    goto :goto_1

    .line 621
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->mainLock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 622
    .local v1, "mainLock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 624
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    .line 626
    :try_start_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :try_start_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x60000000

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 629
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->termination:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 634
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 628
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctl:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    const/high16 v4, 0x60000000

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 629
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->termination:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V

    .line 628
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 634
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_3
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method
