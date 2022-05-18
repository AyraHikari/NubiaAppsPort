.class Lcn/nubia/deskclock/ui/ClockView$19;
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
    .line 551
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 554
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 555
    .local v0, "angleValue":F
    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-static {v5}, Lcn/nubia/deskclock/ui/ClockView;->access$1100(Lcn/nubia/deskclock/ui/ClockView;)F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_0

    .line 556
    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-static {v5, v0}, Lcn/nubia/deskclock/ui/ClockView;->access$1102(Lcn/nubia/deskclock/ui/ClockView;F)F

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 558
    .local v2, "curTime":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 559
    .local v1, "date":Ljava/util/Date;
    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v6

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcn/nubia/deskclock/ui/ClockView;->access$1200(Lcn/nubia/deskclock/ui/ClockView;II)V

    .line 560
    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v5, v5, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v5, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 561
    .local v4, "temp":F
    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v5, v5, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    add-float v6, v4, v0

    iput v6, v5, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 562
    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView$19;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 564
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "curTime":J
    .end local v4    # "temp":F
    :cond_0
    return-void
.end method
