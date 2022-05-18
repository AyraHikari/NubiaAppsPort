.class public Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeskclockThreadPoolExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8
    .param p1, "this$0"    # Lcn/nubia/deskclock/util/ThreadPool;
    .param p2, "corePoolSize"    # I
    .param p3, "maximumPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;->this$0:Lcn/nubia/deskclock/util/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 61
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "this$0"    # Lcn/nubia/deskclock/util/ThreadPool;
    .param p2, "corePoolSize"    # I
    .param p3, "maximumPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;->this$0:Lcn/nubia/deskclock/util/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 56
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 10
    .param p1, "this$0"    # Lcn/nubia/deskclock/util/ThreadPool;
    .param p2, "corePoolSize"    # I
    .param p3, "maximumPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;->this$0:Lcn/nubia/deskclock/util/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 50
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "this$0"    # Lcn/nubia/deskclock/util/ThreadPool;
    .param p2, "corePoolSize"    # I
    .param p3, "maximumPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p9, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;->this$0:Lcn/nubia/deskclock/util/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 43
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 45
    return-void
.end method
