.class public Lcn/nubia/improve/xcloud/NubiaCloudTaskService;
.super Landroid/app/IntentService;
.source "NubiaCloudTaskService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;,
        Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;,
        Lcn/nubia/improve/xcloud/NubiaCloudTaskService$LocalBinder;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final COMPLETE:I = 0x1

.field public static final ERROR:I = 0x3

.field public static final PAUSED:I = 0x8

.field public static final REMOVE_TASK:I = 0x7

.field public static final RESTART_TASK:I = 0x6

.field public static final START_TASK:I = 0x4

.field private static final TIMEOUTRANGE:J = 0x493e0L

.field public static final UPDATE:I = 0x0

.field public static final UPLOADING:I = 0x5


# instance fields
.field private final DOWNLOADNITIFICATIONID:I

.field private final TAG:Ljava/lang/String;

.field private final UPLOADNOTIFICATIONID:I

.field private mConnectionReceiver:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentNotificationId:I

.field private mCurrentReponseTime:J

.field private mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreFirstReceive:Z

.field private mIsBackup:Z

.field private mIsTaskPaused:Z

.field private mIsUpload:Z

.field private mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

.field private mNeedRestartTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

.field private mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NubiaCloudTaskService"

    .line 88
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->UPLOADNOTIFICATIONID:I

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->DOWNLOADNITIFICATIONID:I

    .line 61
    iput v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mCurrentNotificationId:I

    .line 65
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z

    const-string v1, "nubiaCloudTaskService"

    .line 76
    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    .line 78
    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    .line 79
    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mConnectionReceiver:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;

    .line 80
    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    .line 81
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsTaskPaused:Z

    .line 82
    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNeedRestartTasks:Ljava/util/ArrayList;

    .line 84
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIgnoreFirstReceive:Z

    .line 85
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsBackup:Z

    .line 659
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mHandler:Landroid/os/Handler;

    .line 669
    new-instance v0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;

    invoke-direct {v0, p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V

    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIgnoreFirstReceive:Z

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIgnoreFirstReceive:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p6}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->refreshStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsTaskPaused:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsTaskPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->isWifiAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->restartTask()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsBackup:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNeedRestartTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNeedRestartTasks:Ljava/util/ArrayList;

    return-object p1
.end method

