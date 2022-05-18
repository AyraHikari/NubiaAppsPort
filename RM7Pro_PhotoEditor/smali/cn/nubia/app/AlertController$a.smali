.class Lcn/nubia/app/AlertController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {v0}, Lcn/nubia/app/AlertController;->a(Lcn/nubia/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {v0}, Lcn/nubia/app/AlertController;->b(Lcn/nubia/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->b(Lcn/nubia/app/AlertController;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {v0}, Lcn/nubia/app/AlertController;->k(Lcn/nubia/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {v0}, Lcn/nubia/app/AlertController;->l(Lcn/nubia/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->l(Lcn/nubia/app/AlertController;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {v0}, Lcn/nubia/app/AlertController;->m(Lcn/nubia/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->n(Lcn/nubia/app/AlertController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->n(Lcn/nubia/app/AlertController;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->p(Lcn/nubia/app/AlertController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/app/AlertController$a;->a:Lcn/nubia/app/AlertController;

    invoke-static {v1}, Lcn/nubia/app/AlertController;->o(Lcn/nubia/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
