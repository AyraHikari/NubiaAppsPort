.class Lcn/nubia/touping/Utils/DialogManager$6;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showChangeWifiDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    iput p2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBnClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    iget v4, p0, Lcn/nubia/touping/Utils/DialogManager$6;->val$from:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_2

    .line 141
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/AbstractActivity;->dealWithInitSDK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    goto :goto_0

    .line 146
    :cond_2
    iget v4, p0, Lcn/nubia/touping/Utils/DialogManager$6;->val$from:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_0

    .line 147
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 148
    .local v0, "checkResult":Z
    :goto_1
    if-nez v0, :cond_4

    .line 149
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "android.permission.CAMERA"

    aput-object v5, v2, v3

    const/16 v3, 0x16

    invoke-static {v4, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkResult":Z
    :cond_3
    move v0, v3

    .line 147
    goto :goto_1

    .line 151
    .restart local v0    # "checkResult":Z
    :cond_4
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 152
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    const-class v3, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$6;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    const/16 v3, 0xde

    invoke-virtual {v2, v1, v3}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
