.class Lcn/nubia/collage/CollageActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/CollageActivity;->m0()V
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

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->z(Lcn/nubia/collage/CollageActivity;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->A(Lcn/nubia/collage/CollageActivity;I)I

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->z(Lcn/nubia/collage/CollageActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->B(Lcn/nubia/collage/CollageActivity;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "tag_poster"

    invoke-static {p1, v0, v1}, Lcn/nubia/collage/CollageActivity;->D(Lcn/nubia/collage/CollageActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->Q(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->Q(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/i;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {v0}, Lcn/nubia/collage/CollageActivity;->z(Lcn/nubia/collage/CollageActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/collage/i;->t(I)V

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->E(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->F(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->G(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$l;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
