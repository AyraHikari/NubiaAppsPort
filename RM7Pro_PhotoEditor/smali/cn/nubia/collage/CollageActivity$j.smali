.class Lcn/nubia/collage/CollageActivity$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/CollageActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->u(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->u(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->v(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->t(Lcn/nubia/collage/CollageActivity;Z)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->x(Lcn/nubia/collage/CollageActivity;Z)Z

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$j;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {p1}, Lcn/nubia/collage/CollageActivity;->a()V

    :cond_0
    return-void
.end method
