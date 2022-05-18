.class public interface abstract Lcn/nubia/cloud/storage/common/IStorageEngine;
.super Ljava/lang/Object;
.source "IStorageEngine.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCloudDownloadTask(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelCloudDownloadTask(Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkCloudFilesExit(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cloudMatch(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;ILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract copyFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract diffWithCursor(Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/util/List;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IFileTaskCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCloudDownloadTaskList(IIIZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFileMeta(Ljava/lang/String;ZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFileTaskList(Lcn/nubia/cloud/storage/common/IStorageEngineCallback;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMediaStreamList(IIILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getQuota(Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStorageEngineVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loginPCS(Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract makeDir(Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract moveFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pauseAllTask(ILcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pauseTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryCloudDownloadTaskProgress(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryCloudDownloadTaskStatus(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryRemoteFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeAllTask(ILcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract renameFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IStorageEngineCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract restartAllTask(ILcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract restartTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setupWithConfig(Landroid/os/Bundle;Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract thumbnail(Ljava/lang/String;IIILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uploadFile(Ljava/util/List;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/storage/common/IFileTaskCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
