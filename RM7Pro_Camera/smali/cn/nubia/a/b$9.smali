.class Lcn/nubia/a/b$9;
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

    .line 620
    iput-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 635
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 636
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 637
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 638
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->c()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 624
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 625
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->m(Lcn/nubia/a/b;)V

    .line 626
    iget-object p1, p0, Lcn/nubia/a/b$9;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->b()V

    return-void
.end method
