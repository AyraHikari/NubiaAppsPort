.class Lcn/nubia/touping/Utils/DialogManager$9;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showChooseDeviceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 194
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseComputer()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    iget-object v6, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v6}, Lcn/nubia/touping/Utils/DialogManager;->access$200(Lcn/nubia/touping/Utils/DialogManager;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 204
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "CHOOSEN_DEVICE"

    const-string v7, "PC"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    iget-object v6, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v6}, Lcn/nubia/touping/Utils/DialogManager;->access$300(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->dismiss()V

    .line 207
    iget-object v6, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v6}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/touping/Utils/UtilsWifi;->is24GHz(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Lcn/nubia/touping/Utils/DialogManager;->showChangeWifiDialog(I)V

    .line 225
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v6, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v6}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v6

    const-string v7, "android.permission.CAMERA"

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 212
    .local v0, "checkResult":Z
    :goto_1
    if-nez v0, :cond_2

    .line 213
    iget-object v6, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v6}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "android.permission.CAMERA"

    aput-object v7, v4, v5

    const/16 v5, 0x16

    invoke-static {v6, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkResult":Z
    :cond_1
    move v0, v5

    .line 211
    goto :goto_1

    .line 215
    .restart local v0    # "checkResult":Z
    :cond_2
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v5}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v2

    .line 216
    .local v2, "floatPermission":Z
    if-nez v2, :cond_3

    .line 217
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 222
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    const-class v5, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    const/16 v5, 0xde

    invoke-virtual {v4, v3, v5}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onChooseTv()V
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$200(Lcn/nubia/touping/Utils/DialogManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CHOOSEN_DEVICE"

    const-string v3, "TV"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 232
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$300(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->dismiss()V

    .line 233
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/UtilsWifi;->is24GHz(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/DialogManager;->showChangeWifiDialog(I)V

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v3}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v1

    .line 238
    .local v1, "floatPermission":Z
    if-nez v1, :cond_1

    .line 239
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    goto :goto_0
.end method

.method public onClickHelp()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v1}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v1

    const-class v2, Lcn/nubia/touping/WirelessHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager$9;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v1}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/touping/AbstractActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method
