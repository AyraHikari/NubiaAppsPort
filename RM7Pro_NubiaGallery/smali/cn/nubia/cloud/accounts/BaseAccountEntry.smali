.class public abstract Lcn/nubia/cloud/accounts/BaseAccountEntry;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Lcn/nubia/cloud/accounts/AccountEntry;


# static fields
.field public static final KEY_CLOUD_TOKEN:Ljava/lang/String; = "cloud_token"

.field public static final KEY_CLOUD_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final KEY_USER_TOKEN:Ljava/lang/String; = "user_token"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field protected final mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field private final mContext:Landroid/content/Context;

.field private mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

.field protected final mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-static {p1}, Lcn/nubia/cloud/common/dev/CloudConfigCtrl;->getServerType(Landroid/content/Context;)Lcn/nubia/cloud/common/dev/ServerType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/dev/ServerType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/common/dev/ServerType;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1, p2}, Lcn/nubia/cloud/accounts/AccountClientHelper;->createAccountClient(Landroid/content/Context;Lcn/nubia/cloud/common/dev/ServerType;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    .line 35
    new-instance p1, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string p2, "cloud_account"

    invoke-direct {p1, v0, p2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    .line 36
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/accounts/BaseAccountEntry;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->requestNubiaAcccountInfo(Z)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 44
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/cloud/accounts/BaseAccountEntry$1;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry$1;-><init>(Lcn/nubia/cloud/accounts/BaseAccountEntry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadLoalSaveCloudToken()Ljava/lang/String;
    .locals 6

    .line 225
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "expires_in"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "cloud_token"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private loginCloud()Lcn/nubia/cloud/accounts/CloudTokenResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v0

    .line 202
    sget-boolean v1, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokenKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->tokenKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v1, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->tokenId:Ljava/lang/String;

    iget-object v2, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->tokenKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/cloud/accounts/SsoInfoCtrl;->fetchSsoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    iget-object v2, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->tokenId:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->build(Landroid/content/Context;)Lcn/nubia/cloud/accounts/DeviceInfo;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcn/nubia/cloud/accounts/CloudTokenRequest;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/accounts/DeviceInfo;)Lcn/nubia/cloud/accounts/CloudTokenRequest;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/cloud/common/NBHttpClient;->defaultClient(Landroid/content/Context;)Lcn/nubia/cloud/common/NBHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/cloud/common/NBHttpClient;->doRequest(Lcn/nubia/cloud/net/PostSyncRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/accounts/CloudTokenResponse;

    .line 214
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->getCloudToken()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->getCloudTokenExpiresIn()I

    move-result v2

    int-to-long v2, v2

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 218
    iget-object v3, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v4, "cloud_token"

    invoke-virtual {v3, v4, v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v3, "expires_in"

    invoke-virtual {v1, v3, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;I)V

    :cond_1
    return-object v0

    .line 207
    :cond_2
    new-instance v0, Lcn/nubia/cloud/common/RequestException;

    sget-object v1, Lcn/nubia/cloud/common/ErrorCode;->UNKNOWN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v1

    const-string v2, "loginCloud error, ssoInfo is null"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/RequestException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private notifyAccountChanged()V
    .locals 0

    return-void
.end method

.method private requestNubiaAcccountInfo(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->isAccountLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    .line 76
    iput-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    .line 78
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    if-nez p1, :cond_3

    .line 79
    sget-object p1, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->onGetNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v1, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->createSyncAccount(Landroid/content/Context;)V

    .line 87
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->createUserAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iput-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcn/nubia/cloud/accounts/AccountNotFountException;

    const-string v1, "nubia account user name is null"

    invoke-direct {v0, v1}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 73
    :cond_4
    iput-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    .line 74
    new-instance p1, Lcn/nubia/cloud/accounts/AccountNotFountException;

    const-string v0, "nubia account not exist"

    invoke-direct {p1, v0}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendBroadcastFirstLogin()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    const-string v2, "cloud_account"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "has_send_roadcast"

    .line 61
    invoke-virtual {v0, v2, v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v2, v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Z)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.cloud.AccountChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "change"

    const-string v2, "login"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindBaiduAccount(Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 142
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindBaiduAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->onBindBaiduAccount(Z)Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 148
    iput-object p1, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->baiduToken:Ljava/lang/String;

    .line 149
    iget-object p1, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->baiduToken:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBaiduPCSToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v0

    .line 111
    iget-object v1, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->baiduToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->onGetBaiduPCSToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->baiduToken:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v0, v0, Lcn/nubia/cloud/accounts/NBAccountInfo;->baiduToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatUserData(Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public getIntUserData(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public getLongUserData(Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-wide p2
.end method

.method public getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->requestNubiaAcccountInfo(Z)V

    .line 102
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lcn/nubia/cloud/accounts/AccountNotFountException;

    const-string v1, "nubia account not exist"

    invoke-direct {v0, v1}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->getStringUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcn/nubia/cloud/accounts/AccountNotFountException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/AccountNotFountException;->printStackTrace()V

    return-object p2
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->onGetUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountLogin()Z
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getUserToken()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "user_token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    .line 125
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    invoke-virtual {v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->clear()V

    .line 126
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->notifyAccountChanged()V

    .line 129
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract onBindBaiduAccount(Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation
.end method

.method protected abstract onGetBaiduPCSToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation
.end method

.method protected abstract onGetNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation
.end method

.method protected abstract onGetUserToken()Ljava/lang/String;
.end method

.method public putUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 235
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcn/nubia/cloud/accounts/AccountNotFountException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/AccountNotFountException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mNBAccountInfo:Lcn/nubia/cloud/accounts/NBAccountInfo;

    return-void
.end method

.method public removeUserData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->putUserData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public requestCloudToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->loadLoalSaveCloudToken()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->loginCloud()Lcn/nubia/cloud/accounts/CloudTokenResponse;

    move-result-object v0

    .line 186
    sget-object v1, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_TOKEN_INVALID:Lcn/nubia/cloud/common/ErrorCode;

    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Lcn/nubia/cloud/common/ErrorCode;->codeOf(I)Lcn/nubia/cloud/common/ErrorCode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->refresh()V

    .line 188
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->loginCloud()Lcn/nubia/cloud/accounts/CloudTokenResponse;

    move-result-object v0

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->getCloudToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    new-instance v1, Lcn/nubia/cloud/common/RequestException;

    invoke-direct {v1, v0}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/utils/NBResponse;)V

    throw v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public requestUniqueCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 163
    new-instance v0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/AccountNetResponseListener;-><init>()V

    .line 164
    iget-object v1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry;->mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-virtual {v1, p1, p2, v0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->loginOrCheckAccount(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    .line 167
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->get()Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p1

    const-string p2, "unique_code"

    .line 168
    invoke-virtual {p1, p2}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    new-instance p2, Lcn/nubia/cloud/common/RequestException;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcn/nubia/cloud/common/RequestException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    new-instance p1, Lcn/nubia/cloud/common/RequestException;

    sget-object p2, Lcn/nubia/cloud/common/ErrorCode;->UNKNOWN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    invoke-direct {p1, p2}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/common/ErrorCode;)V

    throw p1
.end method
