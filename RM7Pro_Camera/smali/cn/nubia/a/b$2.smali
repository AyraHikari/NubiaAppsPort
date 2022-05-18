.class Lcn/nubia/a/b$2;
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

    .line 743
    iput-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 777
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 778
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->e()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 759
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->l(Lcn/nubia/a/b;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 760
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->l(Lcn/nubia/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 761
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->l(Lcn/nubia/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 762
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->i(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    .line 763
    invoke-static {v0}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    invoke-virtual {v0}, Lcn/nubia/a/c;->c()I

    move-result v0

    .line 762
    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 767
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->e()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 747
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->l(Lcn/nubia/a/b;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->i(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 749
    iget-object p1, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->o(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$2;->a:Lcn/nubia/a/b;

    .line 750
    invoke-static {v0}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    invoke-virtual {v0}, Lcn/nubia/a/c;->c()I

    move-result v0

    .line 749
    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method
