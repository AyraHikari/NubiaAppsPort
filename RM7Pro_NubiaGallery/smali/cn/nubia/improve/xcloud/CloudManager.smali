.class public Lcn/nubia/improve/xcloud/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/xcloud/CloudManager$ListListener;,
        Lcn/nubia/improve/xcloud/CloudManager$RenameListener;,
        Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;,
        Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;,
        Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;,
        Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;,
        Lcn/nubia/improve/xcloud/CloudManager$MkPhotoDirListener;,
        Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;
    }
.end annotation


# static fields
.field private static final DATAFLOWINTERVAL:I = 0xa

.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FOLDER:I = 0x3

.field private static final MSG_DEFAULT:I = 0x64

.field static final MSG_DELETE_ERROR:I = 0x6a

.field static final MSG_GETQUOTA:I = 0x65

.field static final MSG_LOGIN_COMPLETE:I = 0x66

.field static final MSG_NO_NETWORK:I = 0x68

.field static final MSG_SHOW_CONTINUE_TIPS:I = 0x6c

.field static final MSG_SHOW_TOAST:I = 0x6b

.field static final MSG_TASK_ERROR:I = 0x67

.field static final MSG_USE_MOBILEDATA:I = 0x69

.field private static final OLDCLOUDALBUMNAME:Ljava/lang/String; = "/CloudPictures"

.field private static TRAFFICANALISECONFIG:Z = false

.field private static final UPLOAD:I = 0x0

.field private static final UPLOAD_FOLDER:I = 0x2

.field public static final UPLOAD_NUMBER_LIMIT:I = 0x12c

.field static fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field static fileTaskListener:Lcom/xcloud/pluginAlbum/IAlbumTaskListener;

.field private static mInstance:Lcn/nubia/improve/xcloud/CloudManager;

.field public static mMyHandler:Landroid/os/Handler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private TASKNUM:I

.field private final THUMBNAIL_HEIGHT:I

.field private final THUMBNAIL_QUALITY:I

.field private final THUMBNAIL_WIDTH:I

.field private isSupportCheckNames:Z

.field private mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

.field private mContext:Landroid/content/Context;

.field private mCurrentJob:I

.field private mDeleteListener:Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

.field private mDownloadPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileTaskListener:Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;

.field private mIsLogin:Z

.field private mIsLogining:Z

.field private mListAlbumListener:Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;

.field private mListListener:Lcn/nubia/improve/xcloud/CloudManager$ListListener;

.field private mLoginStatusListener:Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;

.field private mOnCloud:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mRenameListener:Lcn/nubia/improve/xcloud/CloudManager$RenameListener;

.field private mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

.field private mTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTempFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mThirdAccessToken:Ljava/lang/String;

.field private mTotalSize:J

.field private mTotalSizeTmp:J

.field private mTrafficStatistics:J

.field private requestTimes:I

