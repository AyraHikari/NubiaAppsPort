.class public Lcn/nubia/cloud/backup/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/backup/Backup$AutoBackupListener;,
        Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;
    }
.end annotation


# static fields
.field public static final BACK_UP_TOGGLE:Ljava/lang/String; = "back_up_toggle"

.field public static final COMPLETE_STATE:I = 0x2

.field public static final ERROR_END_STATE:I = 0x5

.field public static final IDLE_STATE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "CloudAblumBackupSetting"

.field public static final NOT_START_BY_BATTERY_LEVEL_STATE:I = 0x6

.field public static final NOT_START_BY_DATA_CONNECTION_STATE:I = 0x4

.field public static final NOT_START_BY_WLAN_CONNECTION_STATE:I = 0x3

.field public static final SET:Ljava/lang/String; = "selectedAlbums"

.field private static final TAG:Ljava/lang/String; = "ImagesAutoBackup"

.field public static final UPLOADING_STATE:I = 0x1

.field public static final WLAN_TOGGLE:Ljava/lang/String; = "wlan_toggle"

.field private static mBackup:Lcn/nubia/cloud/backup/Backup;

.field private static mSelectedAlbums:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultBackupPath:Ljava/lang/String;

.field private mBackupFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryBroadcastReceiver:Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

.field private mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentItemPath:Ljava/lang/String;

.field private mCurrentItemSize:J

.field private mFilesCount:I

.field private mIsAutoBackup:Z

.field private mIsBackupByMobile:Z

.field private mIsBatteryCharging:Z

.field private mIsFileUploaded:Z

.field private mIsWlanConnected:Z

.field private mPathsToBackup:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mState:I

.field private mTaskFailedCount:I

.field private mUploadListener:Lcn/nubia/cloud/backup/Backup$AutoBackupListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 45
    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mUploadListener:Lcn/nubia/cloud/backup/Backup$AutoBackupListener;

    .line 47
    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mCurrentItemPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcn/nubia/cloud/backup/Backup;->mCurrentItemSize:J

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/cloud/backup/Backup;->defaultBackupPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcn/nubia/cloud/backup/Backup;->mFilesCount:I

    .line 52
    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mPathsToBackup:Ljava/util/Vector;

    .line 53
    iput v1, p0, Lcn/nubia/cloud/backup/Backup;->mState:I

    .line 54
    iput-boolean v1, p0, Lcn/nubia/cloud/backup/Backup;->mIsBackupByMobile:Z

    .line 55
    iput v1, p0, Lcn/nubia/cloud/backup/Backup;->mTaskFailedCount:I

    .line 65
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    .line 67
    iput-boolean v1, p0, Lcn/nubia/cloud/backup/Backup;->mIsBatteryCharging:Z

    .line 68
    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBatteryBroadcastReceiver:Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/backup/Backup;->setupService(Landroid/content/Context;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupStateListeners:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBatteryBroadcastReceiver:Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

    invoke-direct {v0}, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBatteryBroadcastReceiver:Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

    .line 81
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private abandonBackupFile(Ljava/lang/String;)V
    .locals 5

    .line 311
    invoke-direct {p0, p1}, Lcn/nubia/cloud/backup/Backup;->getDstPathFromSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localpath=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cloudpath"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "!=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x6a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deleteBackFileFromDatabase filePath :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "  cloudPath :"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImagesAutoBackup"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, -0x2

    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    invoke-virtual {p1, v2, v0, v1, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/backup/Backup;)Ljava/util/Vector;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/cloud/backup/Backup;->mPathsToBackup:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/cloud/backup/Backup;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/cloud/backup/Backup;->removeBackupAlbum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/cloud/backup/Backup;)Ljava/util/Vector;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/cloud/backup/Backup;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/cloud/backup/Backup;->uploadImageToCloud()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/cloud/backup/Backup;)Lcn/nubia/cloud/ui/CloudAlbumSet;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/cloud/backup/Backup;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    return-object p0
.end method

