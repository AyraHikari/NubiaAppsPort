.class public Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$FinalizableDelegatedExecutorService;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callable(Ljava/lang/Runnable;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 353
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 340
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static callable(Ljava/security/PrivilegedAction;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "action"    # Ljava/security/PrivilegedAction;

    .prologue
    .line 364
    if-nez p0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 366
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$1;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$1;-><init>(Ljava/security/PrivilegedAction;)V

    return-object v0
.end method

.method public static callable(Ljava/security/PrivilegedExceptionAction;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "action"    # Ljava/security/PrivilegedExceptionAction;

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 381
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$2;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$2;-><init>(Ljava/security/PrivilegedExceptionAction;)V

    return-object v0
.end method

.method public static defaultThreadFactory()Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    return-object v0
.end method

.method public static newCachedThreadPool()Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 150
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->SECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;)V

    return-object v1
.end method

.method public static newCachedThreadPool(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 165
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->SECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;-><init>()V

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public static newFixedThreadPool(I)Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 8
    .param p0, "nThreads"    # I

    .prologue
    .line 60
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;)V

    return-object v1
.end method

.method public static newFixedThreadPool(ILedu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "nThreads"    # I
    .param p1, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 85
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, p0

    move v3, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public static newScheduledThreadPool(I)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "corePoolSize"    # I

    .prologue
    .line 219
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-object v0
.end method

.method public static newScheduledThreadPool(ILedu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "corePoolSize"    # I
    .param p1, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 235
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILedu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static newSingleThreadExecutor()Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$FinalizableDelegatedExecutorService;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$FinalizableDelegatedExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static newSingleThreadExecutor(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    const/4 v2, 0x1

    .line 126
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$FinalizableDelegatedExecutorService;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$FinalizableDelegatedExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor()Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;
    .locals 3
    .param p0, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 206
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILedu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static privilegedCallable(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 400
    if-nez p0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 402
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static privilegedCallableUsingCurrentClassLoader(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 424
    if-nez p0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static privilegedThreadFactory()Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 324
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;-><init>()V

    return-object v0
.end method

.method public static unconfigurableExecutorService(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 252
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static unconfigurableScheduledExecutorService(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 268
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method
