.class Lcn/nubia/touping/AbstractActivity$4;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity;->getQRCodeDeviceForNubiaInThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity;

.field final synthetic val$IPNumFromPc:I

.field final synthetic val$currentI:I

.field final synthetic val$currentIp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 432
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    iput-object p2, p0, Lcn/nubia/touping/AbstractActivity$4;->val$currentIp:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/touping/AbstractActivity$4;->val$currentI:I

    iput p4, p0, Lcn/nubia/touping/AbstractActivity$4;->val$IPNumFromPc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 3

    .prologue
    .line 474
    const-string v0, "AbstractActivity"

    const-string v1, "socket fail"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget v0, p0, Lcn/nubia/touping/AbstractActivity$4;->val$currentI:I

    iget v1, p0, Lcn/nubia/touping/AbstractActivity$4;->val$IPNumFromPc:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Lcn/nubia/touping/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 479
    :cond_0
    return-void
.end method

.method public connectSuccess()V
    .locals 5

    .prologue
    .line 435
    const-string v0, "AbstractActivity"

    const-string v1, "socket success"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$4;->val$currentIp:Ljava/lang/String;

    sput-object v0, Lcn/nubia/touping/AbstractActivity;->currentIpLinkSuccess:Ljava/lang/String;

    .line 438
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$4;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v3, p0, Lcn/nubia/touping/AbstractActivity$4;->val$currentIp:Ljava/lang/String;

    sget-object v0, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcn/nubia/touping/AbstractActivity$4$1;

    invoke-direct {v4, p0}, Lcn/nubia/touping/AbstractActivity$4$1;-><init>(Lcn/nubia/touping/AbstractActivity$4;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->connenct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V

    .line 470
    return-void
.end method
