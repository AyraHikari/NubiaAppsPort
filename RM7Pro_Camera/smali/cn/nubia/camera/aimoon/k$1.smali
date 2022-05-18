.class Lcn/nubia/camera/aimoon/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/k;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/k;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

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

    .line 275
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/aimoon/k;->a(Lcn/nubia/camera/aimoon/k;Z)Z

    .line 277
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/aimoon/k;->a(Lcn/nubia/camera/aimoon/k;J)Z

    .line 279
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->e(Lcn/nubia/camera/aimoon/k;)Lcn/nubia/camera/aimoon/k$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->f(Lcn/nubia/camera/aimoon/k;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 280
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->e(Lcn/nubia/camera/aimoon/k;)Lcn/nubia/camera/aimoon/k$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/aimoon/k$a;->c()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/aimoon/k;->a(Lcn/nubia/camera/aimoon/k;Z)Z

    .line 260
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1, v0}, Lcn/nubia/camera/aimoon/k;->b(Lcn/nubia/camera/aimoon/k;Z)Z

    .line 262
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->a(Lcn/nubia/camera/aimoon/k;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->b(Lcn/nubia/camera/aimoon/k;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->c(Lcn/nubia/camera/aimoon/k;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 266
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->d(Lcn/nubia/camera/aimoon/k;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 268
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->e(Lcn/nubia/camera/aimoon/k;)Lcn/nubia/camera/aimoon/k$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->f(Lcn/nubia/camera/aimoon/k;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k$1;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/k;->e(Lcn/nubia/camera/aimoon/k;)Lcn/nubia/camera/aimoon/k$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/aimoon/k$a;->a()V

    :cond_0
    return-void
.end method