.method private deleteUndoneTask()V
    .locals 0

    .line 593
    invoke-static {p0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteUndoneTask(Landroid/content/Context;)V

    return-void
.end method

.method private isTaskStop()Z
    .locals 3

    .line 296
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->isNubiaCloudTaskCompleted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 298
    :cond_0
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    .line 300
    invoke-virtual {v0, v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->sendEmptyMessage(I)Z

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->removeUploadTasks()V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isTimeOut()Z
    .locals 4

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mCurrentReponseTime:J

    .line 310
    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-virtual {v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->getResponseTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiAvailable()Z
    .locals 1

    .line 201
    invoke-static {p0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {p0}, Lcn/nubia/gallery3d/common/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processPhotoTask(ILjava/lang/String;)V
    .locals 1

    const-string v0, "RESUME"

    if-ne p2, v0, :cond_0

    .line 543
    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->reUploadImageByTaskId(I)V

    :cond_0
    return-void
.end method

.method private processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 549
    iget-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    if-eqz p2, :cond_2

    const-string p2, "PAUSE"

    .line 550
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 551
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    sget-object p2, Lcn/nubia/cloud/storage/common/FileTaskType;->ALL:Lcn/nubia/cloud/storage/common/FileTaskType;

    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-interface {p1, p2, v0}, Lcn/nubia/cloud/storage/common/CloudStorage;->pauseAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V

    goto :goto_0

    :cond_0
    const-string p2, "RESUME"

    .line 553
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 554
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    sget-object p2, Lcn/nubia/cloud/storage/common/FileTaskType;->ALL:Lcn/nubia/cloud/storage/common/FileTaskType;

    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-interface {p1, p2, v0}, Lcn/nubia/cloud/storage/common/CloudStorage;->restartAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V

    goto :goto_0

    :cond_1
    const-string p2, "REMOVE"

    .line 556
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    sget-object p2, Lcn/nubia/cloud/storage/common/FileTaskType;->ALL:Lcn/nubia/cloud/storage/common/FileTaskType;

    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-interface {p1, p2, v0}, Lcn/nubia/cloud/storage/common/CloudStorage;->removeAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private reUploadImageByTaskId(I)V
    .locals 0

    return-void
.end method

.method private reUploadorDownloadRemovedTask()V
    .locals 10

    .line 611
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "state=101"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 613
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 614
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 617
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "taskid"

    .line 618
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    const-string v5, "tasktype"

    .line 619
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "cloudpath"

    .line 620
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "localpath"

    .line 621
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "totalsize"

    if-ne v5, v1, :cond_1

    .line 623
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 624
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 626
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 627
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 633
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 636
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private refreshStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 0

    .line 666
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-virtual {p1, p6}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->onGetTaskStatus(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    return-void
.end method

.method private refreshView(Ljava/util/List;)V
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

.method private restartTask()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNeedRestartTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 653
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->restartTask(I)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNeedRestartTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getIsTaskPaused()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsTaskPaused:Z

    return v0
.end method

.method public getTaskFailedCount()I
    .locals 1

    .line 640
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->getTaskFailedCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "nubiaCloudTaskService"

    const-string v0, " NubiaCloudTaskService onBind"

    .line 93
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$LocalBinder;

    invoke-direct {p1, p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$LocalBinder;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 107
    iput-object p0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIgnoreFirstReceive:Z

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V

    iput-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mConnectionReceiver:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;

    .line 113
    invoke-virtual {p0, v1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/CloudStorageFactory;->get(Landroid/content/Context;)Lcn/nubia/cloud/storage/common/CloudStorage;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "nubiaCloudTaskService"

    const-string v1, " NubiaCloudTaskService onDestroy"

    .line 119
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->unbindService()V

    .line 123
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    invoke-interface {v0}, Lcn/nubia/cloud/storage/common/CloudStorage;->close()V

    .line 124
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mConnectionReceiver:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "size"

    const-wide/16 v1, 0x0

    .line 215
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "isupload"

    const/4 v3, 0x1

    .line 216
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z

    const-string v2, "isBackup"

    const/4 v3, 0x0

    .line 217
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsBackup:Z

    .line 218
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->isWifiAvailable()Z

    move-result v2

    const-string v4, "map"

    .line 220
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent wifiAvailable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mIsUpload :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mIsBackup :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsBackup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",file num :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",total size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nubiaCloudTaskService"

    .line 221
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsBackup:Z

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 233
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " source :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-boolean v5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "onHandleIntent info : "

    if-eqz v5, :cond_1

    .line 239
    :try_start_1
    new-instance v5, Lcn/nubia/cloud/storage/common/bean/UploadFileTask;

    sget-object v7, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->RENAME:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-direct {v5, v2, v4, v3, v7}, Lcn/nubia/cloud/storage/common/bean/UploadFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;)V

    .line 242
    invoke-virtual {v5, v3}, Lcn/nubia/cloud/storage/common/bean/UploadFileTask;->setErrorCode(I)V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcn/nubia/cloud/storage/common/bean/UploadFileTask;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    new-instance v5, Lcn/nubia/cloud/storage/common/bean/DownloadFileTask;

    sget-object v7, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-direct {v5, v4, v2, v3, v7}, Lcn/nubia/cloud/storage/common/bean/DownloadFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;)V

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcn/nubia/cloud/storage/common/bean/DownloadFileTask;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 258
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 259
    new-instance p1, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    invoke-direct {p1, p0, v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    .line 261
    invoke-virtual {p1, p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setService(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V

    .line 262
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setNubiaCloudTaskNum(I)V

    .line 263
    iget-boolean p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z

    const/4 v2, 0x4

    if-eqz p1, :cond_4

    .line 264
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    if-eqz p1, :cond_3

    const-string p1, "here to call mStorageEngine.uploadFile!!"

    .line 265
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    iget-object v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    invoke-interface {p1, v0, v3}, Lcn/nubia/cloud/storage/common/CloudStorage;->uploadFile(Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V

    .line 267
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    invoke-virtual {p1, v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->sendEmptyMessage(I)Z

    .line 269
    :cond_3
    iget-boolean p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsBackup:Z

    if-nez p1, :cond_5

    .line 270
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x5

    .line 271
    iput v0, p1, Landroid/os/Message;->what:I

    .line 272
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    const v2, 0x7f100266

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 276
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    if-eqz p1, :cond_5

    .line 277
    iget-object v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    invoke-interface {p1, v0, v3}, Lcn/nubia/cloud/storage/common/CloudStorage;->downloadFile(Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V

    .line 278
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    invoke-virtual {p1, v2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->sendEmptyMessage(I)Z

    .line 282
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    if-nez p1, :cond_6

    return-void

    .line 285
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->isTaskStop()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, " task is running , wait next task"

    .line 286
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    .line 288
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "nubiaCloudTaskService"

    const-string v1, " NubiaCloudTaskService onRebind"

    .line 130
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Landroid/app/IntentService;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "nubiaCloudTaskService"

    const-string v1, " NubiaCloudTaskService onStart"

    .line 137
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "nubiaCloudTaskService"

    const-string v1, " NubiaCloudTaskService onStartCommand"

    .line 143
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$1;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V

    iget-object v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/storage/common/CloudStorage;->getFileTaskList(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/ProgressListener;)V

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "nubiaCloudTaskService"

    const-string v1, " NubiaCloudTaskService onUnbind"

    .line 161
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1}, Landroid/app/IntentService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public pauseAllTasks()V
    .locals 2

    const-string v0, "PAUSE"

    const-string v1, "ALL"

    .line 500
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pauseDownTasks()V
    .locals 2

    const-string v0, "PAUSE"

    const-string v1, "DOWNLOAD"

    .line 510
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pauseTaskById(I)V
    .locals 1

    const-string v0, "PAUSE"

    .line 496
    invoke-direct {p0, p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTask(ILjava/lang/String;)V

    return-void
.end method

.method public pauseTasks()V
    .locals 0

    .line 597
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->pauseUploadTasks()V

    .line 598
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->pauseDownTasks()V

    return-void
.end method

.method public pauseUploadTasks()V
    .locals 2

    const-string v0, "PAUSE"

    const-string v1, "UPLOAD"

    .line 505
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeTask(I)V
    .locals 1

    const-string v0, "REMOVE"

    .line 492
    invoke-direct {p0, p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTask(ILjava/lang/String;)V

    return-void
.end method

.method public removeUploadTasks()V
    .locals 2

    const-string v0, "REMOVE"

    const-string v1, "UPLOAD"

    .line 534
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteUndoneUploadTask(Landroid/content/Context;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mNubiaCloudTaskListener:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->setNubiaCloudTaskCompleted()V

    :cond_0
    return-void
.end method

.method public restartTask(I)V
    .locals 1

    const-string v0, "RESTART"

    .line 488
    invoke-direct {p0, p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTask(ILjava/lang/String;)V

    return-void
.end method

.method public resumeAllTasks()V
    .locals 2

    const-string v0, "RESUME"

    const-string v1, "ALL"

    .line 519
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeDownTasks()V
    .locals 2

    const-string v0, "RESUME"

    const-string v1, "DOWNLOAD"

    .line 529
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeTaskById(I)V
    .locals 1

    const-string v0, "RESUME"

    .line 515
    invoke-direct {p0, p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTask(ILjava/lang/String;)V

    return-void
.end method

.method public resumeTasks()V
    .locals 0

    .line 603
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->resumeUploadTasks()V

    .line 604
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->resumeDownTasks()V

    .line 605
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->reUploadorDownloadRemovedTask()V

    return-void
.end method

.method public resumeUploadTasks()V
    .locals 2

    const-string v0, "RESUME"

    const-string v1, "UPLOAD"

    .line 524
    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->processPhotoTaskList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startTask(Z)V
    .locals 2

    const-string v0, "nubiaCloudTaskService"

    const-string v1, " startTask "

    .line 482
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mIsUpload:Z

    .line 484
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->mMyHandler:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method
