.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;
.super Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;
.source "NubiaUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCallingPid()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 224
    const-string v1, "NubiaUpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadCallingPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return v0
.end method

.method public onDownloadComplete(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download complete. (path)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 189
    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 190
    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 191
    invoke-static {v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 192
    invoke-static {v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 188
    invoke-static/range {v0 .. v5}, Lcn/nubia/upgrade/util/ReportUtils;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 202
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 204
    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v1, "NubiaUpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch an exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    return-void
.end method

.method public onDownloadError(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3ee

    const/16 v4, 0x3ea

    const/4 v0, 0x1

    .line 152
    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_2

    .line 154
    :goto_0
    const-string v1, "NubiaUpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download error. (error code)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v5, :cond_0

    .line 160
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v1

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v2, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 165
    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 166
    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 167
    invoke-static {v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 168
    invoke-static {v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    .line 164
    invoke-static/range {v0 .. v5}, Lcn/nubia/upgrade/util/ReportUtils;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 176
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 177
    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_2

    .line 152
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "NubiaUpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch an exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_3
    return-void
.end method

.method public onDownloadPause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "download pause."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_1
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 144
    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 217
    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_0
.end method

.method public onResumeDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "download resume."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 127
    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    goto :goto_0
.end method

.method public onStartDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "download start."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    :cond_1
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->a:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 110
    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    goto :goto_0
.end method
