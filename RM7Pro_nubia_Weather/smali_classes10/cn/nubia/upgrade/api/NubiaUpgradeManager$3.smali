.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 280
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 311
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occurred when try to get new version. error_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 3
    .param p1, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 283
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "got a new version."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(new version data) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;

    .line 287
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "in silent download mode, so start downloading."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 298
    :cond_1
    return-void
.end method

.method public onGetNoVersion()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "no new version to upgrade."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    .line 307
    :cond_0
    return-void
.end method
