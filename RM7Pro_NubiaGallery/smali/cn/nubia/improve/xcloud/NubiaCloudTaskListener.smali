.class public Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;
.super Ljava/lang/Object;
.source "NubiaCloudTaskListener.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ProgressListener<",
        "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgressValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReponseTime:J

.field private mService:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

.field private mTaskDoneNum:I

.field private mTaskFailedCount:I

.field private mTaskFinished:Z

.field private mTotalTaskNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NubiaCloudTaskListener"

    .line 26
    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    .line 28
    new-instance v0, Lcn/nubia/improve/xcloud/CloudTask;

    invoke-direct {v0}, Lcn/nubia/improve/xcloud/CloudTask;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    .line 32
    iput v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    .line 33
    iput v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    .line 34
    iput v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFailedCount:I

    .line 35
    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mService:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mReponseTime:J

    .line 38
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    .line 324
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    .line 328
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 329
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method private getCloudAlbumSet()Lcn/nubia/cloud/ui/CloudAlbumSet;
    .locals 3

    .line 311
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    instance-of v1, v0, Lcn/nubia/gallery3d/app/GalleryActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 313
    check-cast v0, Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_0
    instance-of v1, v0, Lcn/nubia/gallery3d/app/GalleryApp;

    if-eqz v1, :cond_1

    .line 315
    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 318
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/nubia/cloud/ui/CloudAlbumSet;

    :cond_2
    return-object v2
.end method

