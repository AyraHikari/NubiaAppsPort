.class Lcn/nubia/touping/Utils/DialogManager$21;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialogForWired(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 540
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$21;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    iput-object p2, p0, Lcn/nubia/touping/Utils/DialogManager$21;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBnClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "package"

    iget-object v3, p0, Lcn/nubia/touping/Utils/DialogManager$21;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 546
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$21;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 547
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$21;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 548
    return-void
.end method
