.class Lcn/nubia/camera/at/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/b$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/b$2;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

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

    .line 353
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;Z)Z

    .line 354
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;Z)Z

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->c(Lcn/nubia/camera/at/b;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 357
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->d(Lcn/nubia/camera/at/b;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 359
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->f(Lcn/nubia/camera/at/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 360
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/at/b$a;->d()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 341
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;Z)Z

    .line 343
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->f(Lcn/nubia/camera/at/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcn/nubia/camera/at/b$2$1;->a:Lcn/nubia/camera/at/b$2;

    iget-object p1, p1, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/at/b$a;->c()V

    :cond_0
    return-void
.end method
