.class Lcn/nubia/camera/at/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/b;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

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

    .line 293
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;Z)Z

    .line 295
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;J)V

    .line 297
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->f(Lcn/nubia/camera/at/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/at/b$a;->b()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;Z)Z

    .line 278
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;Z)Z

    .line 280
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->c(Lcn/nubia/camera/at/b;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 284
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->d(Lcn/nubia/camera/at/b;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 286
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->f(Lcn/nubia/camera/at/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lcn/nubia/camera/at/b$1;->a:Lcn/nubia/camera/at/b;

    invoke-static {p1}, Lcn/nubia/camera/at/b;->e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/at/b$a;->a()V

    :cond_0
    return-void
.end method
