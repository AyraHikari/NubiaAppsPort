.class Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;
.super Lcn/nubia/cloud/accounts/oldaccount/IAccountInfoListener$Stub;
.source "OldAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfoListener"
.end annotation


# instance fields
.field private mBaiduToken:Ljava/lang/String;

.field private mException:Ljava/lang/String;

.field private mIsFinish:Z

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountInfoListener$Stub;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mIsFinish:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$1;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mIsFinish:Z

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 117
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mException:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mBaiduToken:Ljava/lang/String;

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/RequestException;

    sget-object v1, Lcn/nubia/cloud/common/ErrorCode;->BIND_BAIDU_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mException:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/RequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 117
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 104
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mIsFinish:Z

    .line 105
    iget-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "get baidu token onCancel"

    .line 108
    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object p2, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter p2

    .line 80
    :try_start_0
    iput-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mBaiduToken:Ljava/lang/String;

    const/4 p3, 0x1

    .line 81
    iput-boolean p3, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mIsFinish:Z

    .line 82
    iget-object p3, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 83
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sget-boolean p2, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "get baidu token baiduToken:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onException(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iput-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mException:Ljava/lang/String;

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mIsFinish:Z

    .line 94
    iget-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get baidu token exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
