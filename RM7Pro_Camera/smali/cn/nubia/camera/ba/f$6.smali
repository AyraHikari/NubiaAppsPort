.class Lcn/nubia/camera/ba/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ba/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->l(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->l(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->l(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->l(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 504
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->m(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->m(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->m(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 508
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->m(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 510
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->h(Lcn/nubia/camera/ba/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->f(Lcn/nubia/camera/ba/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 512
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 513
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->f(Lcn/nubia/camera/ba/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "notifyListenersHide(Cancel)"

    .line 516
    invoke-static {v0}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->i(Lcn/nubia/camera/ba/f;)I

    move-result v0

    if-nez v0, :cond_4

    .line 518
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->j(Lcn/nubia/camera/ba/f;)V

    goto :goto_0

    .line 519
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->i(Lcn/nubia/camera/ba/f;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 520
    iget-object v0, p0, Lcn/nubia/camera/ba/f$6;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->k(Lcn/nubia/camera/ba/f;)V

    :cond_5
    :goto_0
    return-void
.end method