.method private addBackupFileToDatabase(Ljava/lang/String;)Z
    .locals 11

    .line 326
    invoke-direct {p0, p1}, Lcn/nubia/cloud/backup/Backup;->getDstPathFromSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addBackupFileToDatabase filePath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  cloudPath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagesAutoBackup"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localpath=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cloudpath"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v4, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v4

    const/4 v5, 0x1

    .line 330
    invoke-virtual {v4, v5, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 335
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, -0x1

    const-string v10, "state"

    if-nez v8, :cond_0

    .line 337
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 338
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "localpath"

    .line 339
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "taskid"

    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "tasktype"

    const-string v8, "UPLOAD"

    .line 342
    invoke-virtual {v1, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sourcetype"

    .line 343
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "totalsize"

    .line 344
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "currentsize"

    .line 345
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " addBackupFileToDatabase filePath : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "  cloudPath : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v4, v5, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValuesWithoutNotification(ILandroid/content/ContentValues;)J

    goto :goto_2

    .line 348
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v7

    .line 349
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 351
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v9, :cond_3

    const/16 v3, 0x66

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 359
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mPathsToBackup:Ljava/util/Vector;

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 361
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 362
    invoke-virtual {v4, v5, v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    move v0, v5

    goto :goto_0

    :cond_4
    move v5, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v6, :cond_5

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_5
    throw p1

    :cond_6
    move v5, v7

    :goto_2
    if-eqz v6, :cond_7

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    return v5
.end method

.method private backUpConditionsAreSatisfied()Z
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->getAutoBackupSetting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isBatteryCharging()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private bulkDeduplicateBackup(Ljava/util/ArrayList;Ljava/util/HashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, p3, :cond_0

    .line 271
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/backup/Backup;->deduplicateBackup(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method private checkNeedUploaded(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "ImagesAutoBackup"

    .line 394
    invoke-direct {p0, p1}, Lcn/nubia/cloud/backup/Backup;->getDstPathFromSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localpath=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\' AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "cloudpath"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "=\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x6a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v2, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 402
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 406
    iget v2, p0, Lcn/nubia/cloud/backup/Backup;->mFilesCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/cloud/backup/Backup;->mFilesCount:I

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFilesCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/cloud/backup/Backup;->mFilesCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 413
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_0
    throw v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 413
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1
.end method

.method private deduplicateBackup(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3
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

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 278
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->checkNames(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 279
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getDstPathFromSrcPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 569
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 570
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/apps/nubia_cloud/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10018d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    .line 574
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10018c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;
    .locals 2

    const-class v0, Lcn/nubia/cloud/backup/Backup;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcn/nubia/cloud/backup/Backup;->mBackup:Lcn/nubia/cloud/backup/Backup;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcn/nubia/cloud/backup/Backup;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/cloud/backup/Backup;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/cloud/backup/Backup;->mBackup:Lcn/nubia/cloud/backup/Backup;

    .line 113
    :cond_0
    sget-object p0, Lcn/nubia/cloud/backup/Backup;->mBackup:Lcn/nubia/cloud/backup/Backup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isDataConnected()Z
    .locals 3

    .line 381
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 383
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 389
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagesAutoBackup"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private listBackupFile(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    new-instance p1, Lcn/nubia/cloud/backup/Backup$2;

    invoke-direct {p1, p0}, Lcn/nubia/cloud/backup/Backup$2;-><init>(Lcn/nubia/cloud/backup/Backup;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeBackupAlbum(Ljava/lang/String;)V
    .locals 4

    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 286
    new-instance p1, Lcn/nubia/cloud/backup/Backup$3;

    invoke-direct {p1, p0}, Lcn/nubia/cloud/backup/Backup$3;-><init>(Lcn/nubia/cloud/backup/Backup;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 296
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 300
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/cloud/backup/Backup;->abandonBackupFile(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const-string p1, "ImagesAutoBackup"

    const-string v0, "folder is empty!!!"

    .line 297
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private stopBackUp()V
    .locals 2

    .line 604
    iget v0, p0, Lcn/nubia/cloud/backup/Backup;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    .line 606
    sget-object v0, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 607
    invoke-direct {p0, v1}, Lcn/nubia/cloud/backup/Backup;->removeBackupAlbum(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private traversBackUpFolder()V
    .locals 10

    .line 145
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->checkSeletedPaths()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    iput v1, p0, Lcn/nubia/cloud/backup/Backup;->mFilesCount:I

    .line 147
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcn/nubia/cloud/backup/Backup;->setupService(Landroid/content/Context;)V

    .line 148
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isLogin(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "ImagesAutoBackup"

    if-nez v2, :cond_0

    const-string v0, "plz login first!"

    .line 149
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v2}, Lcn/nubia/improve/xcloud/CloudManager;->getCloudServiceVersion()V

    if-eqz v0, :cond_a

    .line 154
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 155
    sget-object v5, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    sget-object v5, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_2
    new-instance v2, Ljava/util/Vector;

    sget-object v4, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 160
    sget-object v4, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 161
    sget-object v4, Lcn/nubia/cloud/backup/Backup;->mSelectedAlbums:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 163
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcn/nubia/cloud/backup/Backup;->mPathsToBackup:Ljava/util/Vector;

    .line 164
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/CloudManager;->isSupportCheckNames()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mPathsToBackup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, v2}, Lcn/nubia/cloud/backup/Backup;->listBackupFile(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 168
    array-length v5, v4

    if-nez v5, :cond_4

    goto :goto_3

    .line 172
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 175
    array-length v6, v4

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v4, v7

    .line 176
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    .line 177
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-direct {p0, v8}, Lcn/nubia/cloud/backup/Backup;->getDstPathFromSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 179
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct {p0, v8}, Lcn/nubia/cloud/backup/Backup;->getDstPathFromSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x12c

    .line 181
    invoke-direct {p0, v2, v5, v8}, Lcn/nubia/cloud/backup/Backup;->bulkDeduplicateBackup(Ljava/util/ArrayList;Ljava/util/HashMap;I)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 184
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 185
    invoke-direct {p0, v2, v5}, Lcn/nubia/cloud/backup/Backup;->deduplicateBackup(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_1

    .line 169
    :cond_7
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "folder is empty!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 189
    :cond_8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/cloud/backup/Backup$1;

    invoke-direct {v1, p0, v2}, Lcn/nubia/cloud/backup/Backup$1;-><init>(Lcn/nubia/cloud/backup/Backup;Ljava/util/Vector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_9
    return-void

    :cond_a
    const-string v0, "no folder is seleted!"

    .line 207
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private uploadImageToCloud()V
    .locals 4

    .line 435
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->getAutoBackupSetting()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ImagesAutoBackup"

    if-nez v0, :cond_0

    const-string v0, "getAutoBackupSetting() = false, return!"

    .line 436
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0, v1}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    return-void

    .line 440
    :cond_0
    invoke-direct {p0}, Lcn/nubia/cloud/backup/Backup;->isDataConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 441
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->getOnlyUploadOnWIFISetting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return! isWifiConnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getOnlyUploadOnWIFISetting()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->getOnlyUploadOnWIFISetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 446
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    return-void

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isBatteryCharging()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    .line 451
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    return-void

    .line 455
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->getOnlyUploadOnWIFISetting()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/cloud/backup/Backup;->isDataConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 456
    iput-boolean v3, p0, Lcn/nubia/cloud/backup/Backup;->mIsBackupByMobile:Z

    .line 458
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    iput-boolean v1, p0, Lcn/nubia/cloud/backup/Backup;->mIsBackupByMobile:Z

    .line 462
    :cond_5
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 466
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->getBackupState()I

    move-result v0

    if-ne v0, v3, :cond_7

    const-string v0, "BackupFiles are uploading"

    .line 467
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 471
    :cond_7
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/backup/Backup;->setupService(Landroid/content/Context;)V

    .line 472
    invoke-virtual {p0, v1}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    .line 473
    invoke-virtual {p0, v3}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    .line 474
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/CloudManager;->autoBackupFiles()V

    return-void

    .line 463
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->unbindService()V

    return-void
.end method


# virtual methods
.method public addOnBackupStateChangedListener(Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public backupFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public backupFiles(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public backupFolders()V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcn/nubia/cloud/backup/Backup;->backUpConditionsAreSatisfied()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagesAutoBackup"

    const-string v1, "start back up folders!!"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/cloud/backup/Backup;->traversBackUpFolder()V

    :cond_0
    return-void
.end method

.method public checkSeletedPaths()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    const-string v1, "CloudAblumBackupSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selectedAlbums"

    const/4 v2, 0x0

    .line 127
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAutoBackupSetting()Z
    .locals 3

    .line 223
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    const-string v1, "CloudAblumBackupSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "back_up_toggle"

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoBackupSetting ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagesAutoBackup"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getBackupFileCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackupState()I
    .locals 1

    .line 541
    iget v0, p0, Lcn/nubia/cloud/backup/Backup;->mState:I

    return v0
.end method

.method public getIsBackupByMobile()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcn/nubia/cloud/backup/Backup;->mIsBackupByMobile:Z

    return v0
.end method

.method public getOnlyUploadOnWIFISetting()Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    const-string v1, "CloudAblumBackupSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wlan_toggle"

    .line 215
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnlyUploadOnWIFI ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagesAutoBackup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getTaskFailedCount()I
    .locals 1

    .line 583
    iget v0, p0, Lcn/nubia/cloud/backup/Backup;->mTaskFailedCount:I

    return v0
.end method

.method public isBatteryCharging()Z
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsBatteryCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/cloud/backup/Backup;->mIsBatteryCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagesAutoBackup"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-boolean v0, p0, Lcn/nubia/cloud/backup/Backup;->mIsBatteryCharging:Z

    return v0
.end method

.method public isWifiConnected()Z
    .locals 4

    .line 478
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 483
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 492
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 493
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    move v1, v2

    .line 499
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/cloud/backup/Backup;->mIsWlanConnected:Z

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isWifiConnected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImagesAutoBackup"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onBackupFileSizeChanged(I)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;

    if-eqz v1, :cond_0

    .line 554
    invoke-interface {v1, p1}, Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;->onBackupSizeChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackupStateChanged(I)V
    .locals 2

    .line 545
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;

    if-eqz v1, :cond_0

    .line 547
    invoke-interface {v1, p1}, Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;->onBackupStateChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeOnBackupStateChangedListener(Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBackupStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackupState(I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 527
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->getTaskFailedCount(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcn/nubia/cloud/backup/Backup;->mTaskFailedCount:I

    if-lez v2, :cond_0

    const/4 p1, 0x5

    .line 531
    :cond_0
    iget v2, p0, Lcn/nubia/cloud/backup/Backup;->mState:I

    if-eq v2, v1, :cond_1

    if-ne v2, v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 534
    iget v2, p0, Lcn/nubia/cloud/backup/Backup;->mState:I

    if-eq v2, v1, :cond_3

    if-ne v2, v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 537
    :cond_4
    iput p1, p0, Lcn/nubia/cloud/backup/Backup;->mState:I

    .line 538
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/backup/Backup;->onBackupStateChanged(I)V

    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    .line 592
    iput-boolean p1, p0, Lcn/nubia/cloud/backup/Backup;->mIsBatteryCharging:Z

    return-void
.end method

.method public setDisCharging()V
    .locals 2

    .line 596
    iget-boolean v0, p0, Lcn/nubia/cloud/backup/Backup;->mIsBatteryCharging:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcn/nubia/cloud/backup/Backup;->stopBackUp()V

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcn/nubia/cloud/backup/Backup;->mIsBatteryCharging:Z

    :cond_0
    return-void
.end method

.method public setIsBackupByMobile(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lcn/nubia/cloud/backup/Backup;->mIsBackupByMobile:Z

    return-void
.end method

.method public setTaskFailedCount(I)V
    .locals 0

    .line 580
    iput p1, p0, Lcn/nubia/cloud/backup/Backup;->mTaskFailedCount:I

    return-void
.end method

.method public setupService(Landroid/content/Context;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v0, :cond_0

    .line 88
    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/backup/Backup;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    :cond_0
    return-void
.end method

.method public traversFolder(Ljava/lang/String;)V
    .locals 7

    .line 230
    invoke-direct {p0, p1}, Lcn/nubia/cloud/backup/Backup;->listBackupFile(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    const-string v0, "ImagesAutoBackup"

    if-eqz p1, :cond_3

    .line 231
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 236
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/cloud/backup/Backup;->addBackupFileToDatabase(Ljava/lang/String;)Z

    move-result v4

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " backupfile path :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  needUpload :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcn/nubia/cloud/backup/Backup;->mBackupFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "folder is empty!!!"

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unbindService()V
    .locals 3

    const/4 v0, 0x0

    .line 92
    sput-object v0, Lcn/nubia/cloud/backup/Backup;->mBackup:Lcn/nubia/cloud/backup/Backup;

    .line 93
    iget-object v1, p0, Lcn/nubia/cloud/backup/Backup;->mBatteryBroadcastReceiver:Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 94
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "ImagesAutoBackup"

    const-string v2, "unbindService unregisterReceiver mBatteryBroadcastReceiver"

    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object v0, p0, Lcn/nubia/cloud/backup/Backup;->mBatteryBroadcastReceiver:Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;

    :cond_0
    return-void
.end method
