.class Lcn/nubia/collage/CollageActivity$n;
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

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->z(Lcn/nubia/collage/CollageActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->H(Lcn/nubia/collage/CollageActivity;)I

    move-result p1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/filtershow/utils/b;->o(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->A(Lcn/nubia/collage/CollageActivity;I)I

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->z(Lcn/nubia/collage/CollageActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->B(Lcn/nubia/collage/CollageActivity;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "tag_join"

    invoke-static {p1, v0, v1}, Lcn/nubia/collage/CollageActivity;->D(Lcn/nubia/collage/CollageActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->Q(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/i;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {v0}, Lcn/nubia/collage/CollageActivity;->z(Lcn/nubia/collage/CollageActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/collage/i;->t(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->G(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->F(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->E(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$n;->a:Lcn/nubia/collage/CollageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
