.class Lcn/nubia/deskclock/DeskClock$2;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/DeskClock;->executeExtraDataFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 416
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$2;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock$2;->this$0:Lcn/nubia/deskclock/DeskClock;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;-><init>(Lcn/nubia/deskclock/DeskClock;Lcn/nubia/deskclock/DeskClock$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 420
    const/4 v0, 0x0

    return v0
.end method
