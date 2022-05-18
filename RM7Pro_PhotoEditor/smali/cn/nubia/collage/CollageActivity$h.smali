.class Lcn/nubia/collage/CollageActivity$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/CollageActivity;->h0()V
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

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->g(Lcn/nubia/collage/CollageActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->k(Lcn/nubia/collage/CollageActivity;)V

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->f(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/ui/CollageView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->o(Lcn/nubia/collage/CollageActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->f(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/ui/CollageView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {v0}, Lcn/nubia/collage/CollageActivity;->o(Lcn/nubia/collage/CollageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/collage/ui/CollageView;->setEditText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->p(Lcn/nubia/collage/CollageActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$h;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->r(Lcn/nubia/collage/CollageActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
