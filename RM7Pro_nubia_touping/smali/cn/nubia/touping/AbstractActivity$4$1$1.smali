.class Lcn/nubia/touping/AbstractActivity$4$1$1;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity$4$1;->connectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/touping/AbstractActivity$4$1;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcn/nubia/touping/AbstractActivity$4$1;

    .prologue
    .line 441
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget v0, v0, Lcn/nubia/touping/AbstractActivity$4;->val$currentI:I

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget v1, v1, Lcn/nubia/touping/AbstractActivity$4;->val$IPNumFromPc:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Lcn/nubia/touping/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 455
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 457
    :cond_0
    return-void
.end method

.method public connectSuccess()V
    .locals 4

    .prologue
    .line 445
    const-string v1, "AbstractActivity"

    const-string v2, "scan all socket success !!!"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v2, v2, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v2, v2, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    const v3, 0x7f0800ac

    invoke-virtual {v2, v3}, Lcn/nubia/touping/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 447
    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v1}, Lcn/nubia/touping/AbstractActivity;->access$300(Lcn/nubia/touping/AbstractActivity;)Landroid/media/projection/MediaProjectionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$4$1$1;->this$2:Lcn/nubia/touping/AbstractActivity$4$1;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4$1;->this$1:Lcn/nubia/touping/AbstractActivity$4;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    const/16 v2, 0x5a

    invoke-virtual {v1, v0, v2}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    return-void
.end method
