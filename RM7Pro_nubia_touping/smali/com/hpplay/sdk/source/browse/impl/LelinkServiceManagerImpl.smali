.class public Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;,
        Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;,
        Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LelinkServiceManagerImpl"

.field private static final b:Ljava/lang/String; = "com.hpplay.happycast"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

.field private e:Lcom/hpplay/sdk/source/browse/impl/b;

.field private f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

.field private g:Lcom/hpplay/sdk/source/browse/handler/e;

.field private h:Lcom/hpplay/sdk/source/browse/handler/e;

.field private i:Z

.field private j:Z

.field private k:Lcom/hpplay/sdk/source/browse/api/AuthListener;

.field private l:I

.field private m:Z

.field private n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

.field private o:Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

.field private p:I

.field private q:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field private r:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;

.field private s:J

.field private t:I

.field private u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->j:Z

    .line 74
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->m:Z

    .line 77
    const/16 v0, -0x64

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->p:I

    .line 79
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;-><init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->r:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;

    .line 84
    iput v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->v:I

    .line 87
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 88
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    .line 92
    :goto_0
    iput v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->l:I

    .line 93
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b()V

    .line 94
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d()V

    .line 95
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->initManufacture(Landroid/content/Context;)V

    .line 98
    :cond_1
    return-void

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->t:I

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    return-object v0
.end method

