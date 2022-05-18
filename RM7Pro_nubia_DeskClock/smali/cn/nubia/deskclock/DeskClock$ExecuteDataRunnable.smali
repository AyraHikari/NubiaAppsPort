.class Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteDataRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClock;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/DeskClock;Lcn/nubia/deskclock/DeskClock$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/DeskClock;
    .param p2, "x1"    # Lcn/nubia/deskclock/DeskClock$1;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$300(Lcn/nubia/deskclock/DeskClock;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$400(Lcn/nubia/deskclock/DeskClock;)V

    .line 433
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$500(Lcn/nubia/deskclock/DeskClock;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 434
    return-void
.end method
