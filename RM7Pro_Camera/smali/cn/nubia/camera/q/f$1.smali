.class Lcn/nubia/camera/q/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/f;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/camera/q/f$1;->a:Lcn/nubia/camera/q/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/q/f$1;->a:Lcn/nubia/camera/q/f;

    invoke-static {p1}, Lcn/nubia/camera/q/f;->a(Lcn/nubia/camera/q/f;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcn/nubia/camera/q/f$1;->a:Lcn/nubia/camera/q/f;

    invoke-static {p1}, Lcn/nubia/camera/q/f;->a(Lcn/nubia/camera/q/f;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/f$1;->a:Lcn/nubia/camera/q/f;

    invoke-static {p1}, Lcn/nubia/camera/q/f;->a(Lcn/nubia/camera/q/f;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcn/nubia/camera/q/f$1;->a:Lcn/nubia/camera/q/f;

    invoke-static {p1}, Lcn/nubia/camera/q/f;->a(Lcn/nubia/camera/q/f;)Landroid/view/View;

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
    .locals 0

    return-void
.end method
