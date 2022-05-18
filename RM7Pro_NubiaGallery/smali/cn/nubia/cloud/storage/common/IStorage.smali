.class public interface abstract Lcn/nubia/cloud/storage/common/IStorage;
.super Ljava/lang/Object;
.source "IStorage.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final STORE_TYPE:Ljava/lang/String; = "store_type"


# virtual methods
.method public abstract addCloudDownloadTask(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelCloudDownloadTask(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkCloudFilesExit(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract cloudMatch(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract copyFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/SimpleRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract diffWithCursor(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/DiffRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCloudDownloadTaskList(IIIZLcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFileMeta(Ljava/lang/String;ZLcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/MetaRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFileTaskList(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;>;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMediaStreamList(Lcn/nubia/cloud/storage/common/MediaType;IILcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/MediaType;",
            "II",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getQuota(Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/QuotaRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginPCS(Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/account/AuthReq;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract makeDir(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract moveFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pauseAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/FileTaskType;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pauseTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryCloudDownloadTaskProgress(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryCloudDownloadTaskStatus(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/FileTaskType;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract renameFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restartAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/FileTaskType;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restartTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract thumbnail(Ljava/lang/String;IIILcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadFile(Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation
.end method
