.class Lcn/nubia/choosephoto/ChooseActivity$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/choosephoto/ChooseActivity;
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

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->f(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/app/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/app/c;->a()V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->g(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/choosephoto/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/choosephoto/ChooseActivity;->p(Lcn/nubia/choosephoto/ChooseActivity;Lcn/nubia/choosephoto/a;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->q(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->s(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$b;->a:Lcn/nubia/choosephoto/ChooseActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/choosephoto/ChooseActivity;->u(Lcn/nubia/choosephoto/ChooseActivity;I)I

    :goto_0
    return-void
.end method
