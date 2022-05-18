.class Lcom/zte/mifavor/widget/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$000(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$100(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$100(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$200(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$300(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$300(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$400(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$500(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$500(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$700(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$1;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p0}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
