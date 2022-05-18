.class Lcn/nubia/i/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/f;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcn/nubia/i/f$8;->a:Lcn/nubia/i/f;

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

    .line 443
    iget-object p1, p0, Lcn/nubia/i/f$8;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object p1, p0, Lcn/nubia/i/f$8;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcn/nubia/i/f$8;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
