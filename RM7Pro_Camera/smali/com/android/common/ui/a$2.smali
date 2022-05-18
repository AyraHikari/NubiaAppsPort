.class Lcom/android/common/ui/a$2;
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

    .line 260
    iput-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 290
    invoke-static {p1}, Lcom/android/common/ui/a;->a(Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    const-string v0, "show onAnimationEnd"

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 281
    invoke-static {p1}, Lcom/android/common/ui/a;->a(Z)Z

    .line 282
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 284
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 264
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    const-string v0, "show onAnimationStart"

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Z)Z

    .line 266
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->g(Lcom/android/common/ui/a;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/common/ui/a;->b(Lcom/android/common/ui/a;Z)V

    .line 268
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/android/common/ui/a$2;->a:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->h(Lcom/android/common/ui/a;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
