.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;
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

    .prologue
    .line 197
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 226
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getversion Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2
    .param p1, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 202
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "SlientDownload..."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 215
    :cond_1
    return-void
.end method

.method public onGetNoVersion()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    .line 222
    :cond_0
    return-void
.end method
