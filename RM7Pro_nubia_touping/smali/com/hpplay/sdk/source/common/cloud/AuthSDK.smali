.class public Lcom/hpplay/sdk/source/common/cloud/AuthSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTH_NETWORK_ERROR:Ljava/lang/String; = "1020"

.field private static final AUTH_PARSE_ERROR:Ljava/lang/String; = "1010"

.field private static final AUTH_SERVER_ERROR:Ljava/lang/String; = "1030"

.field public static final CODE_AUTH_DIASBLE:I = 0x192

.field public static final KEY_IMSERVER_IP:Ljava/lang/String; = "ImServer"

.field private static final TAG:Ljava/lang/String; = "AuthSDK"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final URL_DEVICE_MANAGER:Ljava/lang/String; = "devicemgr"

.field private static final URL_TYPE_AD:Ljava/lang/String; = "ad"

.field private static final URL_TYPE_AD_ENGINE:Ljava/lang/String; = "adengine"

.field private static final URL_TYPE_GSLB:Ljava/lang/String; = "gslb"

.field private static final URL_TYPE_IM_DNS:Ljava/lang/String; = "imdns"

.field private static final URL_TYPE_PIN:Ljava/lang/String; = "pin"

.field private static final URL_TYPE_REPORT:Ljava/lang/String; = "report"

.field private static final URL_TYPE_SHORT_LINK:Ljava/lang/String; = "shorturl"

.field private static mAuthSDK:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

.field public static final repeat_info_file_dir:Ljava/lang/String;

.field public static final repeat_info_file_name:Ljava/lang/String;


# instance fields
.field private authTimeOut:I

.field private isComplete:Z

.field private mAuthListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/AuthListener;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthStatusCode:I

.field private mContext:Landroid/content/Context;

.field private mIMTryCout:I

.field private mPreference:Lcom/hpplay/sdk/source/common/store/Preference;

.field private mProtocolVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/store/Session;->contextPath:Lcom/hpplay/common/utils/ContextPath;

    const-string v1, "sdcard_hpplay"

    invoke-virtual {v0, v1}, Lcom/hpplay/common/utils/ContextPath;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_dir:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lecast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "3.1"

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mProtocolVer:Ljava/lang/String;

    .line 64
    const/16 v0, -0x64

    iput v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->isComplete:Z

    .line 67
    const/16 v0, 0xf

    iput v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->authTimeOut:I

    return-void
.end method

