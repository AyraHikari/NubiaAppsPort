.class public Lcn/nubia/cloud/accounts/NubiaAccountManager;
.super Ljava/lang/Object;
.source "NubiaAccountManager.java"


# static fields
.field private static volatile mInstance:Lcn/nubia/cloud/accounts/NubiaAccountManager;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    iput-object p1, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Lcn/nubia/cloud/accounts/AccountEntryFactory;->getSysAccountEntry(Landroid/content/Context;)Lcn/nubia/cloud/accounts/AccountEntry;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    return-void
.end method

.method private checkCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->isAccountLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v0, Lcn/nubia/cloud/accounts/AccountNotFountException;

    const-string v1, "nubia account not exist"

    invoke-direct {v0, v1}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcn/nubia/cloud/accounts/NubiaAccountManager;
    .locals 2

    .line 27
    sget-object v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mInstance:Lcn/nubia/cloud/accounts/NubiaAccountManager;

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mInstance:Lcn/nubia/cloud/accounts/NubiaAccountManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcn/nubia/cloud/accounts/NubiaAccountManager;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mInstance:Lcn/nubia/cloud/accounts/NubiaAccountManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mInstance:Lcn/nubia/cloud/accounts/NubiaAccountManager;

    return-object p0
.end method

.method public static switchToAccountDetailPage(Landroid/content/Context;)V
    .locals 1

    .line 120
    invoke-static {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->get(Landroid/content/Context;)Lcn/nubia/cloud/accounts/NubiaAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p0}, Lcn/nubia/cloud/accounts/AccountEntry;->switchToAccountDetailPage(Landroid/content/Context;)V

    return-void
.end method

.method public static switchToChangePassworldPage(Landroid/content/Context;)V
    .locals 1

    .line 124
    invoke-static {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->get(Landroid/content/Context;)Lcn/nubia/cloud/accounts/NubiaAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p0}, Lcn/nubia/cloud/accounts/AccountEntry;->switchToChangePassworldPage(Landroid/content/Context;)V

    return-void
.end method

.method public static switchToLoginPage(Landroid/app/Activity;I)V
    .locals 1

    .line 116
    invoke-static {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->get(Landroid/content/Context;)Lcn/nubia/cloud/accounts/NubiaAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p0, p1}, Lcn/nubia/cloud/accounts/AccountEntry;->switchToLoginPage(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public bindBaiduAccount(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->checkCall()V

    .line 58
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/accounts/AccountEntry;->bindBaiduAccount(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "@"

    const/4 v1, 0x2

    .line 103
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    array-length v0, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 108
    aget-object p1, p1, v0
    :try_end_0
    .catch Lcn/nubia/cloud/accounts/AccountNotFountException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 112
    :catch_0
    :cond_0
    new-instance p1, Lcn/nubia/cloud/common/RequestException;

    sget-object v0, Lcn/nubia/cloud/common/ErrorCode;->CLOUD_SESSION_INVALID:Lcn/nubia/cloud/common/ErrorCode;

    invoke-direct {p1, v0}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/common/ErrorCode;)V

    throw p1

    .line 101
    :cond_1
    new-instance p1, Lcn/nubia/cloud/common/RequestException;

    sget-object v0, Lcn/nubia/cloud/common/ErrorCode;->CLOUD_SESSION_INVALID:Lcn/nubia/cloud/common/ErrorCode;

    invoke-direct {p1, v0}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/common/ErrorCode;)V

    throw p1
.end method

.method public getBaiduPCSToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->checkCall()V

    .line 63
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/AccountEntry;->getBaiduPCSToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatUserData(Ljava/lang/String;F)F
    .locals 1

    .line 161
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/accounts/AccountEntry;->getFloatUserData(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getIntUserData(Ljava/lang/String;I)I
    .locals 1

    .line 153
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/accounts/AccountEntry;->getIntUserData(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLongUserData(Ljava/lang/String;J)J
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/cloud/accounts/AccountEntry;->getLongUserData(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->checkCall()V

    .line 53
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/AccountEntry;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/accounts/AccountEntry;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/AccountEntry;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountLogin()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/AccountEntry;->isAccountLogin()Z

    move-result v0

    return v0
.end method

.method public putUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/accounts/AccountEntry;->putUserData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/AccountEntry;->refresh()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 38
    sget-object v0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 39
    :try_start_0
    sput-object v1, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mInstance:Lcn/nubia/cloud/accounts/NubiaAccountManager;

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUserData(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/accounts/AccountEntry;->removeUserData(Ljava/lang/String;)V

    return-void
.end method

.method public requestCloudSession(Ljava/lang/String;)Lcn/nubia/cloud/utils/NBResponse;
    .locals 4

    const-string v0, "cloud_session"

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/NBAccountInfo;->getLoginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->requestUniqueCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/cloud/accounts/CloudSessionRequest;->create(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/cloud/accounts/CloudSessionRequest;

    move-result-object p1

    .line 82
    iget-object v2, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/cloud/common/NBHttpClient;->defaultClient(Landroid/content/Context;)Lcn/nubia/cloud/common/NBHttpClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/cloud/common/NBHttpClient;->doRequest(Lcn/nubia/cloud/net/PostSyncRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    .line 83
    invoke-virtual {p1}, Lcn/nubia/cloud/utils/NBResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/utils/NBResponse;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/cloud/accounts/AccountNotFountException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/cloud/common/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/RequestException;->getErrorCode()Lcn/nubia/cloud/common/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/cloud/common/RequestException;->getErrorCode()Lcn/nubia/cloud/common/ErrorCode;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcn/nubia/cloud/common/ErrorCode;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 91
    :catch_1
    new-instance p1, Lcn/nubia/cloud/utils/NBResponse;

    sget-object v0, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v0

    sget-object v1, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

    iget-object v2, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/nubia/cloud/common/ErrorCode;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public requestCloudToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->checkCall()V

    .line 74
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/AccountEntry;->requestCloudToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestUniqueCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NubiaAccountManager;->mAccountCtrl:Lcn/nubia/cloud/accounts/AccountEntry;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/accounts/AccountEntry;->requestUniqueCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
