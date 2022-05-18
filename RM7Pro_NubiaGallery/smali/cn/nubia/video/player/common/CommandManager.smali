.class public Lcn/nubia/video/player/common/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/common/CommandManager$Listener;,
        Lcn/nubia/video/player/common/CommandManager$CmdType;
    }
.end annotation


# instance fields
.field private mCommand:Lcn/nubia/video/player/common/BaseCommand;

.field private mHandler:Landroid/os/Handler;

.field private mIsExcuted:Z

.field private mListener:Lcn/nubia/video/player/common/CommandManager$Listener;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/common/CommandManager$Listener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcn/nubia/video/player/common/CommandManager;->mIsExcuted:Z

    .line 28
    new-instance v0, Lcn/nubia/video/player/common/CommandManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/common/CommandManager$1;-><init>(Lcn/nubia/video/player/common/CommandManager;)V

    iput-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mRunnable:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcn/nubia/video/player/common/CommandManager;->mListener:Lcn/nubia/video/player/common/CommandManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/BaseCommand;
    .locals 0

    .line 5
    iget-object p0, p0, Lcn/nubia/video/player/common/CommandManager;->mCommand:Lcn/nubia/video/player/common/BaseCommand;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/video/player/common/CommandManager;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcn/nubia/video/player/common/CommandManager;->mIsExcuted:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/CommandManager$Listener;
    .locals 0

    .line 5
    iget-object p0, p0, Lcn/nubia/video/player/common/CommandManager;->mListener:Lcn/nubia/video/player/common/CommandManager$Listener;

    return-object p0
.end method

.method private isExcuted()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcn/nubia/video/player/common/CommandManager;->mIsExcuted:Z

    return v0
.end method


# virtual methods
.method public addCommand(Lcn/nubia/video/player/common/BaseCommand;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mCommand:Lcn/nubia/video/player/common/BaseCommand;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/video/player/common/CommandManager;->isExcuted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mCommand:Lcn/nubia/video/player/common/BaseCommand;

    invoke-virtual {v0}, Lcn/nubia/video/player/common/BaseCommand;->needExcuteImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcn/nubia/video/player/common/CommandManager;->mIsExcuted:Z

    .line 53
    iput-object p1, p0, Lcn/nubia/video/player/common/CommandManager;->mCommand:Lcn/nubia/video/player/common/BaseCommand;

    .line 54
    iget-object p1, p0, Lcn/nubia/video/player/common/CommandManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object p1, p0, Lcn/nubia/video/player/common/CommandManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCommand()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/common/CommandManager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