.field private responseTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 674
    new-instance v0, Lcn/nubia/improve/xcloud/CloudManager$9;

    invoke-direct {v0}, Lcn/nubia/improve/xcloud/CloudManager$9;-><init>()V

    sput-object v0, Lcn/nubia/improve/xcloud/CloudManager;->fileTaskListener:Lcom/xcloud/pluginAlbum/IAlbumTaskListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mThirdAccessToken:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "CloudManager"

    .line 56
    iput-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTempFile:Ljava/util/ArrayList;

    const/16 v1, 0x32

    .line 61
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->THUMBNAIL_WIDTH:I

    .line 62
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->THUMBNAIL_HEIGHT:I

    const/16 v1, 0x64

    .line 63
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->THUMBNAIL_QUALITY:I

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mIsLogining:Z

    .line 65
    new-instance v2, Lcn/nubia/improve/xcloud/CloudTask;

    invoke-direct {v2}, Lcn/nubia/improve/xcloud/CloudTask;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCloudTask:Lcn/nubia/improve/xcloud/CloudTask;

    .line 66
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->TASKNUM:I

    const-wide/16 v2, 0x0

    .line 67
    iput-wide v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    .line 68
    iput-wide v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSizeTmp:J

    .line 69
    iput-wide v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTrafficStatistics:J

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTaskId:Ljava/util/HashMap;

    .line 71
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 110
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListAlbumListener:Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;

    .line 111
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mLoginStatusListener:Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;

    .line 112
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileTaskListener:Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;

    .line 113
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDeleteListener:Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    .line 114
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mRenameListener:Lcn/nubia/improve/xcloud/CloudManager$RenameListener;

    .line 115
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListListener:Lcn/nubia/improve/xcloud/CloudManager$ListListener;

    .line 116
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->requestTimes:I

    .line 117
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->responseTime:I

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDownloadPaths:Ljava/util/ArrayList;

    .line 125
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    .line 126
    iput-boolean v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mOnCloud:Z

    .line 131
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    .line 849
    iput-boolean v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->isSupportCheckNames:Z

    .line 133
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->initHander()V

    .line 135
    sget-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    invoke-static {p1}, Lcn/nubia/cloud/storage/common/CloudStorageFactory;->get(Landroid/content/Context;)Lcn/nubia/cloud/storage/common/CloudStorage;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/xcloud/CloudManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->getQuota()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/improve/xcloud/CloudManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->dismissCloudDialog()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/improve/xcloud/CloudManager;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mIsLogining:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/improve/xcloud/CloudManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/util/HashMap;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/improve/xcloud/CloudManager;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/HashMap;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/improve/xcloud/CloudManager;->upload(Ljava/util/HashMap;J)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDownloadPaths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/ArrayList;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/improve/xcloud/CloudManager;->downloadImage(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager;->movePhotoList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/cloud/ui/CloudAlbumSet;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->getCloudAlbumSet()Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$RenameListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mRenameListener:Lcn/nubia/improve/xcloud/CloudManager$RenameListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mLoginStatusListener:Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/HashMap;JZZ)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcn/nubia/improve/xcloud/CloudManager;->startCloudTaskService(Ljava/util/HashMap;JZZ)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/improve/xcloud/CloudManager;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mOnCloud:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/xcloud/CloudManager;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDeleteListener:Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$708(Lcn/nubia/improve/xcloud/CloudManager;)I
    .locals 2

    .line 53
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->responseTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->responseTime:I

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager;->printAllFiles(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/improve/xcloud/CloudManager;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager;->createFolder(Ljava/lang/String;)V

    return-void
.end method

.method private addImageToCloudAlbum(Ljava/lang/String;Lcn/nubia/improve/xcloud/CloudBucket;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 317
    iget-object v0, p2, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/xcloud/CloudManager;->getBucketName(Ljava/lang/String;Lcn/nubia/improve/xcloud/CloudBucket;)Ljava/lang/String;

    .line 321
    :cond_0
    iget-object p2, p2, Lcn/nubia/improve/xcloud/CloudBucket;->mFilePaths:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private checkNetworkState()Z
    .locals 5

    .line 515
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x32

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->isWifiDataEnable(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :try_start_1
    iget-object v4, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/gallery3d/common/NetworkUtils;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v0, v3

    :catch_1
    move v4, v3

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v4, :cond_2

    .line 528
    sget-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/16 v4, 0x69

    .line 529
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 534
    :cond_1
    sget-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/16 v4, 0x68

    .line 535
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return v3
.end method

.method private createFolder(Ljava/lang/String;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$3;-><init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/cloud/storage/common/CloudStorage;->makeDir(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method private deleteUndoneTask()V
    .locals 1

    .line 832
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteUndoneTask(Landroid/content/Context;)V

    return-void
.end method

.method private dismissCloudDialog()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private downloadImage(Ljava/util/ArrayList;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    sget-object p1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 p2, 0x68

    const-wide/16 v0, 0x32

    .line 360
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    .line 365
    :cond_2
    iget-wide v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 368
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 370
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 373
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 374
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 376
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 377
    iget-object v6, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downfile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/xcloud/pluginAlbum/AlbumConfig;->DOWNLOADPATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/xcloud/pluginAlbum/AlbumConfig;->DOWNLOADPATH:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_4
    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/improve/xcloud/CloudManager;->downloadImage(Ljava/util/HashMap;J)V

    return-void
.end method

.method private downloadImage(Ljava/util/HashMap;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    sget-object p1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 p2, 0x68

    const-wide/16 v0, 0x32

    .line 391
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/improve/xcloud/CloudManager;->startCloudTaskService(Ljava/util/HashMap;JZ)V

    return-void
.end method

.method private getBucketName(Ljava/lang/String;Lcn/nubia/improve/xcloud/CloudBucket;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 330
    iput-object p1, p2, Lcn/nubia/improve/xcloud/CloudBucket;->bucketPath:Ljava/lang/String;

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 331
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 333
    iput-object p1, p2, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    return-object p1
.end method

.method private getCloudAlbumSet()Lcn/nubia/cloud/ui/CloudAlbumSet;
    .locals 3

    .line 838
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcn/nubia/gallery3d/app/GalleryActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 839
    check-cast v0, Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    goto :goto_0

    .line 840
    :cond_0
    instance-of v1, v0, Lcn/nubia/gallery3d/app/GalleryApp;

    if-eqz v1, :cond_1

    .line 841
    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 844
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/nubia/cloud/ui/CloudAlbumSet;

    :cond_2
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;
    .locals 2

    const-class v0, Lcn/nubia/improve/xcloud/CloudManager;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcn/nubia/improve/xcloud/CloudManager;->mInstance:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/CloudManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/improve/xcloud/CloudManager;->mInstance:Lcn/nubia/improve/xcloud/CloudManager;

    .line 143
    :cond_0
    sget-object p0, Lcn/nubia/improve/xcloud/CloudManager;->mInstance:Lcn/nubia/improve/xcloud/CloudManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getQuota()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager$12;

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/CloudManager$12;-><init>(Lcn/nubia/improve/xcloud/CloudManager;)V

    invoke-interface {v0, v1}, Lcn/nubia/cloud/storage/common/CloudStorage;->getQuota(Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method private initHander()V
    .locals 2

    .line 158
    new-instance v0, Lcn/nubia/improve/xcloud/CloudManager$1;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/xcloud/CloudManager$1;-><init>(Lcn/nubia/improve/xcloud/CloudManager;Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    return-void
.end method

.method private movePhotoList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    .line 639
    iget-boolean v2, v1, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    if-eqz v2, :cond_0

    .line 640
    iget-object v1, v1, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->movePhotos(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_0
    iget-object v2, v1, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100239

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    .line 645
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100245

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/CloudPictures"

    .line 646
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 648
    new-instance v3, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    iget-object v4, v1, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v3, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " is image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " sourcePath : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 653
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 654
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager$8;

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/CloudManager$8;-><init>(Lcn/nubia/improve/xcloud/CloudManager;)V

    invoke-interface {p1, v0, v1}, Lcn/nubia/cloud/storage/common/CloudStorage;->moveFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    :cond_2
    return-void
.end method

.method private printAllFiles(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 292
    new-instance v1, Lcn/nubia/improve/xcloud/CloudBucket;

    invoke-direct {v1}, Lcn/nubia/improve/xcloud/CloudBucket;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 294
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    .line 298
    iget-object v5, v4, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    .line 299
    iget-boolean v4, v4, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {p0, v5}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_0
    invoke-direct {p0, v5, v1}, Lcn/nubia/improve/xcloud/CloudManager;->addImageToCloudAlbum(Ljava/lang/String;Lcn/nubia/improve/xcloud/CloudBucket;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListAlbumListener:Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 308
    iget v3, p0, Lcn/nubia/improve/xcloud/CloudManager;->requestTimes:I

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudManager;->responseTime:I

    if-ne v3, v4, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-interface {p1, v1, v3}, Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;->addAlbum(Lcn/nubia/improve/xcloud/CloudBucket;Z)V

    .line 310
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListListener:Lcn/nubia/improve/xcloud/CloudManager$ListListener;

    if-eqz p1, :cond_5

    .line 311
    iget v3, p0, Lcn/nubia/improve/xcloud/CloudManager;->requestTimes:I

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudManager;->responseTime:I

    if-ne v3, v4, :cond_4

    move v2, v0

    :cond_4
    invoke-interface {p1, v1, v2}, Lcn/nubia/improve/xcloud/CloudManager$ListListener;->addAlbum(Lcn/nubia/improve/xcloud/CloudBucket;Z)V

    :cond_5
    return-void
.end method

.method private startCloudTaskService(Ljava/util/HashMap;JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startCloudTaskService file size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "size"

    .line 494
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "map"

    .line 495
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "isupload"

    .line 496
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 497
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private startCloudTaskService(Ljava/util/HashMap;JZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startCloudTaskService file size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "size"

    .line 505
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "map"

    .line 506
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "isupload"

    .line 507
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isBackup"

    .line 508
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private upload(Ljava/util/HashMap;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    sget-object p1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p2, 0x68

    const-wide/16 v0, 0x32

    .line 433
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 437
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/improve/xcloud/CloudManager;->startCloudTaskService(Ljava/util/HashMap;JZ)V

    return-void
.end method


# virtual methods
.method public autoBackupFiles()V
    .locals 13

    .line 441
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    sget-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x68

    const-wide/16 v2, 0x32

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "state=\'-1\' OR state=\'102\' OR state=\'101\' OR state=\'0\'"

    .line 452
    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v1

    const/4 v2, 0x0

    .line 454
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    .line 457
    :try_start_0
    invoke-virtual {v1, v3, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    :goto_0
    move v1, v0

    move-wide v5, v10

    :cond_2
    if-eqz v2, :cond_4

    .line 459
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "localpath"

    .line 461
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 460
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cloudpath"

    .line 463
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 462
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 464
    iget-object v7, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "localPath="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "cloudPath="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 467
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 468
    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/16 v3, 0x12c

    if-lt v1, v3, :cond_2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v9

    .line 472
    invoke-direct/range {v3 .. v8}, Lcn/nubia/improve/xcloud/CloudManager;->startCloudTaskService(Ljava/util/HashMap;JZZ)V

    .line 475
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 481
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v9

    .line 487
    invoke-direct/range {v3 .. v8}, Lcn/nubia/improve/xcloud/CloudManager;->startCloudTaskService(Ljava/util/HashMap;JZZ)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 481
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 483
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    :cond_6
    :goto_2
    throw v0
.end method

.method public checkNames(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager$13;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/improve/xcloud/CloudManager$13;-><init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/cloud/storage/common/CloudStorage;->checkCloudFilesExit(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method public deletePhoto(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 705
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->getCloudAlbumSet()Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v2, Lcn/nubia/improve/xcloud/CloudManager$10;

    invoke-direct {v2, p0, p1, v0}, Lcn/nubia/improve/xcloud/CloudManager$10;-><init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/ArrayList;Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    invoke-interface {v1, p1, v2}, Lcn/nubia/cloud/storage/common/CloudStorage;->deleteFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doUseMobileData(Landroid/content/Context;)V
    .locals 3

    .line 545
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f100180

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f10017f

    .line 548
    :goto_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 549
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v2, 0x7f1100a5

    invoke-direct {v1, p1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f100060

    new-instance v2, Lcn/nubia/improve/xcloud/CloudManager$5;

    invoke-direct {v2, p0}, Lcn/nubia/improve/xcloud/CloudManager$5;-><init>(Lcn/nubia/improve/xcloud/CloudManager;)V

    .line 550
    invoke-virtual {v1, p1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10004e

    new-instance v2, Lcn/nubia/improve/xcloud/CloudManager$4;

    invoke-direct {v2, p0}, Lcn/nubia/improve/xcloud/CloudManager$4;-><init>(Lcn/nubia/improve/xcloud/CloudManager;)V

    .line 563
    invoke-virtual {p1, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 570
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(I)V

    .line 571
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method public download(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    .line 342
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDownloadPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDownloadPaths:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 344
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    .line 345
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->checkNetworkState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    const p2, 0x7f100099

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 348
    iget-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 349
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDownloadPaths:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->downloadImage(Ljava/util/ArrayList;J)V

    :cond_0
    return-void
.end method

.method public getCloudServiceVersion()V
    .locals 2

    .line 857
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    invoke-interface {v0}, Lcn/nubia/cloud/storage/common/CloudStorage;->getStorageEngineVersion()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 859
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->isSupportCheckNames:Z

    :cond_0
    return-void
.end method

.method public isLogin()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mIsLogin:Z

    return v0
.end method

.method public isLogining()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mIsLogining:Z

    return v0
.end method

.method public isSupportCheckNames()Z
    .locals 3

    .line 852
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportCheckNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->isSupportCheckNames:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->isSupportCheckNames:Z

    return v0
.end method

.method public list(Ljava/lang/String;)V
    .locals 4

    .line 227
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->requestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->requestTimes:I

    .line 228
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/improve/xcloud/CloudManager;->requestTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$2;-><init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/lang/String;)V

    const-string v2, "name"

    const-string v3, "asc"

    invoke-interface {v0, p1, v2, v3, v1}, Lcn/nubia/cloud/storage/common/CloudStorage;->getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method public loadIcon(Ljava/lang/String;ILcn/nubia/improve/xcloud/CloudManager$LoadImageListener;)V
    .locals 6

    .line 596
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v5, Lcn/nubia/improve/xcloud/CloudManager$6;

    invoke-direct {v5, p0, p3, p1}, Lcn/nubia/improve/xcloud/CloudManager$6;-><init>(Lcn/nubia/improve/xcloud/CloudManager;Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;Ljava/lang/String;)V

    const/16 v2, 0x64

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/CloudStorage;->thumbnail(Ljava/lang/String;IIILcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method public movePhotos(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "/apps/nubia_cloud/CloudPictures"

    .line 617
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePhotos oldPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance v1, Lcn/nubia/improve/xcloud/CloudManager$7;

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/CloudManager$7;-><init>(Lcn/nubia/improve/xcloud/CloudManager;)V

    const-string v2, "name"

    const-string v3, "asc"

    invoke-interface {v0, p1, v2, v3, v1}, Lcn/nubia/cloud/storage/common/CloudStorage;->getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method public networkUnenable(Landroid/content/Context;)V
    .locals 2

    .line 582
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 584
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    .line 589
    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public removeUploadTasks()V
    .locals 0

    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "."

    .line 746
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 750
    :goto_0
    new-instance v2, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mStorageEngine:Lcn/nubia/cloud/storage/common/CloudStorage;

    new-instance p2, Lcn/nubia/improve/xcloud/CloudManager$11;

    invoke-direct {p2, p0}, Lcn/nubia/improve/xcloud/CloudManager$11;-><init>(Lcn/nubia/improve/xcloud/CloudManager;)V

    invoke-interface {p1, v0, p2}, Lcn/nubia/cloud/storage/common/CloudStorage;->renameFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method

.method public resetListListener()V
    .locals 1

    const/4 v0, 0x0

    .line 802
    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListListener:Lcn/nubia/improve/xcloud/CloudManager$ListListener;

    return-void
.end method

.method public setDeleteListener(Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mDeleteListener:Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    return-void
.end method

.method public setListListener(Lcn/nubia/improve/xcloud/CloudManager$ListListener;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListListener:Lcn/nubia/improve/xcloud/CloudManager$ListListener;

    return-void
.end method

.method public setListener(Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mListAlbumListener:Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;

    return-void
.end method

.method public setLogin(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mIsLogin:Z

    return-void
.end method

.method public setLoginListener(Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mLoginStatusListener:Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;

    return-void
.end method

.method public setRenameListener(Lcn/nubia/improve/xcloud/CloudManager$RenameListener;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mRenameListener:Lcn/nubia/improve/xcloud/CloudManager$RenameListener;

    return-void
.end method

.method public setUploadListener(Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileTaskListener:Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;

    return-void
.end method

.method public shareImage(Landroid/content/Context;Ljava/util/HashMap;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    .line 423
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 424
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 425
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    .line 426
    iput-wide p3, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    .line 427
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/improve/xcloud/CloudManager;->upload(Ljava/util/HashMap;J)V

    return-void
.end method

.method public upLoadFolder(Landroid/content/Context;Ljava/util/HashMap;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    .line 401
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 402
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x2

    .line 403
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    .line 404
    iput-wide p3, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    .line 405
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->checkNetworkState()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 406
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/improve/xcloud/CloudManager;->upload(Ljava/util/HashMap;J)V

    :cond_0
    return-void
.end method

.method public upLoadImage(Landroid/content/Context;Ljava/util/HashMap;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mContext:Landroid/content/Context;

    .line 412
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 413
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mFileName:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 414
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudManager;->mCurrentJob:I

    .line 415
    iput-wide p3, p0, Lcn/nubia/improve/xcloud/CloudManager;->mTotalSize:J

    .line 416
    invoke-direct {p0}, Lcn/nubia/improve/xcloud/CloudManager;->checkNetworkState()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 417
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/improve/xcloud/CloudManager;->upload(Ljava/util/HashMap;J)V

    :cond_0
    return-void
.end method
