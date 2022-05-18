.class Lcn/nubia/camera/zoom/arc/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

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

    .line 453
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->k(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 454
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->m(Lcn/nubia/camera/zoom/arc/a;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->l(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 457
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->l(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

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

    .line 442
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->k(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 443
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->l(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 444
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->l(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$4;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->m(Lcn/nubia/camera/zoom/arc/a;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
