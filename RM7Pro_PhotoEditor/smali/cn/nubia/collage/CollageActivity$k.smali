.class Lcn/nubia/collage/CollageActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/CollageActivity;->i0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/CollageActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    iput-boolean p2, p0, Lcn/nubia/collage/CollageActivity$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-boolean p1, p0, Lcn/nubia/collage/CollageActivity$k;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->v(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f070134

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f070254

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$k;->b:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->y(Lcn/nubia/collage/CollageActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
