.class Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;
.super Ljava/lang/Object;
.source "UpdateApkController.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IDownLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/UpdateApkController;->downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

.field final synthetic val$newVersionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 181
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    iput-object p2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->val$newVersionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->val$newVersionData:Lcn/nubia/upgrade/model/VersionData;

    if-eqz v2, :cond_0

    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 212
    .local v1, "message":Landroid/os/Message;
    const v2, 0x100005

    iput v2, v1, Landroid/os/Message;->what:I

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "VersionDL"

    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->val$newVersionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$500(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$400(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 220
    return-void
.end method

.method public onDownloadError(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onDownloadPause()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/util/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$400(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->pauseDownload()V

    .line 195
    :cond_0
    return-void
.end method

.method public onResumeDownload()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onStartDownload()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method
