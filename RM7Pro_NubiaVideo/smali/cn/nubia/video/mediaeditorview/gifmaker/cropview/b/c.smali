.class public Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c$a;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->a:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;

    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;

    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;->a()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;

    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;->b()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {v0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/b;->c(F)V

    return-void
.end method
