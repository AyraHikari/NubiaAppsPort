.class Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;
.super Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;
.source "DataBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataBackupServiceSub"
.end annotation


# instance fields
.field mServiceRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/databackup/newsolution/aidl/DataBackupService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)V
    .locals 1
    .param p1, "service"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .prologue
    .line 207
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    .line 209
    return-void
.end method


# virtual methods
.method public cancelBackup(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 250
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cancelBackup()V

    .line 251
    return-void
.end method

.method public cancelRestore(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 256
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cancelRestore()V

    .line 257
    return-void
.end method

.method public deleteData(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 291
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteData(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public getBackupEntries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 214
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    const/4 v0, 0x0

    .line 215
    .local v0, "backupEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    if-eqz v1, :cond_0

    .line 216
    invoke-static {v1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->access$000(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)Ljava/util/List;

    move-result-object v0

    .line 218
    :cond_0
    return-object v0
.end method

.method public setPauseBackup(ZLjava/lang/String;)V
    .locals 2
    .param p1, "pause"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 263
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->setPauseBackup(Z)V

    .line 264
    return-void
.end method

.method public setPauseRestore(ZLjava/lang/String;)V
    .locals 2
    .param p1, "pause"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 270
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->setPauseRestore(Z)V

    .line 271
    return-void
.end method

.method public startBackup(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 5
    .param p1, "token"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v3, "DataBackupService"

    const-string v4, "startBackup"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x1

    .line 226
    .local v1, "isBackupSuccess":Z
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 227
    .local v2, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    invoke-virtual {v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_CALENDAR"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-interface {p3, p1, v3}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    const/4 v3, 0x0

    .line 244
    :goto_1
    return v3

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {v2, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startBackup(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    :goto_2
    move v3, v1

    .line 244
    goto :goto_1

    .line 242
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public startRestore(ILjava/lang/String;Ljava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 4
    .param p1, "token"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "dataFile"    # Ljava/lang/String;
    .param p4, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v2, "DataBackupService"

    const-string v3, "startRestore"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    .line 278
    .local v0, "isRestoreSuccess":Z
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 279
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1, p1, p3, p4}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