.method private a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 527
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEBO_OPTION_27 value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    aget-object v0, p1, v3

    .line 529
    if-nez v0, :cond_0

    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 535
    :goto_0
    return-object v0

    .line 531
    :cond_0
    instance-of v1, v0, Lcom/hpplay/sdk/source/api/ILogCallback;

    if-eqz v1, :cond_1

    .line 532
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    check-cast v0, Lcom/hpplay/sdk/source/api/ILogCallback;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/common/store/Session;->setLogCallback(Lcom/hpplay/sdk/source/api/ILogCallback;)V

    .line 533
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "all_urls"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v0, "key_debug_auth"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_DEBUG:Ljava/lang/String;

    .line 179
    const-string v0, "key_release_auth"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_RELEASE:Ljava/lang/String;

    .line 180
    const-string v0, "key_huawei"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_HUAWEI:Ljava/lang/String;

    .line 181
    const-string v0, "key_xiaomi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_XIAOMI:Ljava/lang/String;

    .line 182
    const-string v0, "key_vo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_VO:Ljava/lang/String;

    .line 183
    const-string v0, "key_nubia_auth"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_NUBIA:Ljava/lang/String;

    .line 184
    const-string v0, "key_txt_info"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->URL_TXT_INFO:Ljava/lang/String;

    .line 185
    const-string v0, "key_data_report"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    .line 186
    const-string v0, "key_ad"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sADUrl:Ljava/lang/String;

    .line 187
    const-string v0, "key_adengine"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sADEngineUrl:Ljava/lang/String;

    .line 188
    const-string v0, "key_short_link"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sShortLink:Ljava/lang/String;

    .line 189
    const-string v0, "key_pincode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinRoot:Ljava/lang/String;

    .line 190
    const-string v0, "key_mdns"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImDNSUrl:Ljava/lang/String;

    .line 191
    const-string v0, "key_gslb"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    .line 192
    const-string v0, "key_dev_mgr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->VERIFY_URL:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "LelinkServiceManagerImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V
    .locals 2

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LelinkSetting can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Appkey can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppSecret can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;",
            "Lcom/hpplay/sdk/source/browse/api/IParceResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 580
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;-><init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;Ljava/util/List;)V

    .line 586
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h:Lcom/hpplay/sdk/source/browse/handler/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/handler/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    :cond_0
    new-instance v1, Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-direct {v1, v0, p1}, Lcom/hpplay/sdk/source/browse/handler/e;-><init>(Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;Ljava/util/List;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h:Lcom/hpplay/sdk/source/browse/handler/e;

    .line 589
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/e;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    const-string v1, "LelinkServiceManagerImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->p:I

    return p1
.end method

.method private b([Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 548
    const-string v0, "LelinkServiceManagerImpl"

    const-string v3, "deleteLocalServiceInfo"

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v1, :cond_0

    .line 550
    aget-object v0, p1, v2

    .line 551
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v3, :cond_0

    .line 552
    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move v0, v1

    .line 557
    :goto_0
    return v0

    .line 556
    :cond_0
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "deleteLocalServiceInfo invalid values"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 557
    goto :goto_0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e:Lcom/hpplay/sdk/source/browse/impl/b;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBrowserManager failed buildOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    goto :goto_0
.end method

.method private b(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SourceSDK appkey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "3.28.50"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " commitId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "8a80cbb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " buildOption:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo: model:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " androidVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/store/Preference;->initPreference(Landroid/content/Context;)Lcom/hpplay/sdk/source/common/store/Preference;

    .line 152
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a()V

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/store/Session;->initSession(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->appVersion:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "tUid is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->initDataReport(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 164
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getIMEI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "initDatas has imei"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c()V

    .line 172
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->tUid:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->init(Landroid/content/Context;)V

    .line 210
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->k:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->addAuthListener(Lcom/hpplay/sdk/source/browse/api/AuthListener;)V

    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->r:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;

    invoke-virtual {v0, p4}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->setStartRelation(Z)V

    .line 212
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->r:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->addAuthListener(Lcom/hpplay/sdk/source/browse/api/AuthListener;)V

    .line 213
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->startAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->t:I

    return v0
.end method

.method private c([Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 562
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    .line 563
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/util/List;

    .line 564
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 565
    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/browse/handler/e;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    :cond_0
    new-instance v4, Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-direct {v4, v0, v1}, Lcom/hpplay/sdk/source/browse/handler/e;-><init>(Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;Ljava/util/List;)V

    iput-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    .line 567
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/e;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 575
    :goto_0
    return v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    const-string v1, "LelinkServiceManagerImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    :cond_1
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setInteractListener values is Invalid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 575
    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "initLelinkRelationHandler mirror mode,ignore"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "initLelinkRelationHandler"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e:Lcom/hpplay/sdk/source/browse/impl/b;

    if-eqz v0, :cond_2

    .line 288
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "lelinkRelationHandler is initiate"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LelinkRelationHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v1, Lcom/hpplay/sdk/source/browse/impl/b;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/impl/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e:Lcom/hpplay/sdk/source/browse/impl/b;

    goto :goto_0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->p:I

    return v0
.end method

.method private d([Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAuthListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    aget-object v0, p1, v2

    .line 600
    if-nez v0, :cond_0

    move v0, v1

    .line 607
    :goto_0
    return v0

    .line 602
    :cond_0
    instance-of v3, v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    if-eqz v3, :cond_1

    .line 603
    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->k:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move v0, v1

    .line 604
    goto :goto_0

    .line 606
    :cond_1
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setAuthListener values is Invalid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 607
    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;-><init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;-><init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    :cond_1
    return-void
.end method

.method private e([Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 611
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFilterTv501Ver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    aget-object v0, p1, v2

    .line 613
    if-nez v0, :cond_0

    move v0, v1

    .line 620
    :goto_0
    return v0

    .line 615
    :cond_0
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 616
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/hpplay/sdk/source/common/store/Session;->isFilter501Version:Z

    move v0, v1

    .line 617
    goto :goto_0

    .line 619
    :cond_1
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setFilterTv501Ver values is Invalid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 620
    goto :goto_0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g()V

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f([Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 624
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConferenceServerUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 626
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setConferenceServerUrl need more parameter"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_0
    return v3

    .line 629
    :cond_0
    aget-object v0, p1, v3

    .line 630
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 631
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 634
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 635
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    .line 639
    :goto_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->updateDynamicUrls()V

    .line 642
    :cond_1
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setConferenceServerUrl values is Invalid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_2
    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->s:J

    return-wide v0
.end method

.method private f()Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    return-object v0
.end method

.method private g([Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 647
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 648
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setStaffInfo need more parameter"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    :goto_0
    return v5

    .line 651
    :cond_1
    aget-object v0, p1, v5

    .line 652
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 653
    const-string v2, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStaffInfo value0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 655
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/hpplay/sdk/source/common/store/Session;->department:Ljava/lang/String;

    .line 656
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/hpplay/sdk/source/common/store/Session;->jobNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 702
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "releaseLelinkRelationHandler"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e:Lcom/hpplay/sdk/source/browse/impl/b;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e:Lcom/hpplay/sdk/source/browse/impl/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/b;->c()V

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e:Lcom/hpplay/sdk/source/browse/impl/b;

    .line 707
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->j:Z

    return v0
.end method

.method private h([Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LEBO_OPTION_23 value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    aget-object v0, p1, v2

    .line 664
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f()Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    move-result-object v3

    iput-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    .line 665
    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->a(Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;)V

    move v0, v1

    .line 672
    :goto_0
    return v0

    .line 668
    :cond_0
    instance-of v3, v0, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    if-eqz v3, :cond_1

    .line 669
    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->a(Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;)V

    move v0, v1

    .line 670
    goto :goto_0

    :cond_1
    move v0, v2

    .line 672
    goto :goto_0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i:Z

    return v0
.end method

.method private i([Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 676
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEBO_OPTION_24 value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, p1, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    aget-object v0, p1, v3

    .line 680
    array-length v1, p1

    const/4 v5, 0x3

    if-lt v1, v5, :cond_3

    .line 681
    aget-object v1, p1, v4

    .line 682
    const/4 v2, 0x2

    aget-object v2, p1, v2

    .line 684
    :goto_0
    if-nez v0, :cond_0

    move v0, v3

    .line 698
    :goto_1
    return v0

    .line 686
    :cond_0
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 687
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f()Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    move-result-object v3

    iput-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    .line 689
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 690
    new-instance v3, Lcom/hpplay/sdk/source/browse/pincode/c;

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v0, v5, v1}, Lcom/hpplay/sdk/source/browse/pincode/c;-><init>(Ljava/lang/String;II)V

    move-object v0, v3

    .line 694
    :goto_2
    iput-boolean v4, v0, Lcom/hpplay/sdk/source/browse/pincode/c;->d:Z

    .line 695
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/c;)V

    move v0, v4

    .line 696
    goto :goto_1

    .line 692
    :cond_1
    new-instance v1, Lcom/hpplay/sdk/source/browse/pincode/c;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/browse/pincode/c;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    .line 698
    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c()V

    return-void
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->r:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;

    invoke-virtual {v0, p4}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->setStartRelation(Z)V

    .line 273
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->isAuthComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "authRetry  start"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->authRetry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "auth in use"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addPinCodeServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i:Z

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f()Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    .line 435
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 436
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->n:Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;

    new-instance v1, Lcom/hpplay/sdk/source/browse/pincode/c;

    invoke-direct {v1, p1}, Lcom/hpplay/sdk/source/browse/pincode/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/c;)V

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    if-eqz p2, :cond_1

    .line 439
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 441
    :cond_1
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "addPinCodeServiceInfo auth failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addQRServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 429
    :cond_0
    return-void
.end method

.method public browse(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 361
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "browse mirror mode,ignore"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v1, "com.hpplay.happycast"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->contextPath:Lcom/hpplay/common/utils/ContextPath;

    const-string v4, "sdcard_hpplay"

    invoke-virtual {v3, v4}, Lcom/hpplay/common/utils/ContextPath;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "lebo_debug"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    move p1, v0

    .line 372
    :cond_1
    iput-boolean v5, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->m:Z

    .line 373
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browse isAuthSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->p:I

    const/16 v2, 0x192

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->v:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 375
    const-string v1, "LelinkServiceManagerImpl"

    const-string v2, "retry initAuth"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appVersion:Ljava/lang/String;

    .line 379
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    iget v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->v:I

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(I)V

    goto/16 :goto_0

    .line 385
    :cond_3
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "browse BrowserManager is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public varargs deleteRemoteServiceInfo([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 463
    :cond_0
    return-void
.end method

.method public getLelinkServiceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 475
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/b/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBrowseListGone()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->j()V

    .line 417
    :cond_0
    return-void
.end method

.method public onPushButtonClick()V
    .locals 3

    .prologue
    .line 421
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public varargs performAction(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    packed-switch p1, :pswitch_data_0

    .line 544
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 542
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x60001
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 710
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->v:I

    .line 712
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->e()V

    .line 714
    iput-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/e;->b()V

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h:Lcom/hpplay/sdk/source/browse/handler/e;

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/e;->b()V

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    if-eqz v0, :cond_3

    .line 726
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 727
    iput-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    .line 729
    :cond_3
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->logout()V

    .line 731
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    if-eqz v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 733
    iput-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->u:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;

    .line 735
    :cond_4
    return-void
.end method

.method public removeLocalServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Lcom/hpplay/common/utils/LeLog;->enableAllTrace()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hpplay/common/utils/LeLog;->enableTrace(Z)V

    goto :goto_0
.end method

.method public setLelinkSetting(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "LelinkSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    strEncrpyt  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/common/store/Session;->setMac(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->setIMEI(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V

    .line 124
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :cond_2
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    const-string v1, "00:00:00:00:00:00"

    iput-object v1, v0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnBrowseListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 357
    :cond_0
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 485
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOption option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/b/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_2

    .line 487
    :cond_0
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "setOption invalid values"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 523
    :cond_1
    :goto_0
    return-object v0

    .line 490
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 492
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 494
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 496
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 498
    :sswitch_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v1, :cond_3

    .line 499
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->e()V

    .line 500
    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    if-eqz v1, :cond_4

    .line 504
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/handler/e;->b()V

    .line 507
    :cond_4
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    goto :goto_0

    .line 513
    :sswitch_4
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 515
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 517
    :sswitch_6
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 519
    :sswitch_7
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 521
    :sswitch_8
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x10003 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x10005 -> :sswitch_2
        0x10007 -> :sswitch_3
        0x100011 -> :sswitch_4
        0x100012 -> :sswitch_5
        0x100023 -> :sswitch_6
        0x100024 -> :sswitch_7
        0x100027 -> :sswitch_8
    .end sparse-switch
.end method

.method public stopBrowse()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->m:Z

    .line 407
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b()V

    .line 410
    :cond_0
    return-void
.end method
