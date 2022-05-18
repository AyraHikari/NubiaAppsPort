.class Lcn/nubia/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 825
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 826
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->e()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 802
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 803
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 804
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 805
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 806
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 807
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-virtual {p1}, Lcn/nubia/a/b;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 808
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;Lcn/nubia/a/d;)Lcn/nubia/a/d;

    .line 809
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->q(Lcn/nubia/a/b;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 814
    :cond_0
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 815
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 790
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->p(Lcn/nubia/a/b;)V

    .line 791
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 792
    iget-object p1, p0, Lcn/nubia/a/b$3;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->d()V

    :cond_0
    return-void
.end method
