.class Lcn/nubia/deskclock/ui/StopWatchClockView$11;
.super Ljava/lang/Object;
.source "StopWatchClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;->setExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;

    .prologue
    .line 356
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$11;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 359
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$11;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->access$202(Lcn/nubia/deskclock/ui/StopWatchClockView;I)I

    .line 360
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$11;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->invalidate()V

    .line 361
    return-void
.end method
