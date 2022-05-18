.class Lcom/android/common/ui/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/a;->a(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/a;


# direct methods
.method constructor <init>(Lcom/android/common/ui/a;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 329
    invoke-static {p1}, Lcom/android/common/ui/a;->a(Z)Z

    .line 330
    iget-object v0, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v0, p1}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Z)Z

    .line 331
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->g(Lcom/android/common/ui/a;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->b(Lcom/android/common/ui/a;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 314
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    const-string v0, "hide onAnimationEnd"

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->i(Lcom/android/common/ui/a;)Lcom/android/common/ui/k$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->i(Lcom/android/common/ui/a;)Lcom/android/common/ui/k$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/common/ui/k$a;->a()V

    :cond_0
    const/4 p1, 0x0

    .line 318
    invoke-static {p1}, Lcom/android/common/ui/a;->a(Z)Z

    .line 319
    iget-object v0, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v0, p1}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Z)Z

    .line 320
    iget-object v0, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 322
    iget-object v0, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->g(Lcom/android/common/ui/a;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->b(Lcom/android/common/ui/a;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 297
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    const-string v0, "hide onAnimationStart"

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-virtual {p1}, Lcom/android/common/ui/a;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-virtual {p1}, Lcom/android/common/ui/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    iget-object p1, p1, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    iget-object v0, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->b(Lcom/android/common/ui/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 300
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    iget-object v0, p1, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {v1}, Lcom/android/common/ui/a;->b(Lcom/android/common/ui/a;)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/android/common/ui/a$3;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
