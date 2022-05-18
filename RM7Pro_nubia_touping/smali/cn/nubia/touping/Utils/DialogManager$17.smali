.class final Lcn/nubia/touping/Utils/DialogManager$17;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showPrivacyPolicyDialogNubiaTouPing(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBnClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 488
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$17;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 490
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PRIVATE_MODE_WIRELESS"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$17;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPrivateModeStatus(Landroid/content/Context;)V

    .line 493
    const-string v2, "PRIVATE_MODE_WIRELESS"

    iget-object v3, p0, Lcn/nubia/touping/Utils/DialogManager$17;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 494
    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager$17;->val$context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 495
    return-void
.end method
