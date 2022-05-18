.class public interface abstract Lcn/nubia/cloud/storage/common/IStorageEngineCallback;
.super Ljava/lang/Object;
.source "IStorageEngineCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAddCloudDownloadTask(Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCancelCloudDownloadTask(Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCheckCloudFilesExit(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCloudMatch(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCopyFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeleteFiles(Lcn/nubia/cloud/storage/common/bean/SimpleRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDiffWithCursor(Lcn/nubia/cloud/storage/common/bean/DiffRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetCloudDownloadTaskList(Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetFileList(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetFileMeta(Lcn/nubia/cloud/storage/common/bean/MetaRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetFileTaskListFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetQuota(Lcn/nubia/cloud/storage/common/bean/QuotaRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLogin(Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMakeDir(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMoveFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueryCloudDownloadTaskProgress(Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueryCloudDownloadTaskStatus(Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRenameFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSearch(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStreamWithMediaType(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThumbnail(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
