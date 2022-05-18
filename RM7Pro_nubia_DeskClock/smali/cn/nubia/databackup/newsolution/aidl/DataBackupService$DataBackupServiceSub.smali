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
    .locals 2
    .param p1, "service"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;-><init>()V

    .line 72
    const-string v0, "DeskClock:[DataBackup]"

    const-string v1, "new Bind!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    .line 74
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
    .line 101
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 102
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cancelBackup()V

    .line 103
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
    .line 107
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 108
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cancelRestore()V

    .line 109
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
    .line 138
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 139
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteData(Ljava/lang/String;)V

    .line 140
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
    .line 78
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 79
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    const/4 v0, 0x0

    .line 80
    .local v0, "backupEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    if-eqz v1, :cond_0

    .line 81
    invoke-static {v1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->access$000(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)Ljava/util/List;

    move-result-object v0

    .line 83
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
    .line 113
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 114
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->setPauseBackup(Z)V

    .line 115
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
    .line 119
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 120
    .local v0, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    invoke-virtual {v0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->setPauseRestore(Z)V

    .line 121
    return-void
.end method

.method public startBackup(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 3
    .param p1, "token"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "isBackupSuccess":Z
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 91
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    if-eqz v1, :cond_0

    .line 92
    invoke-static {v1, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->access$100(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 94
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
    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "isRestoreSuccess":Z
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .line 128
    .local v1, "servicrTemp":Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1, p1, p3, p4}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
