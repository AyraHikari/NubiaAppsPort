.class Lcn/nubia/camera/at/e$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e$9;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e$9;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcn/nubia/camera/at/e$9$1;->a:Lcn/nubia/camera/at/e$9;

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

    .line 464
    iget-object p1, p0, Lcn/nubia/camera/at/e$9$1;->a:Lcn/nubia/camera/at/e$9;

    iget-object p1, p1, Lcn/nubia/camera/at/e$9;->b:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->l(Lcn/nubia/camera/at/e;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object p1, p0, Lcn/nubia/camera/at/e$9$1;->a:Lcn/nubia/camera/at/e$9;

    iget-object p1, p1, Lcn/nubia/camera/at/e$9;->b:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->l(Lcn/nubia/camera/at/e;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 458
    iget-object p1, p0, Lcn/nubia/camera/at/e$9$1;->a:Lcn/nubia/camera/at/e$9;

    iget-object p1, p1, Lcn/nubia/camera/at/e$9;->b:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->l(Lcn/nubia/camera/at/e;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Lcn/nubia/camera/at/e$9$1;->a:Lcn/nubia/camera/at/e$9;

    iget-object p1, p1, Lcn/nubia/camera/at/e$9;->b:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->l(Lcn/nubia/camera/at/e;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/at/e$9$1;->a:Lcn/nubia/camera/at/e$9;

    iget-object v0, v0, Lcn/nubia/camera/at/e$9;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
