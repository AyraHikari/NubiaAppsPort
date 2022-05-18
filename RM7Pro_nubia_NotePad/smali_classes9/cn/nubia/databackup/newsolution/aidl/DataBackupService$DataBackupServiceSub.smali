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
    .line 140
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    .line 142
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
    .line 170
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 171
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cancelBackup()V

    .line 172
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
    .line 176
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 177
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cancelRestore()V

    .line 178
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
    .line 211
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 212
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteData(Ljava/lang/String;)V

    .line 213
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
    .line 146
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 147
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    const/4 v0, 0x0

    .line 148
    .local v0, "backupEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    if-eqz v1, :cond_0

    .line 149
    invoke-static {v1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->access$000(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)Ljava/util/List;

    move-result-object v0

    .line 151
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
    .line 183
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 184
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->setPauseBackup(Z)V

    .line 185
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
    .line 190
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 191
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->setPauseRestore(Z)V

    .line 192
    return-void
.end method

.method public startBackup(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 3
    .param p1, "token"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v2, "startBackup"

    invoke-static {v2}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    .line 159
    .local v0, "isBackupSuccess":Z
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 160
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    if-eqz v1, :cond_0

    .line 161
    invoke-static {v1, p1, p2, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->access$100(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRestore(ILjava/lang/String;Ljava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 3
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
    .line 197
    const-string v2, "startRestore "

    invoke-static {v2}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    .line 199
    .local v0, "isRestoreSuccess":Z
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 200
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1, p1, p3, p4}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    .line 206
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
