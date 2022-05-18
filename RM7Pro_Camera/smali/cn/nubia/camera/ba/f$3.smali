.class Lcn/nubia/camera/ba/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/f;->g()V
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

    .line 374
    iput-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

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

    .line 383
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 384
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->f(Lcn/nubia/camera/ba/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "notifyListenersHide(animEnd)"

    .line 387
    invoke-static {p1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->i(Lcn/nubia/camera/ba/f;)I

    move-result p1

    if-nez p1, :cond_0

    .line 389
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->j(Lcn/nubia/camera/ba/f;)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->i(Lcn/nubia/camera/ba/f;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 391
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->k(Lcn/nubia/camera/ba/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lcn/nubia/camera/ba/f$3;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->f(Lcn/nubia/camera/ba/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
