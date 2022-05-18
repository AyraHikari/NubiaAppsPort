.class Lcom/android/common/ui/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/f;->j()V
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

    .line 270
    iput-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 280
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->a(Lcom/android/common/ui/f;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/common/ui/f;->a(Lcom/android/common/ui/f;Z)Z

    .line 281
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->a(Lcom/android/common/ui/f;)Z

    move-result p1

    const/4 v0, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->d(Lcom/android/common/ui/f;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->d(Lcom/android/common/ui/f;)I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->d(Lcom/android/common/ui/f;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->b(Lcom/android/common/ui/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->c(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->b(Lcom/android/common/ui/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->d(Lcom/android/common/ui/f;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->d(Lcom/android/common/ui/f;)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->d(Lcom/android/common/ui/f;)I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 289
    :cond_3
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->c(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-virtual {p1}, Lcom/android/common/ui/f;->c()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 273
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->b(Lcom/android/common/ui/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->c(Lcom/android/common/ui/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/android/common/ui/f$2;->a:Lcom/android/common/ui/f;

    invoke-virtual {p1}, Lcom/android/common/ui/f;->b()V

    return-void
.end method
