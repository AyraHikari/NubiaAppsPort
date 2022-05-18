.class Lcn/nubia/deskclock/ui/ClockView$21;
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
    .line 600
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$21;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 604
    .local v0, "currentTime":J
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView$21;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView$21;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-static {v4, v0, v1}, Lcn/nubia/deskclock/ui/ClockView;->access$1600(Lcn/nubia/deskclock/ui/ClockView;J)F

    move-result v4

    add-float/2addr v2, v4

    invoke-static {v3, v2}, Lcn/nubia/deskclock/ui/ClockView;->access$1502(Lcn/nubia/deskclock/ui/ClockView;F)F

    .line 605
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$21;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 606
    return-void
.end method
