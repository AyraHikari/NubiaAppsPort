.class Lcn/nubia/deskclock/ui/ClockView$8;
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
    .line 394
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$8;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 398
    .local v0, "alphaValue":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$8;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 399
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$8;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 401
    return-void
.end method
