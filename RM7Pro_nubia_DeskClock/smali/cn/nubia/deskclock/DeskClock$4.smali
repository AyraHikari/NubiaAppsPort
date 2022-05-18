.class Lcn/nubia/deskclock/DeskClock$4;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/DeskClock;->onResume()V
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
    .line 512
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$4;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$4;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$100(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/control/AnimationClockManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->updateDate()V

    .line 519
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$4;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$100(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/control/AnimationClockManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->updateDate()V

    .line 520
    return v2
.end method
