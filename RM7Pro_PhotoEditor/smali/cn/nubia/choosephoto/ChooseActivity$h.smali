.class Lcn/nubia/choosephoto/ChooseActivity$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ChooseActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ChooseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->t(Lcn/nubia/choosephoto/ChooseActivity;)I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcn/nubia/choosephoto/ui/a;

    invoke-direct {p1}, Lcn/nubia/choosephoto/ui/a;-><init>()V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->k(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/choosephoto/ui/b$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/choosephoto/ui/b;->b(Lcn/nubia/choosephoto/ui/b$a;)V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->h(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/choosephoto/ui/a;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/nubia/choosephoto/ChooseActivity;->l(Lcn/nubia/choosephoto/ChooseActivity;Landroid/support/v4/app/Fragment;Z)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1, v1}, Lcn/nubia/choosephoto/ChooseActivity;->u(Lcn/nubia/choosephoto/ChooseActivity;I)I

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->q(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/choosephoto/ChooseActivity;->n(Lcn/nubia/choosephoto/ChooseActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->q(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$h;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->s(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
