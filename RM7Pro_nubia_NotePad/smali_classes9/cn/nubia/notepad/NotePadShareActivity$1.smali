.class Lcn/nubia/notepad/NotePadShareActivity$1;
.super Ljava/lang/Object;
.source "NotePadShareActivity.java"

# interfaces
.implements Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadShareActivity;->OnPositiveButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 6

    .prologue
    .line 176
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$000(Lcn/nubia/notepad/NotePadShareActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$200(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "dismissProgressMsg":Landroid/os/Message;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    .end local v0    # "dismissProgressMsg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, "msgShareNote":Landroid/os/Message;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    return-void
.end method

.method public onSucceed()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$000(Lcn/nubia/notepad/NotePadShareActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "dismissProgressMsg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$200(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    .end local v0    # "dismissProgressMsg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$1;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/notepad/utils/Util;->shareNoteWithNubiaService(Landroid/content/Context;)V

    .line 172
    return-void
.end method
