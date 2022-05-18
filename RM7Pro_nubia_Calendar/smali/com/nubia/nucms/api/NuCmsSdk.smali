.class public Lcom/nubia/nucms/api/NuCmsSdk;
.super Ljava/lang/Object;
.source "NuCmsSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/api/NuCmsSdk$NuCmsSdkHolder;
    }
.end annotation


# static fields
.field public static final API_ALL_OPEN:I = -0x1

.field public static final API_NEWS:I = 0x1

.field public static final API_SCENE:I = 0x2

.field public static final API_SPORTS:I = 0x4

.field private static final MSG_FAIL:I = 0x2

.field private static final MSG_SUCCESS:I = 0x1

.field private static final PATTERN_SPORT_DATE:Ljava/lang/String; = "^[0-9]{4}-[01][0-9]-[0123][0-9]$"

.field public static final SCENE_CHANNEL_H5:I = 0x1

.field public static final SCENE_CHANNEL_QUICKAPP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NuCmsSdk"

.field private static final VERSION_CODE:J = 0x1L

.field public static final VERSION_NAME:Ljava/lang/String; = "nubia_cmssdk_V1.0.3"


# instance fields
.field private isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mApiSwitch:I

.field private mApkVersion:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAppSecretKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHanlder:Landroid/os/Handler;

.field private mNetClient:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mReyunDeviceId:Ljava/lang/String;

.field private mSspParam:Lcom/nubia/nucms/api/SspParamGen;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppId:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApkVersion:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mReyunDeviceId:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppSecretKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    .line 71
    const/4 v0, 0x7

    iput v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/nubia/nucms/api/NuCmsSdk$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nubia/nucms/api/NuCmsSdk$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nubia/nucms/api/NuCmsSdk;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/nucms/api/NuCmsSdk;
    .param p1, "x1"    # Lcom/nubia/nucms/api/NuCmsModelCallback;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->fail(Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;Lcom/nubia/nucms/bean/NuCmsStatusBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/nucms/api/NuCmsSdk;
    .param p1, "x1"    # Lcom/nubia/nucms/api/NuCmsModelCallback;
    .param p2, "x2"    # Lcom/nubia/nucms/bean/NuCmsStatusBean;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->success(Lcom/nubia/nucms/api/NuCmsModelCallback;Lcom/nubia/nucms/bean/NuCmsStatusBean;)V

    return-void
.end method

