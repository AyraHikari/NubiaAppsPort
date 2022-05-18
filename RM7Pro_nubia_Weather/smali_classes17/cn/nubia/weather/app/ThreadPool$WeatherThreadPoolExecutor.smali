.class Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/app/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherThreadPoolExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/app/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/app/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8
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
    .line 103
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;->this$0:Lcn/nubia/weather/app/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 104
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/app/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
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
    .line 108
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;->this$0:Lcn/nubia/weather/app/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 109
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/app/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 10
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
    .line 120
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;->this$0:Lcn/nubia/weather/app/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 121
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/app/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
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
    .line 114
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;->this$0:Lcn/nubia/weather/app/ThreadPool;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 115
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
