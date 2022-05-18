.class public Lcn/nubia/music/app/task/JobManager;
.super Lcn/nubia/music/app/task/ThreadPool;
.source "JobManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JobManager"

.field private static instance:Lcn/nubia/music/app/task/JobManager;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 8
    const/4 v2, 0x2

    const/16 v3, 0x8

    const-wide/16 v4, 0x3

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/music/app/task/ThreadPool;-><init>(IIJI)V

    .line 9
    return-void
.end method

.method public static clear(Lcn/nubia/music/app/task/Job;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcn/nubia/music/app/task/JobManager;->getInstance()Lcn/nubia/music/app/task/JobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/music/app/task/JobManager;->remove(Lcn/nubia/music/app/task/Job;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/app/task/JobManager;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcn/nubia/music/app/task/JobManager;->instance:Lcn/nubia/music/app/task/JobManager;

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lcn/nubia/music/app/task/JobManager;->instance:Lcn/nubia/music/app/task/JobManager;

    .line 20
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const-class v1, Lcn/nubia/music/app/task/JobManager;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/task/JobManager;->instance:Lcn/nubia/music/app/task/JobManager;

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcn/nubia/music/app/task/JobManager;

    invoke-direct {v0}, Lcn/nubia/music/app/task/JobManager;-><init>()V

    sput-object v0, Lcn/nubia/music/app/task/JobManager;->instance:Lcn/nubia/music/app/task/JobManager;

    .line 19
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcn/nubia/music/app/task/JobManager;->instance:Lcn/nubia/music/app/task/JobManager;

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcn/nubia/music/app/task/JobManager;->getInstance()Lcn/nubia/music/app/task/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/app/task/JobManager;->shutdown()V

    .line 33
    return-void
.end method

.method public static submit(Lcn/nubia/music/app/task/Job;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcn/nubia/music/app/task/JobManager;->getInstance()Lcn/nubia/music/app/task/JobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/music/app/task/JobManager;->put(Lcn/nubia/music/app/task/Job;)V

    .line 25
    return-void
.end method
