.class Lcn/nubia/deskclock/ui/ClockView$15;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockView;->buildHandsAndDialEnterAnimatorSet(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 491
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$15;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 494
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$15;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/ui/ClockView;->access$902(Lcn/nubia/deskclock/ui/ClockView;F)F

    .line 495
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView$15;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 496
    return-void
.end method
