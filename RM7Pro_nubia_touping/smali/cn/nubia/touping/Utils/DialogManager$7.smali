.class Lcn/nubia/touping/Utils/DialogManager$7;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showWifiDialog(I)V
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
    .line 173
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$7;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    iput p2, p0, Lcn/nubia/touping/Utils/DialogManager$7;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBnClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$7;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/UtilsWifi;->setWifiEnabled(Landroid/content/Context;Z)V

    .line 177
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$7;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 178
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$7;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/touping/Utils/DialogManager$7;->val$from:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    return-void
.end method