.method static synthetic access$002(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->isComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->saveRepeatInfoToLocal(Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->analysisVerifyData(Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->reportLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mIMTryCout:I

    return v0
.end method

.method static synthetic access$502(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mIMTryCout:I

    return p1
.end method

.method static synthetic access$508(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mIMTryCout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mIMTryCout:I

    return v0
.end method

.method private analysisVerifyData(Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 267
    const-string v0, "AuthSDK"

    const-string v1, "analysisVerifyData"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v1, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    .line 273
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v1, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget v1, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->tid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->tid:Ljava/lang/String;

    .line 274
    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->prot_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mProtocolVer:Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v1, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget v1, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->scan_time:I

    iput v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->scanTime:I

    .line 277
    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    if-eqz v0, :cond_2

    .line 278
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "switch_ver"

    iget-object v2, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    iget v2, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;->ver:I

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;I)V

    .line 279
    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;->switchBean:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity$SwitchBean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;->switchBean:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity$SwitchBean;

    iget v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity$SwitchBean;->sl:I

    if-ne v0, v3, :cond_2

    .line 281
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iput-boolean v3, v0, Lcom/hpplay/sdk/source/common/store/Session;->isOnlyLelink:Z

    .line 285
    :cond_2
    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;->url_list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    iget v2, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;->ver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->serverProtocolVer:Ljava/lang/String;

    .line 289
    iget-object v0, p1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;->url_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;

    .line 290
    iget-object v2, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;->name:Ljava/lang/String;

    .line 291
    iget-object v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;->url:Ljava/lang/String;

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 293
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_4
    const-string v3, "report"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    goto :goto_1

    .line 298
    :cond_5
    const-string v3, "gslb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    goto :goto_1

    .line 300
    :cond_6
    const-string v3, "imdns"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 301
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImDNSUrl:Ljava/lang/String;

    goto :goto_1

    .line 302
    :cond_7
    const-string v3, "ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 303
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sADUrl:Ljava/lang/String;

    goto :goto_1

    .line 304
    :cond_8
    const-string v3, "adengine"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 305
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sADEngineUrl:Ljava/lang/String;

    goto :goto_1

    .line 306
    :cond_9
    const-string v3, "devicemgr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 307
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    goto :goto_1

    .line 308
    :cond_a
    const-string v3, "pin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 309
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinRoot:Ljava/lang/String;

    goto :goto_1

    .line 310
    :cond_b
    const-string v3, "shorturl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sShortLink:Ljava/lang/String;

    goto/16 :goto_1

    .line 316
    :cond_c
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->updateDynamicUrls()V

    .line 317
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->updateIMRootUrl()V

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthSDK:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthSDK:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    .line 73
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthSDK:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reportLogin(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 262
    const-string v0, "AuthSDK"

    const-string v1, "reportLogin"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->login(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private saveRepeatInfoToLocal(Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)V
    .locals 4

    .prologue
    .line 378
    const-string v0, "AuthSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRepeatInfoToLocal info ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 382
    const-string v1, "AuthSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make dir status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "repeat_info"

    invoke-static {p1}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->beanToJson(Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->beanToJson(Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/FileUtil;->string2File(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    const-string v1, "AuthSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addAuthListener(Lcom/hpplay/sdk/source/browse/api/AuthListener;)V
    .locals 1

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthListeners:Ljava/util/List;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public authRetry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0xa

    iput v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->authTimeOut:I

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->startAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mPreference:Lcom/hpplay/sdk/source/common/store/Preference;

    .line 79
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "sdk_verify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;-><init>(Lorg/json/JSONObject;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->analysisVerifyData(Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "AuthSDK"

    const-string v2, "AuthSDK preVerifyData parser error"

    invoke-static {v1, v2, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :cond_0
    const-string v0, "AuthSDK"

    const-string v1, "AuthSDK preVerifyData is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAuthComplete()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->isComplete:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public startAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->isComplete:Z

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v0, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "appid"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "package"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "prot_ver"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mProtocolVer:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "sever_ver"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->serverProtocolVer:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "hid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "0000000000000000"

    .line 130
    const-string v2, "cpu_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "serial"

    invoke-static {}, Lcom/hpplay/common/utils/DeviceUtil;->getAndroidSerial()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "board"

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "android_id"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/hpplay/common/utils/DeviceUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "facturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "0"

    .line 139
    const-string v2, "mac"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string v0, "1"

    .line 142
    const-string v2, "oaid"

    iget-object v3, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/hpplay/common/utils/DeviceUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_0
    const-string v2, "ismd5"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getmRegTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 148
    const-string v0, "reg_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getmRegTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "appid"

    .line 151
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "package"

    .line 152
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "timestamp"

    .line 153
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v3, "appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&uid="

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&version="

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x8052

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&prot_ver="

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mProtocolVer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->drEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "AuthSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authSDK map = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getJsonParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->VERIFY_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->VERIFY_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getJsonParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->authTimeOut:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->connectTimeout:I

    .line 167
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->authTimeOut:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    .line 168
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x1

    iput v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 170
    new-instance v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;

    invoke-direct {v1, p0, p3}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;-><init>(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 259
    return-void

    .line 144
    :cond_1
    const-string v2, "imei"

    iget-object v3, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/hpplay/common/utils/DeviceUtil;->getAndroidDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public updateIMRootUrl()V
    .locals 5

    .prologue
    .line 321
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImDNSUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Author/GetImServer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 326
    const-string v2, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v2, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v2, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMapParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 330
    const-string v2, "AuthSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imdns url-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "AuthSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imdns entity-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {v2, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;-><init>(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)V

    .line 367
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    goto/16 :goto_0
.end method
