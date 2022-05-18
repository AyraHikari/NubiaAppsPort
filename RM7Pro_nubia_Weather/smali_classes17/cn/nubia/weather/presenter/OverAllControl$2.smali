.class Lcn/nubia/weather/presenter/OverAllControl$2;
.super Ljava/lang/Object;
.source "OverAllControl.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IDownLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/presenter/OverAllControl;->downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/presenter/OverAllControl;

.field final synthetic val$newVersionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 1025
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iput-object p2, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->val$newVersionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1058
    const-string v2, "OverAllControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDownloadComplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->val$newVersionData:Lcn/nubia/upgrade/model/VersionData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$1000(Lcn/nubia/weather/presenter/OverAllControl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1061
    .local v1, "message":Landroid/os/Message;
    const v2, 0x100005

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1062
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1063
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "VersionDL"

    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->val$newVersionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1065
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2, v1}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    .line 1068
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$900(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 1069
    return-void
.end method

.method public onDownloadError(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 1052
    const-string v0, "OverAllControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$900(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 1054
    return-void
.end method

.method public onDownloadPause()V
    .locals 2

    .prologue
    .line 1047
    const-string v0, "OverAllControl"

    const-string v1, "onDownloadPause "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 1038
    const-string v0, "OverAllControl"

    const-string v1, "onDownloadProgress "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1040
    const-string v0, "OverAllControl"

    const-string v1, "change to mobile network, pause dl"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$2;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$900(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->pauseDownload()V

    .line 1043
    :cond_0
    return-void
.end method

.method public onResumeDownload()V
    .locals 2

    .prologue
    .line 1033
    const-string v0, "OverAllControl"

    const-string v1, "onResumeDownload "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method public onStartDownload()V
    .locals 2

    .prologue
    .line 1028
    const-string v0, "OverAllControl"

    const-string v1, "onStartDownload "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    return-void
.end method
