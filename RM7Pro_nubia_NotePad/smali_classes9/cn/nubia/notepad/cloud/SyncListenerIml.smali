.class public final Lcn/nubia/notepad/cloud/SyncListenerIml;
.super Ljava/lang/Object;
.source "SyncListenerIml.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/SyncListener;


# static fields
.field private static mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;


# instance fields
.field private final ATTACH_DOWNLOAD_FAILED:I

.field private final ATTACH_UPLOAD_FAIL:I

.field private final CLOUD_ACCOUNT_NOT_LOGIN:I

.field private final CLOUD_TOO_FREQUENT:I

.field private final KEY_SYNC_PROGRESS_INFO:Ljava/lang/String;

.field private final SYNC_MIN_INTERVAL_TIME:I

.field private mFail:Z

.field private mHandler:Landroid/os/Handler;

.field private mStart:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->ATTACH_UPLOAD_FAIL:I

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->ATTACH_DOWNLOAD_FAILED:I

    .line 17
    const/16 v0, -0x2714

    iput v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->CLOUD_ACCOUNT_NOT_LOGIN:I

    .line 18
    const/16 v0, 0x7d0

    iput v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->SYNC_MIN_INTERVAL_TIME:I

    .line 19
    const/16 v0, -0x7d1

    iput v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->CLOUD_TOO_FREQUENT:I

    .line 20
    const-string v0, "sync_progress_info"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->KEY_SYNC_PROGRESS_INFO:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    .line 28
    iput-boolean v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcn/nubia/notepad/cloud/SyncListenerIml;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcn/nubia/notepad/cloud/SyncListenerIml;

    invoke-direct {v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;-><init>()V

    sput-object v0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    .line 35
    :cond_0
    sget-object v0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendEmptyMessage(I)V
    .locals 10
    .param p1, "what"    # I

    .prologue
    const-wide/16 v8, 0x7d0

    .line 120
    iget-object v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 123
    :cond_0
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 129
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Lcn/nubia/notepad/utils/Util;->getLastSyncTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 130
    .local v2, "sub":J
    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 131
    iget-object v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mHandler:Landroid/os/Handler;

    sub-long v4, v8, v2

    invoke-virtual {v1, p1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getStartStatus()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    return v0
.end method

.method public onComplete(Lcn/nubia/cloud/sync/common/SyncStatus;)V
    .locals 3
    .param p1, "status"    # Lcn/nubia/cloud/sync/common/SyncStatus;

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteUnuploadFile()V

    .line 107
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    if-nez v0, :cond_1

    .line 111
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;->sendEmptyMessage(I)V

    .line 115
    :goto_1
    iput-boolean v2, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    .line 116
    iput-boolean v2, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    goto :goto_0

    .line 113
    :cond_1
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;->sendEmptyMessage(I)V

    goto :goto_1
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    .line 88
    invoke-static {}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteUnuploadFile()V

    .line 89
    sparse-switch p1, :sswitch_data_0

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    .line 98
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;->sendEmptyMessage(I)V

    .line 101
    :goto_0
    return-void

    .line 91
    :sswitch_0
    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;->sendEmptyMessage(I)V

    goto :goto_0

    .line 94
    :sswitch_1
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;->sendEmptyMessage(I)V

    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x2714 -> :sswitch_0
        -0x7d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onProgress(Lcn/nubia/cloud/sync/common/SyncStatus;)V
    .locals 5
    .param p1, "status"    # Lcn/nubia/cloud/sync/common/SyncStatus;

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0x64

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sync_progress_info"

    .line 67
    invoke-virtual {p1, v2, v3}, Lcn/nubia/cloud/sync/common/SyncStatus;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 68
    const-string v1, "sync_progress_info"

    invoke-virtual {p1, v1, v3}, Lcn/nubia/cloud/sync/common/SyncStatus;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "progress":I
    sparse-switch v0, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 71
    :sswitch_0
    iput-boolean v4, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    goto :goto_0

    .line 74
    :sswitch_1
    iput-boolean v4, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    goto :goto_0

    .line 77
    :sswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public progressInterval()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public setFail(Z)V
    .locals 0
    .param p1, "fail"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    .line 57
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object p1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mFail:Z

    .line 42
    return-void
.end method

.method public setStart(ZZ)V
    .locals 1
    .param p1, "start"    # Z
    .param p2, "reopen"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcn/nubia/notepad/cloud/SyncListenerIml;->mStart:Z

    .line 46
    if-eqz p2, :cond_0

    .line 47
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/SyncListenerIml;->sendEmptyMessage(I)V

    .line 49
    :cond_0
    return-void
.end method
