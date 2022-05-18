.class Lcn/nubia/collage/ui/CollageShareActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageShareActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/CollageShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/CollageShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const v0, 0x7f07019f

    const v1, 0x7f0701a0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->a(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->b(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->f(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->b(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->a(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->f(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->a(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$d;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageShareActivity;->b(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
