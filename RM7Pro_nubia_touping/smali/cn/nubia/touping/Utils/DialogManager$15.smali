.class Lcn/nubia/touping/Utils/DialogManager$15;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showPrivacyPolicyDialog()V
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
    .line 455
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$15;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBnClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 458
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager$15;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v1}, Lcn/nubia/touping/Utils/DialogManager;->access$200(Lcn/nubia/touping/Utils/DialogManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PRIVATE_MODE_WIRELESS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 461
    const-string v1, "PRIVATE_MODE_WIRELESS"

    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$15;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 462
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager$15;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v1}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 463
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager$15;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v1}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 464
    return-void
.end method
