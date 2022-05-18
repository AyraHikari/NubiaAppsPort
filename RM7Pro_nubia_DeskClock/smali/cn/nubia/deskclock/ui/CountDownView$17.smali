.class Lcn/nubia/deskclock/ui/CountDownView$17;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->startReSetAnimator()V
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
    .line 669
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$17;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 687
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 677
    invoke-static {}, Lcn/nubia/deskclock/database/CountDownSPUtils;->getIsResetCountDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$17;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$17;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1800(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setScaleFraction(F)V

    .line 679
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$17;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->getResetTimeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 680
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setIsResetCountDown(Z)V

    .line 682
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 692
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 673
    return-void
.end method
