.class public Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;
.super Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;
.source "IGetBaiduAccountInfoListenerIml.java"


# instance fields
.field private mBaiduPCSToken:Ljava/lang/String;

.field private mException:Ljava/lang/String;

.field private mIsFinish:Z

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mIsFinish:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 20
    :try_start_1
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mException:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mBaiduPCSToken:Ljava/lang/String;

    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/RequestException;

    sget-object v1, Lcn/nubia/cloud/common/ErrorCode;->BIND_BAIDU_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mException:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/RequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onCancel()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 36
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mIsFinish:Z

    .line 37
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "get baidu token onCancel"

    .line 40
    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter p2

    .line 47
    :try_start_0
    iput-object p1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mBaiduPCSToken:Ljava/lang/String;

    const/4 p3, 0x1

    .line 48
    iput-boolean p3, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mIsFinish:Z

    .line 49
    iget-object p3, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 50
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-boolean p2, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 52
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

    .line 50
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onException(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iput-object p1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mException:Ljava/lang/String;

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mIsFinish:Z

    .line 61
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 64
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

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
