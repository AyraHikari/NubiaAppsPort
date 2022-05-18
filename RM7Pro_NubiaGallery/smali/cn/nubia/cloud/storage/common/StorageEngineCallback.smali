.class Lcn/nubia/cloud/storage/common/StorageEngineCallback;
.super Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;
.source "StorageEngineCallback.java"


# instance fields
.field private final mListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/StorageEngineCallback;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    return-void
.end method


# virtual methods
.method public onAddCloudDownloadTask(Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;)V
    .locals 0

    return-void
.end method

.method public onCancelCloudDownloadTask(Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;)V
    .locals 0

    return-void
.end method

.method public onCheckCloudFilesExit(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 0

    return-void
.end method

.method public onCloudMatch(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V
    .locals 0

    return-void
.end method

.method public onCopyFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .locals 0

    return-void
.end method

.method public onDeleteFiles(Lcn/nubia/cloud/storage/common/bean/SimpleRes;)V
    .locals 0

    return-void
.end method

.method public onDiffWithCursor(Lcn/nubia/cloud/storage/common/bean/DiffRes;)V
    .locals 0

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/StorageEngineCallback;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetCloudDownloadTaskList(Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;)V
    .locals 0

    return-void
.end method

.method public onGetFileList(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 0

    return-void
.end method

.method public onGetFileMeta(Lcn/nubia/cloud/storage/common/bean/MetaRes;)V
    .locals 0

    return-void
.end method

.method public onGetFileTaskListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetQuota(Lcn/nubia/cloud/storage/common/bean/QuotaRes;)V
    .locals 0

    return-void
.end method

.method public onLogin(Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;)V
    .locals 0

    return-void
.end method

.method public onMakeDir(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V
    .locals 0

    return-void
.end method

.method public onMoveFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .locals 0

    return-void
.end method

.method public onQueryCloudDownloadTaskProgress(Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;)V
    .locals 0

    return-void
.end method

.method public onQueryCloudDownloadTaskStatus(Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;)V
    .locals 0

    return-void
.end method

.method public onRenameFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .locals 0

    return-void
.end method

.method public onSearch(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 0

    return-void
.end method

.method public onStreamWithMediaType(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 0

    return-void
.end method

.method public onThumbnail(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V
    .locals 0

    return-void
.end method
