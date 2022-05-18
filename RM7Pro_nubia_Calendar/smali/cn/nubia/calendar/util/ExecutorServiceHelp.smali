.class public Lcn/nubia/calendar/util/ExecutorServiceHelp;
.super Ljava/lang/Object;
.source "ExecutorServiceHelp.java"


# static fields
.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/util/ExecutorServiceHelp;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcn/nubia/calendar/util/ExecutorServiceHelp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/calendar/util/ExecutorServiceHelp;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/ExecutorServiceHelp;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 18
    :cond_0
    sget-object v0, Lcn/nubia/calendar/util/ExecutorServiceHelp;->threadPool:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
