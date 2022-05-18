.class Lcn/nubia/choosephoto/ChooseActivity$i;
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

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->t(Lcn/nubia/choosephoto/ChooseActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/choosephoto/ChooseActivity;->p(Lcn/nubia/choosephoto/ChooseActivity;Lcn/nubia/choosephoto/a;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->q(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v1}, Lcn/nubia/choosephoto/ChooseActivity;->m(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v1}, Lcn/nubia/choosephoto/ChooseActivity;->s(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/choosephoto/ChooseActivity;->u(Lcn/nubia/choosephoto/ChooseActivity;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->t(Lcn/nubia/choosephoto/ChooseActivity;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$i;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
