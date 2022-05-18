.class Lcom/android/common/ui/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/f;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/f;


# direct methods
.method constructor <init>(Lcom/android/common/ui/f;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 343
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->e(Lcom/android/common/ui/f;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/common/ui/f;->b(Lcom/android/common/ui/f;Z)Z

    .line 344
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->e(Lcom/android/common/ui/f;)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->f(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->f(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->f(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->f(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 336
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->e(Lcom/android/common/ui/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/android/common/ui/f$3;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->f(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
