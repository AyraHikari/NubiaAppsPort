.class public Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;
.super Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;
.source "OldInfoAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAuthListenerIml"
.end annotation


# instance fields
.field private mIsFinish:Z

.field private mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mIsFinish:Z

    return-void
.end method


# virtual methods
.method public get()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 4

    .line 59
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 67
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    return-object v0

    :catchall_0
    move-exception v1

    .line 67
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onComplete(Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->getTokenKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/cloud/accounts/NBAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    .line 90
    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->getmHeadImage()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->headImage:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mIsFinish:Z

    .line 93
    iget-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 94
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

    .line 73
    iget-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 74
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mIsFinish:Z

    .line 75
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 76
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-boolean p1, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 78
    invoke-static {p2}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 76
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
