.class public Lcn/nubia/music/app/task/MinPriorityThreadPool;
.super Lcn/nubia/music/app/task/ThreadPool;
.source "MinPriorityThreadPool.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MinPriorityThreadPool"

.field private static instance:Lcn/nubia/music/app/task/MinPriorityThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 9
    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, v2

    move v6, v2

    invoke-direct/range {v1 .. v6}, Lcn/nubia/music/app/task/ThreadPool;-><init>(IIJI)V

    .line 10
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcn/nubia/music/app/task/MinPriorityThreadPool;->getInstance()Lcn/nubia/music/app/task/MinPriorityThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/app/task/MinPriorityThreadPool;->purge()V

    .line 31
    invoke-static {}, Lcn/nubia/music/app/task/MinPriorityThreadPool;->getInstance()Lcn/nubia/music/app/task/MinPriorityThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/app/task/MinPriorityThreadPool;->shutdown()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/app/task/MinPriorityThreadPool;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcn/nubia/music/app/task/MinPriorityThreadPool;->instance:Lcn/nubia/music/app/task/MinPriorityThreadPool;

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcn/nubia/music/app/task/MinPriorityThreadPool;->instance:Lcn/nubia/music/app/task/MinPriorityThreadPool;

    .line 21
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-class v1, Lcn/nubia/music/app/task/MinPriorityThreadPool;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/task/MinPriorityThreadPool;->instance:Lcn/nubia/music/app/task/MinPriorityThreadPool;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcn/nubia/music/app/task/MinPriorityThreadPool;

    invoke-direct {v0}, Lcn/nubia/music/app/task/MinPriorityThreadPool;-><init>()V

    sput-object v0, Lcn/nubia/music/app/task/MinPriorityThreadPool;->instance:Lcn/nubia/music/app/task/MinPriorityThreadPool;

    .line 20
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-object v0, Lcn/nubia/music/app/task/MinPriorityThreadPool;->instance:Lcn/nubia/music/app/task/MinPriorityThreadPool;

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static submit(Lcn/nubia/music/app/task/Job;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcn/nubia/music/app/task/MinPriorityThreadPool;->getInstance()Lcn/nubia/music/app/task/MinPriorityThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/music/app/task/MinPriorityThreadPool;->put(Lcn/nubia/music/app/task/Job;)V

    .line 27
    return-void
.end method
