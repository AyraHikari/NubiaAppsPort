.class public Lcn/nubia/videogenerator/slidemake/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;,
        Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;,
        Lcn/nubia/videogenerator/slidemake/ThreadPool$CancelListener;,
        Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContextStub;,
        Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;,
        Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I


# instance fields
.field mCpuCounter:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContextStub;-><init>(Lcn/nubia/videogenerator/slidemake/ThreadPool$1;)V

    sput-object v0, Lcn/nubia/videogenerator/slidemake/ThreadPool;->JOB_CONTEXT_STUB:Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool;->mCpuCounter:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    .line 38
    new-instance v0, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool;->mNetworkCounter:Lcn/nubia/videogenerator/slidemake/ThreadPool$ResourceCounter;

    .line 81
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;

    const-string v1, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v9, v1, v2}, Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public submit(Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;)Lcn/nubia/videogenerator/slidemake/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/nubia/videogenerator/slidemake/ThreadPool$Job<",
            "TT;>;)",
            "Lcn/nubia/videogenerator/slidemake/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0}, Lcn/nubia/videogenerator/slidemake/ThreadPool;->submit(Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/nubia/videogenerator/slidemake/ThreadPool$Job<",
            "TT;>;",
            "Lcn/nubia/videogenerator/slidemake/FutureListener<",
            "TT;>;)",
            "Lcn/nubia/videogenerator/slidemake/Future<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/ThreadPool$Worker;-><init>(Lcn/nubia/videogenerator/slidemake/ThreadPool;Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;Lcn/nubia/videogenerator/slidemake/FutureListener;)V

    .line 92
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
