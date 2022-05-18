.class Lcn/nubia/touping/Utils/DialogManager$19;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialog()V
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
    .line 514
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$19;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBnClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "package"

    iget-object v3, p0, Lcn/nubia/touping/Utils/DialogManager$19;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v3}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/AbstractActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 519
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$19;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 521
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$19;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 522
    return-void
.end method
