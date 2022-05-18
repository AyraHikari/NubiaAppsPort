.class Lcn/nubia/commonui/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$000(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 142
    :goto_0
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$700(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v2}, Lcn/nubia/commonui/app/AlertController;->access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$200(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$400(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$1;->a:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
