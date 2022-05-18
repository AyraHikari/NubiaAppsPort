.class Lcn/nubia/deskclock/ui/CountDownView$9;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->startExitAnimator()V
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
    .line 490
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$9;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 507
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 498
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$9;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$9;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setAlpha(F)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$9;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$900(Lcn/nubia/deskclock/ui/CountDownView;)V

    .line 502
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 512
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 494
    return-void
.end method
