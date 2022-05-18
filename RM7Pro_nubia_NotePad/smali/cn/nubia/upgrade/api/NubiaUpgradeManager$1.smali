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
.field final synthetic this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "downloadPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 125
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 127
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :cond_1
    return-void
.end method

.method public onDownloadError(I)V
    .locals 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v2, "NubiaUpgradeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDownLoadError Code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3ea

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3ee

    if-eq p1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 110
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 111
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 112
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 116
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :cond_1
    return-void
.end method

.method public onDownloadPause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 93
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 95
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    goto :goto_0

    .line 99
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :cond_1
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 3
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 137
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_0

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :cond_0
    return-void
.end method

.method public onResumeDownload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 80
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 82
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    goto :goto_0

    .line 86
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :cond_1
    return-void
.end method

.method public onStartDownload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 66
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 68
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    goto :goto_0

    .line 72
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :cond_1
    return-void
.end method
