.class public Lcn/nubia/music/app/AppUpdateManager;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/music/app/AppUpdateManager;


# instance fields
.field private mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

.field private mContext:Landroid/content/Context;

.field mDownLoadListener:Lcn/nubia/upgrade/http/IDownLoadListener;

.field private mIsUpgrading:Z

.field private mShowListener:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

.field private mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mIsUpgrading:Z

    .line 37
    new-instance v0, Lcn/nubia/music/app/AppUpdateManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/AppUpdateManager$1;-><init>(Lcn/nubia/music/app/AppUpdateManager;)V

    iput-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mDownLoadListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    .line 153
    invoke-direct {p0}, Lcn/nubia/music/app/AppUpdateManager;->initConfiguration()V

    .line 154
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/music/app/AppUpdateManager;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcn/nubia/music/app/AppUpdateManager;->mIsUpgrading:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/music/app/AppUpdateManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mShowListener:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcn/nubia/music/app/AppUpdateManager;->sInstance:Lcn/nubia/music/app/AppUpdateManager;

    if-nez v0, :cond_1

    .line 130
    const-class v1, Lcn/nubia/music/app/AppUpdateManager;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/AppUpdateManager;->sInstance:Lcn/nubia/music/app/AppUpdateManager;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcn/nubia/music/app/AppUpdateManager;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/AppUpdateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/app/AppUpdateManager;->sInstance:Lcn/nubia/music/app/AppUpdateManager;

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    sget-object v0, Lcn/nubia/music/app/AppUpdateManager;->sInstance:Lcn/nubia/music/app/AppUpdateManager;

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initConfiguration()V
    .locals 6

    .prologue
    const v5, 0x7f02008e

    const v4, 0x7f0b0018

    .line 157
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    new-instance v1, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    iput-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 159
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 160
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 161
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationContent(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 162
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 163
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 164
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    new-instance v2, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setDownloadRunMode(Lcn/nubia/upgrade/api/RunMode;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 165
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    new-instance v2, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setInstallRunMode(Lcn/nubia/upgrade/api/RunMode;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NubiaMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setDownloadPath(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 169
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/music/utils/HttpConstants;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {}, Lcn/nubia/music/utils/HttpConstants;->getAppSecretKey()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 172
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mBuilder:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->debug(Z)V

    .line 178
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mDownLoadListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 179
    return-void
.end method


# virtual methods
.method public checkUpdate(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mIsUpgrading:Z

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    new-instance v1, Lcn/nubia/music/app/AppUpdateManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/app/AppUpdateManager$2;-><init>(Lcn/nubia/music/app/AppUpdateManager;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    goto :goto_0
.end method

.method public clearListener()V
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcn/nubia/music/app/AppUpdateManager;->sInstance:Lcn/nubia/music/app/AppUpdateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mShowListener:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mShowListener:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    .line 267
    :cond_0
    return-void
.end method

.method public installIfApkExits()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getVersionData()Lcn/nubia/upgrade/model/VersionData;

    move-result-object v1

    .line 191
    if-nez v1, :cond_1

    .line 192
    const-string v1, "VersionData Null!!!"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    iget-object v2, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v2, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v2, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUpgrading()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mIsUpgrading:Z

    return v0
.end method

.method public pauseDownload()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->pauseDownload()V

    .line 183
    return-void
.end method

.method public setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcn/nubia/music/app/AppUpdateManager;->mShowListener:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    .line 143
    return-object p0
.end method

.method public startUpdate()V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getVersionData()Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    const-string v0, "VersionData Null!!!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v2, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager;->mUpdateManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v2, p0, Lcn/nubia/music/app/AppUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0
.end method
