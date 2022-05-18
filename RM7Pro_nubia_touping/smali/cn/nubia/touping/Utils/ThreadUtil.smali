.class public Lcn/nubia/touping/Utils/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ThreadUtil]"

.field private static sWorkHandler:Landroid/os/Handler;

.field private static sWorkThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static create()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "[ThreadUtil]"

    const-string v1, "create"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "work-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    .line 19
    sget-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method public static postDelaydToWorkThread(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 28
    sget-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

.method public static postToWorkThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    sget-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method

.method public static release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v0, "[ThreadUtil]"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 35
    sput-object v2, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkHandler:Landroid/os/Handler;

    .line 36
    sput-object v2, Lcn/nubia/touping/Utils/ThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    .line 37
    return-void
.end method