.method private check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 4
    .param p1, "api"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<*>;"
    const/4 v0, 0x0

    .line 199
    if-nez p2, :cond_0

    .line 220
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/nubia/nucms/api/NuCmsSdk;->isInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->SDK_NOT_INIT:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v1}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v1

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->SDK_NOT_INIT:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 204
    invoke-virtual {v2}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-direct {p0, p2, v1, v2}, Lcom/nubia/nucms/api/NuCmsSdk;->fail(Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    .line 205
    const-string v1, "NuCmsSdk"

    const-string v2, "requestNews, but not init"

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget v1, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_2

    .line 209
    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->API_SHUTDOWN:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v1}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nubia/nucms/api/NuCmsCallbackError;->API_SHUTDOWN:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 210
    invoke-virtual {v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-direct {p0, p2, v1, v2}, Lcom/nubia/nucms/api/NuCmsSdk;->fail(Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    .line 211
    const-string v1, "NuCmsSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "api ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] shutdown,pls open!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->NETWORK_NOT_READ:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v1}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v1

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->NETWORK_NOT_READ:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 216
    invoke-virtual {v2}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-direct {p0, p2, v1, v2}, Lcom/nubia/nucms/api/NuCmsSdk;->fail(Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    .line 217
    const-string v1, "NuCmsSdk"

    const-string v2, "no available net!"

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private fail(Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V
    .locals 4
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<+",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<+Lcom/nubia/nucms/bean/NuCmsStatusBean;>;"
    const/4 v3, 0x2

    .line 724
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p3, v0, v3

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 725
    .local v0, "data":[Ljava/lang/Object;
    invoke-direct {p0, v3, v0}, Lcom/nubia/nucms/api/NuCmsSdk;->postCallback(ILjava/lang/Object;)V

    .line 726
    return-void
.end method

.method public static getInstance()Lcom/nubia/nucms/api/NuCmsSdk;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsSdk$NuCmsSdkHolder;->access$100()Lcom/nubia/nucms/api/NuCmsSdk;

    move-result-object v0

    return-object v0
.end method

.method private postCallback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mHanlder:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 734
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 735
    return-void
.end method

.method private requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    .local p3, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<TT;>;"
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mReyunDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "system_version"

    invoke-static {}, Lcom/nubia/nucms/api/CacheManager;->getInstance()Lcom/nubia/nucms/api/CacheManager;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Lcom/nubia/nucms/api/CacheManager;->getPlatformVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "apk_version"

    iget-object v2, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApkVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "platform"

    const/4 v2, 0x1

    .line 595
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "request_time"

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "nt"

    iget-object v2, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mContext:Landroid/content/Context;

    .line 599
    invoke-static {v2}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getCurNetworkType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "imei"

    iget-object v2, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    invoke-virtual {v2}, Lcom/nubia/nucms/api/SspParamGen;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v1, "sign"

    .line 602
    invoke-static {p2}, Lcom/nubia/nucms/api/NuCmsApiUtils;->convertToMD5(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {p1, p2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;->addUrlParam(Ljava/util/List;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 604
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 605
    invoke-static {}, Lcom/nubia/nucms/api/ServerDef;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;->setBaseUrl(Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 606
    new-instance v0, Lcom/nubia/nucms/api/NuCmsSdk$2;

    invoke-direct {v0, p0, p3}, Lcom/nubia/nucms/api/NuCmsSdk$2;-><init>(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;->setHttpListener(Lcom/nubia/nucms/network/frame/NuCmsNetListener;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 718
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->setRunOnUiThread(Z)Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 719
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mNetClient:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    invoke-virtual {v0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->executeAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    .line 721
    return-void
.end method

.method private success(Lcom/nubia/nucms/api/NuCmsModelCallback;Lcom/nubia/nucms/bean/NuCmsStatusBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">(",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<TT;>;"
    .local p2, "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 728
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object v3, v0, v2

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 729
    .local v0, "data":[Ljava/lang/Object;
    invoke-direct {p0, v2, v0}, Lcom/nubia/nucms/api/NuCmsSdk;->postCallback(ILjava/lang/Object;)V

    .line 730
    return-void
.end method


# virtual methods
.method public apiSwitch(IZ)V
    .locals 2
    .param p1, "api"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    return-void
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/nubia/nucms/bean/NuCmsParamSdkInit;)Z
    .locals 9
    .param p1, "bean"    # Lcom/nubia/nucms/bean/NuCmsParamSdkInit;

    .prologue
    const/4 v8, 0x1

    .line 100
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 147
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->check(Lcom/nubia/nucms/bean/NuCmsParamSdkInit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getApiSwitch()I

    move-result v0

    iput v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApiSwitch:I

    .line 107
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppId:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppSecretKey:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getApkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mApkVersion:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/nubia/nucms/api/SspParamGen;

    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSspVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSspDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSspCuid()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSspClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSspDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/nubia/nucms/api/SspParamGen;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    .line 113
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    invoke-virtual {v0}, Lcom/nubia/nucms/api/SspParamGen;->start()V

    .line 114
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getReyunid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mReyunDeviceId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->isEnableLog()Z

    move-result v0

    invoke-static {v0}, Lcom/nubia/nucms/utils/NuCmsLog;->setEnable(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->isReleaseEnvir()Z

    move-result v0

    invoke-static {v0}, Lcom/nubia/nucms/api/ServerDef;->setReleaseEnvir(Z)V

    .line 117
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->build(Landroid/content/Context;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getJsonParser()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->setJsonConvertor(Lcom/nubia/nucms/network/frame/NuCmsJsonParser;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->create()Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mNetClient:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/nubia/nucms/api/NuCmsSdk$1;

    invoke-direct {v2, p0}, Lcom/nubia/nucms/api/NuCmsSdk$1;-><init>(Lcom/nubia/nucms/api/NuCmsSdk;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mHanlder:Landroid/os/Handler;

    .line 143
    const-string v0, "^[0-9]{4}-[01][0-9]-[0123][0-9]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mPattern:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "NuCmsSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ver_name:nubia_cmssdk_V1.0.3 ver_code:1 is_release_envir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->isReleaseEnvir()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->iRelease(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v8

    .line 147
    goto/16 :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public reportAdEvent(Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;",
            ">;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;>;"
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsStatusBean;>;"
    const/4 v2, 0x1

    .line 574
    invoke-direct {p0, v2, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 575
    const/4 v2, 0x0

    .line 583
    :goto_0
    return v2

    .line 577
    :cond_0
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v3, "/report/client_ads_event.do"

    invoke-direct {v1, v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "ua"

    sget-object v5, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "data"

    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-direct {p0, v1, v0, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto :goto_0
.end method

.method public reportGameEvent(Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 7
    .param p1, "event"    # Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;",
            ">;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;>;"
    .local p3, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsStatusBean;>;"
    const/4 v3, 0x1

    .line 509
    invoke-direct {p0, v3, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    const/4 v3, 0x0

    .line 522
    :goto_0
    return v3

    .line 512
    :cond_0
    new-instance v2, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v4, "/game/report.do"

    invoke-direct {v2, v4}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 514
    .local v2, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "e"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :try_start_0
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "data"

    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_1
    invoke-direct {p0, v2, v1, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NuCmsSdk"

    const-string v5, "reportGameEvent, data to json str error!"

    invoke-static {v4, v5, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public reportNewsEvent(Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 7
    .param p1, "event"    # Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;",
            ">;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;>;"
    .local p3, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsStatusBean;>;"
    const/4 v3, 0x1

    .line 533
    invoke-direct {p0, v3, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 534
    const/4 v3, 0x0

    .line 546
    :goto_0
    return v3

    .line 536
    :cond_0
    new-instance v2, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v4, "/report/client_event.do"

    invoke-direct {v2, v4}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "e"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :try_start_0
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "data"

    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_1
    invoke-direct {p0, v2, v1, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NuCmsSdk"

    const-string v5, "reportNewsEvent, data to json str error!"

    invoke-static {v4, v5, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public reportSceneEvent(Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean$Event;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 5
    .param p1, "e"    # Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean$Event;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;",
            ">;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;>;"
    .local p3, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsStatusBean;>;"
    const/4 v2, 0x2

    invoke-direct {p0, v2, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    const/4 v2, 0x0

    .line 564
    :goto_0
    return v2

    .line 558
    :cond_0
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v2, "/report/scene_event.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "event"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean$Event;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "data"

    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-direct {p0, v1, v0, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    .line 564
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestChannels(Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 6
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "groupid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsChannelBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsChannelBean;>;"
    const/4 v2, 0x1

    .line 344
    invoke-direct {p0, v2, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    const/4 v2, 0x0

    .line 354
    .end local p1    # "version":Ljava/lang/String;
    .end local p2    # "groupid":Ljava/lang/String;
    :goto_0
    return v2

    .line 348
    .restart local p1    # "version":Ljava/lang/String;
    .restart local p2    # "groupid":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v3, "/channel/get_channel_list.do"

    invoke-direct {v1, v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "version"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "0"

    .end local p1    # "version":Ljava/lang/String;
    :cond_1
    invoke-direct {v3, v4, p1}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "group_id"

    if-nez p2, :cond_2

    const-string p2, ""

    .end local p2    # "groupid":Ljava/lang/String;
    :cond_2
    invoke-direct {v3, v4, p2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-direct {p0, v1, v0, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto :goto_0
.end method

.method public requestGameNewsDetail(Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 5
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsTglArticleVoData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsTglArticleVoData;>;"
    const/4 v2, 0x1

    .line 491
    if-eqz p1, :cond_0

    invoke-direct {p0, v2, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    :cond_0
    const/4 v2, 0x0

    .line 498
    :goto_0
    return v2

    .line 494
    :cond_1
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v3, "/game/article_detail.do"

    invoke-direct {v1, v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "articleId"

    invoke-direct {v3, v4, p1}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-direct {p0, v1, v0, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto :goto_0
.end method

.method public requestGameNewsList(Ljava/lang/String;Ljava/lang/String;JIILcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 7
    .param p1, "pkgId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "updateTs"    # J
    .param p5, "pageNo"    # I
    .param p6, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsTglArticleVoListBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p7, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsTglArticleVoListBean;>;"
    const/4 v2, 0x1

    .line 467
    if-eqz p1, :cond_0

    invoke-direct {p0, v2, p7}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    :cond_0
    const/4 v2, 0x0

    .line 480
    :goto_0
    return v2

    .line 470
    :cond_1
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v3, "/game/article_list.do"

    invoke-direct {v1, v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 471
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    if-ge p5, v2, :cond_2

    move p5, v2

    .line 472
    :cond_2
    if-ge p6, v2, :cond_3

    const/16 p6, 0xa

    .line 473
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "pkgId"

    invoke-direct {v3, v4, p1}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "type"

    invoke-direct {v3, v4, p2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "updateTs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "pageNo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "pageSize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-direct {p0, v1, v0, p7}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto/16 :goto_0
.end method

.method public requestNearbySceneList(ILjava/lang/String;Ljava/lang/String;IILcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 8
    .param p1, "sceneChannel"    # I
    .param p2, "position"    # Ljava/lang/String;
    .param p3, "sceneName"    # Ljava/lang/String;
    .param p4, "pageNo"    # I
    .param p5, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNearbySceneListBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p6, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsNearbySceneListBean;>;"
    const/4 v3, 0x1

    .line 369
    const/4 v4, 0x2

    invoke-direct {p0, v4, p6}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    const/4 v3, 0x0

    .line 386
    :goto_0
    return v3

    .line 372
    :cond_0
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v4, "/life_scene/get_scene_list.do"

    invoke-direct {v1, v4}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "position"

    invoke-direct {v4, v5, p2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "sceneName"

    invoke-direct {v4, v5, p3}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_1
    if-ge p4, v3, :cond_2

    move p4, v3

    .line 380
    :cond_2
    if-ge p5, v3, :cond_3

    const/16 p5, 0xa

    .line 381
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "v":Ljava/lang/String;
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "pageNo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "pageSize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "v"

    invoke-direct {v4, v5, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-direct {p0, v1, v0, p6}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    goto/16 :goto_0
.end method

.method public requestNews(Lcom/nubia/nucms/bean/NuCmsParamReqNews;Lcom/nubia/nucms/api/NuCmsModelCallback;Z)Z
    .locals 8
    .param p1, "req"    # Lcom/nubia/nucms/bean/NuCmsParamReqNews;
    .param p3, "isUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/bean/NuCmsParamReqNews;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsBean;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsNewsBean;>;"
    const/4 v3, 0x1

    .line 234
    if-eqz p1, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 257
    :goto_0
    return v2

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 238
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    invoke-static {}, Lcom/nubia/nucms/api/ServerDef;->isReleaseEnvir()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    if-eqz p3, :cond_2

    const-string v2, "/fitcard/get_iflow"

    :goto_1
    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "ad_params"

    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    invoke-virtual {v5}, Lcom/nubia/nucms/api/SspParamGen;->update()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "new_user"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getUserflag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "group_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getGroupid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "origin"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "c_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getChannelId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "recoid"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getBatchid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "method"

    .line 252
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->isRefresh()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "n"

    :goto_3
    invoke-direct {v4, v5, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "time"

    .line 255
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getArticletime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0, v1, v0, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    move v2, v3

    .line 257
    goto/16 :goto_0

    .line 239
    .end local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    :cond_2
    const-string v2, "/fitcard/system/get_iflow"

    goto/16 :goto_1

    .line 242
    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    :cond_3
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    const-string v2, "/iflow/get_list.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    goto/16 :goto_2

    .line 252
    .restart local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    :cond_4
    const-string v2, "h"

    goto :goto_3
.end method

.method public requestNewsForPush(Lcom/nubia/nucms/bean/NuCmsParamReqNews;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 8
    .param p1, "req"    # Lcom/nubia/nucms/bean/NuCmsParamReqNews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/bean/NuCmsParamReqNews;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsNewsBean;>;"
    const/4 v3, 0x1

    .line 304
    if-eqz p1, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    const/4 v2, 0x0

    .line 329
    :goto_0
    return v2

    .line 307
    :cond_1
    const/4 v1, 0x0

    .line 308
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    invoke-static {}, Lcom/nubia/nucms/api/ServerDef;->isReleaseEnvir()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    const-string v2, "/fitcard/iflowForNewNeg/get_push_list.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "ad_params"

    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    invoke-virtual {v5}, Lcom/nubia/nucms/api/SspParamGen;->update()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "new_user"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getUserflag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "group_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getGroupid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "origin"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "c_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getChannelId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "comm_params"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getCommParams()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "recoid"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getBatchid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "method"

    .line 323
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->isRefresh()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "n"

    :goto_2
    invoke-direct {v4, v5, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "time"

    .line 326
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getArticletime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "news_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getNewsId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-direct {p0, v1, v0, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    move v2, v3

    .line 329
    goto/16 :goto_0

    .line 311
    .end local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    :cond_2
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    const-string v2, "/iflowForNewNeg/get_push_list.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    goto/16 :goto_1

    .line 323
    .restart local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    :cond_3
    const-string v2, "h"

    goto :goto_2
.end method

.method public requestNewsWithAd(Lcom/nubia/nucms/bean/NuCmsParamReqNews;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 8
    .param p1, "req"    # Lcom/nubia/nucms/bean/NuCmsParamReqNews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/bean/NuCmsParamReqNews;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsNewsBean;>;"
    const/4 v3, 0x1

    .line 268
    if-eqz p1, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    :cond_0
    const/4 v2, 0x0

    .line 293
    :goto_0
    return v2

    .line 271
    :cond_1
    const/4 v1, 0x0

    .line 272
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    invoke-static {}, Lcom/nubia/nucms/api/ServerDef;->isReleaseEnvir()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    const-string v2, "/fitcard/iflowForNewNeg/get_new_neg_iflow.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "ad_params"

    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mSspParam:Lcom/nubia/nucms/api/SspParamGen;

    invoke-virtual {v5}, Lcom/nubia/nucms/api/SspParamGen;->update()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "new_user"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getUserflag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "group_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getGroupid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "origin"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "c_id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getChannelId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "ad_channel"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getAdChannel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "comm_params"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getCommParams()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "recoid"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getBatchid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v4, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v5, "method"

    .line 288
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->isRefresh()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "n"

    :goto_2
    invoke-direct {v4, v5, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "time"

    .line 291
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->getArticletime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-direct {p0, v1, v0, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    move v2, v3

    .line 293
    goto/16 :goto_0

    .line 275
    .end local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    :cond_2
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    .end local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    const-string v2, "/iflowForNewNeg/get_new_neg_iflow.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .restart local v1    # "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    goto/16 :goto_1

    .line 288
    .restart local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    :cond_3
    const-string v2, "h"

    goto :goto_2
.end method

.method public requestSingleSceneService(Ljava/lang/String;ILcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 397
    .local p3, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceBean;>;"
    const/4 v3, 0x2

    invoke-direct {p0, v3, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const/4 v3, 0x0

    .line 407
    :goto_0
    return v3

    .line 400
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "v":Ljava/lang/String;
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v3, "/life_scene/get_scene.do"

    invoke-direct {v1, v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "sceneId"

    invoke-direct {v3, v4, p1}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v4, "v"

    invoke-direct {v3, v4, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-direct {p0, v1, v0, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    .line 407
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public requestSingleSceneService(Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceBean;>;"
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    const/4 v2, 0x0

    .line 425
    :goto_0
    return v2

    .line 419
    :cond_0
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v2, "/life_scene/get_scene.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "sceneId"

    invoke-direct {v2, v3, p1}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "v"

    const-string v4, "V2"

    invoke-direct {v2, v3, v4}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-direct {p0, v1, v0, p2}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    .line 425
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestSportsMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    .locals 6
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "timezone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsSportsBean;>;"
    const/4 v2, 0x0

    .line 438
    const/4 v3, 0x4

    invoke-direct {p0, v3, p4}, Lcom/nubia/nucms/api/NuCmsSdk;->check(ILcom/nubia/nucms/api/NuCmsModelCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    .end local p2    # "version":Ljava/lang/String;
    :goto_0
    return v2

    .line 441
    .restart local p2    # "version":Ljava/lang/String;
    :cond_0
    const-string v3, "NuCmsSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] version:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] timezone:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    sget-object v3, Lcom/nubia/nucms/api/NuCmsCallbackError;->SPORTS_DATE_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v3

    sget-object v4, Lcom/nubia/nucms/api/NuCmsCallbackError;->SPORTS_DATE_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v4}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v3, v4}, Lcom/nubia/nucms/api/NuCmsModelCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_1
    new-instance v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    const-string v2, "/sport/football_match.do"

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "timezone"

    invoke-direct {v2, v3, p3}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v2, Lcom/nubia/nucms/network/http/params/NameValuePair;

    const-string v3, "version"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p2, "0"

    .end local p2    # "version":Ljava/lang/String;
    :cond_2
    invoke-direct {v2, v3, p2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-direct {p0, v1, v0, p4}, Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V

    .line 452
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setEnvirRelease(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Z
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, Lcom/nubia/nucms/api/ServerDef;->setReleaseEnvir(Z)V

    .line 184
    iput-object p2, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppId:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/nubia/nucms/api/NuCmsSdk;->mAppSecretKey:Ljava/lang/String;

    .line 186
    return-void
.end method
