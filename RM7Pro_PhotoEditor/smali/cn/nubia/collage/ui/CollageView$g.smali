.class Lcn/nubia/collage/ui/CollageView$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageView;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/CollageView;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/CollageView;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView$g;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$g;->a:Lcn/nubia/collage/ui/CollageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/collage/ui/CollageView;->d(Lcn/nubia/collage/ui/CollageView;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$g;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->u(Lcn/nubia/collage/ui/CollageView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$g;->a:Lcn/nubia/collage/ui/CollageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/collage/ui/CollageView;->d(Lcn/nubia/collage/ui/CollageView;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$g;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->u(Lcn/nubia/collage/ui/CollageView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$g;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->u(Lcn/nubia/collage/ui/CollageView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