.method private initCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V
    .locals 6

    .line 199
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " initCloudTask localPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  cloudPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NubiaCloudTaskListener"

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\'"

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "\'\'"

    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_1
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->isTaskInIdleState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setCloudTaskInfo(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 210
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    .line 212
    invoke-static {p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->getCloudTaskContentValues(Lcn/nubia/improve/xcloud/CloudTask;)Landroid/content/ContentValues;

    move-result-object p2

    .line 210
    invoke-static {p1, v0, v1, p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->updateTaskByLocalPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 213
    :cond_2
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->isTaskAbandoned(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :try_start_0
    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mService:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->removeTask(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 217
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCloudTask Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isTaskAbandoned mTotalTaskNum --"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " taskid : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    .line 223
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    if-ne v0, p1, :cond_4

    .line 224
    iput-boolean p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    goto :goto_1

    .line 227
    :cond_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setCloudTaskInfo(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " initCloudTask insertTask bean : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "test"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    .line 230
    invoke-static {p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->getCloudTaskContentValues(Lcn/nubia/improve/xcloud/CloudTask;)Landroid/content/ContentValues;

    move-result-object p2

    .line 229
    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->insertTask(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setCloudTaskInfo(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V
    .locals 7

    .line 275
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    if-eqz v0, :cond_3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setCloudTaskInfo localPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  cloudPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaCloudTaskListener"

    .line 276
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 279
    :try_start_0
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    iget-object v3, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/improve/xcloud/CloudTask;->setTaskID(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 281
    iget-object v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {v3, v0}, Lcn/nubia/improve/xcloud/CloudTask;->setTaskID(I)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCloudTaskInfo Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/improve/xcloud/CloudTask;->setLocalPath(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/improve/xcloud/CloudTask;->setCloudPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getStatusTaskCode()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 288
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getCurrentSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getCurrentSize()J

    move-result-wide v5

    long-to-int v2, v5

    invoke-virtual {v1, v2}, Lcn/nubia/improve/xcloud/CloudTask;->setCurrentSize(I)V

    goto :goto_1

    .line 291
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {v1, v0}, Lcn/nubia/improve/xcloud/CloudTask;->setCurrentSize(I)V

    .line 293
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTotalSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 294
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTotalSize()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudTask;->setTotalSize(I)V

    goto :goto_2

    .line 296
    :cond_1
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {v1, v0}, Lcn/nubia/improve/xcloud/CloudTask;->setTotalSize(I)V

    .line 299
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getStatusTaskCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudTask;->setState(I)V

    .line 300
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/improve/xcloud/CloudTask;->setTaskType(I)V

    .line 301
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/improve/xcloud/CloudTask;->setDoneTime(J)V

    if-eqz p2, :cond_3

    .line 303
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    iget p2, p2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mRate:I

    invoke-virtual {p1, p2}, Lcn/nubia/improve/xcloud/CloudTask;->setRate(I)V

    :cond_3
    return-void
.end method

.method private updateCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V
    .locals 6

    .line 235
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateCloudTask localPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  cloudPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NubiaCloudTaskListener"

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\'"

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "\'\'"

    if-eqz v4, :cond_0

    .line 239
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_1
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->isTaskExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->isTaskInIdleState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setCloudTaskInfo(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 247
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    .line 248
    invoke-static {p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->getCloudTaskContentValues(Lcn/nubia/improve/xcloud/CloudTask;)Landroid/content/ContentValues;

    move-result-object p2

    .line 247
    invoke-static {p1, v0, v1, p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->updateTaskByLocalPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 249
    :cond_2
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->isTaskAbandoned(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    :try_start_0
    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mService:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->removeTask(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 253
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCloudTask Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " isTaskAbandoned mTotalTaskNum --"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " taskid : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    .line 258
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    if-ne v0, p1, :cond_5

    .line 259
    iput-boolean p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    goto :goto_1

    .line 262
    :cond_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setCloudTaskInfo(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 263
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    invoke-virtual {p2}, Lcn/nubia/improve/xcloud/CloudTask;->getTaskID()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    .line 264
    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->getCloudTaskContentValues(Lcn/nubia/improve/xcloud/CloudTask;)Landroid/content/ContentValues;

    move-result-object v0

    .line 263
    invoke-static {p1, p2, v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->updateTaskByTaskId(Landroid/content/Context;ILandroid/content/ContentValues;)V

    goto :goto_1

    .line 267
    :cond_4
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setCloudTaskInfo(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " initCloudTask insertTask bean : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "test"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    .line 270
    invoke-static {p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->getCloudTaskContentValues(Lcn/nubia/improve/xcloud/CloudTask;)Landroid/content/ContentValues;

    move-result-object p2

    .line 269
    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->insertTask(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getResponseTime()J
    .locals 2

    .line 337
    iget-wide v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mReponseTime:J

    return-wide v0
.end method

.method public getTaskFailedCount()I
    .locals 1

    .line 341
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFailedCount:I

    return v0
.end method

.method public isNubiaCloudTaskCompleted()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    return v0
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  errormsg :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NubiaCloudTaskListener"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetTaskListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetTaskStatus(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 12

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFileTaskStatus bean :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaCloudTaskListener"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mReponseTime:J

    .line 63
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getStatusTaskCode()I

    move-result v2

    const/16 v3, 0x7956

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/16 v8, 0x68

    if-ne v2, v8, :cond_2

    .line 64
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 65
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 66
    iput v6, v1, Landroid/os/Message;->what:I

    .line 67
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 69
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    iget-object v8, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    new-instance v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;

    invoke-direct {v2, p0, v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;)V

    .line 75
    iput-wide v4, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUploadSize:J

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    .line 77
    iget-object v8, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    iget-object v9, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v2, v7

    .line 79
    :goto_0
    iget-object v8, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    invoke-direct {p0, p1, v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->initCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getStatusTaskCode()I

    move-result v2

    const/16 v8, 0x65

    if-ne v2, v8, :cond_6

    .line 84
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 85
    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 86
    iput v6, v1, Landroid/os/Message;->what:I

    .line 87
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 89
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 93
    :cond_3
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    iget-object v3, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;

    if-nez v2, :cond_4

    .line 95
    new-instance v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;

    invoke-direct {v2, p0, v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;)V

    .line 96
    iput-wide v4, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUploadSize:J

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    .line 100
    :cond_4
    iget-object v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    iget-object v8, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v3, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;

    invoke-direct {v3, p0, v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;)V

    .line 102
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getCurrentSize()J

    move-result-wide v8

    iput-wide v8, v3, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUploadSize:J

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    .line 105
    iget-wide v8, v3, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    iget-wide v10, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    sub-long/2addr v8, v10

    cmp-long v4, v8, v4

    if-lez v4, :cond_5

    .line 106
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getCurrentSize()J

    move-result-wide v4

    iget-wide v8, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUploadSize:J

    sub-long/2addr v4, v8

    iget-wide v8, v3, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    iget-wide v10, v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    sub-long/2addr v8, v10

    div-long/2addr v4, v8

    long-to-int v2, v4

    .line 108
    iput v2, v3, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mRate:I

    .line 111
    :cond_5
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    iget-object v4, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0, p1, v3}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->updateCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 114
    :cond_6
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getStatusTaskCode()I

    move-result v2

    const/16 v3, 0x67

    const/4 v4, 0x1

    if-ne v2, v3, :cond_a

    .line 115
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_9

    .line 116
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result v2

    const v3, 0x9860

    if-ne v2, v3, :cond_7

    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    .line 119
    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 127
    :cond_7
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 128
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 129
    iput v6, v2, Landroid/os/Message;->what:I

    .line 130
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getErrorCode()I

    move-result v0

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 132
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    :cond_8
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFailedCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFailedCount:I

    .line 135
    invoke-direct {p0, p1, v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->updateCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    goto :goto_1

    .line 138
    :cond_9
    invoke-direct {p0, p1, v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->updateCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 140
    :goto_1
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    add-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    .line 143
    :cond_a
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getStatusTaskCode()I

    move-result v0

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_10

    .line 144
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mProgressValue:Ljava/util/HashMap;

    iget-object v2, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getType()I

    move-result v0

    const-string v2, " task done=================== "

    const-string v3, "  mTotalTaskNum= "

    const-string v5, "mTaskDoneNum = "

    if-ne v0, v4, :cond_e

    .line 147
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    add-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v3, "remove"

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    iget p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    if-ne p1, v0, :cond_b

    .line 152
    iput-boolean v4, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    .line 153
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    return-void

    .line 157
    :cond_c
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    iget v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    if-ne v0, v3, :cond_d

    .line 158
    iput-boolean v4, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    .line 159
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_d
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->getCloudAlbumSet()Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object v0

    .line 163
    invoke-direct {p0, p1, v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->updateCloudTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;)V

    .line 164
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->addNewItem2CloudAlbum(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_e
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getType()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_10

    .line 167
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    add-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskDoneNum:I

    iget v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    if-ne v0, v3, :cond_f

    .line 170
    iput-boolean v4, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    .line 171
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_f
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_10
    :goto_2
    return-void
.end method

.method public onStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updownloadFile_onStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " CurrentSize:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " TotalSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NubiaCloudTaskListener"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;

    invoke-direct {p2, p0, p6}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onStatus(IJJLjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p6, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    invoke-virtual/range {p0 .. p6}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->onStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    return-void
.end method

.method public progressInterval()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setNubiaCloudTaskCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTaskFinished:Z

    return-void
.end method

.method public setNubiaCloudTaskNum(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mTotalTaskNum:I

    return-void
.end method

.method public setService(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mService:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->mReponseTime:J

    return-void
.end method
