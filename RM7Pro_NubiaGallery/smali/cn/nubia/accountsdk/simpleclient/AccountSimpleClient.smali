.class public Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;
.super Ljava/lang/Object;
.source "AccountSimpleClient.java"


# static fields
.field private static final CERTIFICATION_ACTION:Ljava/lang/String; = "cn.nubia.account.CERTIFICATION_ACTION"

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOGIN_ACTION:Ljava/lang/String; = "cn.nubia.account.LOGIN_ENTER"

.field private static final NUBIA_ACCOUNT_CERTIFICATION_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.details.certification.CertificationActivity"

.field private static final NUBIA_ACCOUNT_DETAILS_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.details.AccountDetailActivity"

.field private static final NUBIA_ACCOUNT_LOGIN_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.AccountIntroActivity"

.field private static final NUBIA_ACCOUNT_PKGNAME:Ljava/lang/String; = "cn.nubia.accounts"

.field public static final REQUEST_TOKEN:I = 0x2710

.field public static final REQUEST_TOKEN_CERTIFICATION:I = 0x2711

.field private static final SETTING_ENTER_DETAILS_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTING_ENTER_ACCOUNT_DETAILS_ACTION"

.field private static final SETTING_ENTER_VIP_SERVICE_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTING_ENTER_VIP_SERVICE_ACTION"

.field private static final USERCENTER_ACTION:Ljava/lang/String; = "nubia.usercenter.action.main"

.field private static final USERCENTER_PACKAGE:Ljava/lang/String; = "cn.nubia.usercenter"

.field private static volatile mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

.field private final mIsSurport:Z

.field private final mIsSurportCertification:Z

.field private final mIsSurportWebSynLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    .line 55
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isNubiaAccountAppSurport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    .line 56
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isSurportWebSynLogin(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportWebSynLogin:Z

    .line 57
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isSurportCertification(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportCertification:Z

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;
    .locals 2

    const-string v0, "Error:Context can not be null!"

    .line 62
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 71
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    return-object p0
.end method

.method public static release()V
    .locals 1

    .line 75
    sget-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    :cond_0
    return-void
.end method

.method private throwException()V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params error,please check it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 305
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportWebSynLogin:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;

    invoke-direct {v1, p1, p2}, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;-><init>(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x8

    .line 310
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-interface {p2, p1}, Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x9

    .line 314
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-interface {p2, p1}, Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;->onException(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 191
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;

    invoke-direct {v1, p1, p2}, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;-><init>(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x8

    .line 196
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-interface {p2, p1}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x9

    .line 200
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-interface {p2, p1}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;->onException(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getBaiduAccountInfo(Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 152
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/GetBaiduAccountInfoAsyncRequest;

    invoke-direct {v1, p1}, Lcn/nubia/accountsdk/service/GetBaiduAccountInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x8

    .line 157
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-interface {p1, v0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x9

    .line 161
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-interface {p1, v0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onException(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/GetCloudSpaceAsyncRequest;

    invoke-direct {v1, p1}, Lcn/nubia/accountsdk/service/GetCloudSpaceAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x8

    .line 138
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x9

    .line 142
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/GetSysAccountInfoAsyncRequest;

    invoke-direct {v1, p1}, Lcn/nubia/accountsdk/service/GetSysAccountInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x8

    .line 102
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x9

    .line 106
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;

    invoke-direct {v1, p1}, Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x8

    .line 120
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x9

    .line 124
    invoke-static {v0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isNubiaRom()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInNubiaRom(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSurportCertification()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportCertification:Z

    return v0
.end method

.method public isSurportNewApi()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    return v0
.end method

.method public isVipDevice()Z
    .locals 1

    .line 254
    invoke-static {}, Lcn/nubia/accountsdk/common/SDKUtils;->isVipDevice()Z

    move-result v0

    return v0
.end method

.method public jumptoAccountDetailActivity(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cn.nubia.cloud"

    .line 227
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.nubia.usercenter"

    .line 228
    invoke-static {p1, v2}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "nubia.usercenter.action.main"

    .line 229
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p1, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "nubia.cloud.action.UserCenter"

    .line 234
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.details.AccountDetailActivity"

    .line 236
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cn.nubia.account.SETTING_ENTER_ACCOUNT_DETAILS_ACTION"

    .line 237
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 242
    sget-boolean p1, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x7

    .line 244
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public jumptoCertificationActivity(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/accountsdk/common/CetificationLackingException;
        }
    .end annotation

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.details.certification.CertificationActivity"

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.account.CERTIFICATION_ACTION"

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2711

    .line 296
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 298
    :catch_0
    new-instance p1, Lcn/nubia/accountsdk/common/CetificationLackingException;

    invoke-direct {p1}, Lcn/nubia/accountsdk/common/CetificationLackingException;-><init>()V

    throw p1
.end method

.method public jumptoVipServicePage(Landroid/content/Context;)V
    .locals 3

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.AccountIntroActivity"

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.account.SETTING_ENTER_VIP_SERVICE_ACTION"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    sget-boolean p1, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x7

    .line 266
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public loginOrRegister(Landroid/app/Activity;)V
    .locals 3

    .line 210
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.AccountIntroActivity"

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2710

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 215
    sget-boolean p1, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x7

    .line 217
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public reLoginWhenTokenInvalid(Landroid/app/Activity;)V
    .locals 3

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.AccountIntroActivity"

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.account.LOGIN_ENTER"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2710

    .line 279
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    sget-boolean p1, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x7

    .line 283
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public startBindBaiduAccount(ZLcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 172
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;-><init>(Ljava/lang/Boolean;Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x8

    .line 177
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-interface {p2, p1}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x9

    .line 181
    invoke-static {p1}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-interface {p2, p1}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onException(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
