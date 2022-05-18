.class Lcn/nubia/deskclock/ui/StopWatchClockView$15;
.super Ljava/lang/Object;
.source "StopWatchClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;->setResetAnimation()V
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
    .line 418
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$15;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 421
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$15;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->access$702(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F

    .line 422
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$15;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->invalidate()V

    .line 423
    return-void
.end method
