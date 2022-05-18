.class public Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "IGetAccountInfoListenerIml.java"


# instance fields
.field private mIsFinish:Z

.field private mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mIsFinish:Z

    return-void
.end method


# virtual methods
.method public get()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 2

    .line 15
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 18
    :try_start_1
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 20
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    return-object v0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/cloud/accounts/NBAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    .line 35
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->nickName:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getMobile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->mobile:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->email:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->headImage:Landroid/graphics/Bitmap;

    .line 39
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mNubiaAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getVipStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/nubia/cloud/accounts/NBAccountInfo;->setVipStatus(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mIsFinish:Z

    .line 42
    iget-object p1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object p1, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 49
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mIsFinish:Z

    .line 50
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 51
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-boolean p1, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 53
    invoke-static {p2}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 51
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
