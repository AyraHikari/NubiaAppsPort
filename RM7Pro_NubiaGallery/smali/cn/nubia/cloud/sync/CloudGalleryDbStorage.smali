.class public Lcn/nubia/cloud/sync/CloudGalleryDbStorage;
.super Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;
.source "CloudGalleryDbStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter<",
        "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final KEY_LAST_SYNC_VERSION:Ljava/lang/String; = "last_sync_version"

.field private static final SP_NAME_GALLERY_SYNC_CONFIG:Ljava/lang/String; = "gallery_sync_config"


# instance fields
.field private mBackup:Lcn/nubia/cloud/backup/Backup;

.field private mCloudGalleryDbManager:Lcn/nubia/cloud/sync/CloudGalleryDbManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    invoke-direct {p0, v0}, Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;-><init>(Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 17
    new-instance v0, Lcn/nubia/cloud/sync/CloudGalleryDbManager;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/CloudGalleryDbManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mCloudGalleryDbManager:Lcn/nubia/cloud/sync/CloudGalleryDbManager;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mBackup:Lcn/nubia/cloud/backup/Backup;

    .line 26
    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mBackup:Lcn/nubia/cloud/backup/Backup;

    return-void
.end method


# virtual methods
.method public getLastSyncVersion(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    iget-object v1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    const-string v2, "gallery_sync_config"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "account_name"

    const-string v2, ""

    .line 63
    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v0}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->clear()V

    .line 66
    invoke-virtual {v0, v1, p1}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x0

    const-string p1, "last_sync_version"

    .line 69
    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public onQueryDirtyData()Lcn/nubia/cloud/common/sync/SyncDataIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mBackup:Lcn/nubia/cloud/backup/Backup;

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mBackup:Lcn/nubia/cloud/backup/Backup;

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->getAutoBackupSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mBackup:Lcn/nubia/cloud/backup/Backup;

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->backupFolders()V

    .line 36
    :cond_0
    new-instance v0, Lcn/nubia/cloud/sync/DirtyImagesList;

    iget-object v1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/cloud/sync/DirtyImagesList;-><init>(Landroid/content/Context;)V

    const-string v1, "wanghuajie"

    const-string v2, "CloudGalleryDbStorage__onQueryDirtyData123456"

    .line 37
    invoke-static {v1, v2}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onSyncComplete(JLcn/nubia/cloud/common/sync/SyncDataIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "Lcn/nubia/cloud/common/sync/IDMap;",
            ">;)V"
        }
    .end annotation

    .line 47
    :goto_0
    invoke-interface {p3}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 48
    invoke-interface {p3, p1}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mCloudGalleryDbManager:Lcn/nubia/cloud/sync/CloudGalleryDbManager;

    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcn/nubia/cloud/sync/CloudGalleryDbManager;->updateIDMap(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p3}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->close()V

    .line 54
    iget-object p1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mCloudGalleryDbManager:Lcn/nubia/cloud/sync/CloudGalleryDbManager;

    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcn/nubia/cloud/sync/CloudGalleryDbManager;->updateDirty(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdateData(JLcn/nubia/cloud/common/sync/SyncDataIterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-interface {p3}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->getCount()J

    move-result-wide v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudGalleryDbStorage__onUpdateData__count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wanghuajie"

    invoke-static {v1, v0}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-interface {p3}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 86
    invoke-interface {p3, v0}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mCloudGalleryDbManager:Lcn/nubia/cloud/sync/CloudGalleryDbManager;

    iget-object v2, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/cloud/sync/CloudGalleryDbManager;->updateImagesData(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p3}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->close()V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->saveSyncVersion(J)V

    return-void
.end method

.method public saveSyncVersion(J)V
    .locals 3

    .line 73
    new-instance v0, Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    iget-object v1, p0, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->mContext:Landroid/content/Context;

    const-string v2, "gallery_sync_config"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_sync_version"

    .line 75
    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->put(Ljava/lang/String;J)V

    return-void
.end method
