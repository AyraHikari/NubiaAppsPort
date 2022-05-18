.class Lcn/nubia/deskclock/ui/CountDownView$12;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->createInnerAlphaAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 582
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$12;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 587
    .local v0, "fra":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$12;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setAlpha(F)V

    .line 588
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$12;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->invalidate()V

    .line 589
    return-void
.end method
