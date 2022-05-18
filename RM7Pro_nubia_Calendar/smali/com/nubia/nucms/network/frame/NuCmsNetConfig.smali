.class public Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
.super Ljava/lang/Object;
.source "NuCmsNetConfig.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_MAX_REDIRECT_TIMES:I = 0x5

.field public static final DEFAULT_MAX_RETRY_TIMES:I = 0x3

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field public static final DEFAULT_TRY_WAIT_TIME:I = 0xbb8

.field public static final FLAG_NET_DISABLE_ALL:I

.field public static final FLAG_NET_DISABLE_MOBILE:I

.field public static final FLAG_NET_DISABLE_NONE:I

.field public static final FLAG_NET_DISABLE_OTHER:I

.field public static final FLAG_NET_DISABLE_WIFI:I

.field protected static final TAG:Ljava/lang/String;

.field public static userAgent:Ljava/lang/String;


# instance fields
.field protected commonHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected connectTimeout:I

.field context:Landroid/content/Context;

.field protected defaultCharSet:Ljava/lang/String;

.field protected defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field protected defaultMaxRedirectTimes:I

.field protected defaultMaxRetryTimes:I

.field protected detectNetwork:Z

.field protected disableNetworkFlags:I

.field protected httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

.field protected retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

.field protected retrySleepMillis:I

.field protected smartExecutor:Ljava/util/concurrent/ExecutorService;

.field protected socketTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const-class v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    iget v0, v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    sput v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->FLAG_NET_DISABLE_ALL:I

    .line 30
    sget-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_2G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    iget v0, v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_3G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    iget v1, v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_4G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    iget v1, v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    or-int/2addr v0, v1

    sput v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->FLAG_NET_DISABLE_MOBILE:I

    .line 33
    sget-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Wifi:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    iget v0, v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    sput v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->FLAG_NET_DISABLE_WIFI:I

    .line 34
    sget-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Other:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    iget v0, v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    sput v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->FLAG_NET_DISABLE_OTHER:I

    .line 61
    const-string v0, "%s (android-%s; api-%s; %s; %s)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "nubia_cmssdk_V1.0.3"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x4e20

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->connectTimeout:I

    .line 72
    iput v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->socketTimeout:I

    .line 86
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retrySleepMillis:I

    .line 96
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultCharSet:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRetryTimes:I

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRedirectTimes:I

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->initDefaultComponent()V

    .line 128
    return-void
.end method

.method private applyToHttpClient()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    invoke-virtual {v0, p0}, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->config(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V

    .line 325
    :cond_0
    return-void
.end method

.method private initDefaultComponent()V
    .locals 10

    .prologue
    .line 131
    new-instance v0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    invoke-direct {v0}, Lcom/nubia/nucms/network/http/NuCmsHttpClient;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    .line 132
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->getCoresNumbers()I

    move-result v2

    .line 133
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->getCoresNumbers()I

    move-result v3

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/nubia/nucms/network/frame/NuCmsNetConfig$1;

    invoke-direct {v8, p0}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig$1;-><init>(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->smartExecutor:Ljava/util/concurrent/ExecutorService;

    .line 143
    new-instance v0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retrySleepMillis:I

    invoke-direct {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;-><init>(I)V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    .line 144
    return-void
.end method


# virtual methods
.method public create()Lcom/nubia/nucms/network/frame/NuCmsNetClient;
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    invoke-direct {v0, p0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;-><init>(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V

    return-object v0
.end method

.method public detectNetworkNeeded()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommonHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->connectTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDefaultCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lite/http-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lite/http-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultCharSet:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultHttpMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    return-object v0
.end method

.method public getDefaultMaxRedirectTimes()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRedirectTimes:I

    return v0
.end method

.method public getDefaultMaxRetryTimes()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRetryTimes:I

    return v0
.end method

.method public getDisableNetworkFlags()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    return v0
.end method

.method public getHttpClient()Lcom/nubia/nucms/network/http/NuCmsHttpClient;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    return-object v0
.end method

.method public getRetryHandler()Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    return-object v0
.end method

.method public getRetrySleepMillis()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retrySleepMillis:I

    return v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->socketTimeout:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isDetectNetwork()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    return v0
.end method

.method public isDisableAllNetwork()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    sget v1, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->FLAG_NET_DISABLE_ALL:I

    and-int/2addr v0, v1

    sget v1, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->FLAG_NET_DISABLE_ALL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableNetwork(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 311
    iget v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreToDefault()Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 8

    .prologue
    const/16 v7, 0x4e20

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 336
    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->setDefault()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 337
    const-string v0, "%s (android-%s; api-%s; %s; %s)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "nubia_cmssdk_V1.0.3"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 339
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 337
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    .line 340
    iput v7, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->connectTimeout:I

    .line 341
    iput v7, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->socketTimeout:I

    .line 342
    iput v4, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    .line 343
    iput-boolean v4, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    .line 344
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retrySleepMillis:I

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    .line 346
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultCharSet:Ljava/lang/String;

    .line 347
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 348
    iput v5, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRetryTimes:I

    .line 349
    iput v6, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRedirectTimes:I

    .line 350
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->initDefaultComponent()V

    .line 351
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->applyToHttpClient()V

    .line 352
    return-object p0
.end method

.method public setCommonHeaders(Ljava/util/List;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetConfig;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "headerList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    if-eqz p1, :cond_0

    .line 213
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    .line 215
    .local v0, "pair":Lcom/nubia/nucms/network/http/params/NameValuePair;
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    .end local v0    # "pair":Lcom/nubia/nucms/network/http/params/NameValuePair;
    :cond_0
    return-object p0
.end method

.method public setCommonHeaders(Ljava/util/Map;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetConfig;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    .line 223
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->connectTimeout:I

    .line 268
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    .line 163
    return-object p0
.end method

.method public setDefaultCharSet(Ljava/lang/String;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "defaultCharSet"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultCharSet:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setDefaultHttpMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "defaultHttpMethod"    # Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 241
    return-object p0
.end method

.method public setDefaultMaxRedirectTimes(I)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "defaultMaxRedirectTimes"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRedirectTimes:I

    .line 259
    return-object p0
.end method

.method public setDefaultMaxRetryTimes(I)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "defaultMaxRetryTimes"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRetryTimes:I

    .line 250
    return-object p0
.end method

.method public setDetectNetwork(Z)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "detectNetwork"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    .line 190
    return-object p0
.end method

.method public setDisableNetworkFlags(I)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "disableNetworkFlags"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    .line 181
    return-object p0
.end method

.method public setHttpClient(Lcom/nubia/nucms/network/http/NuCmsHttpClient;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "httpClient"    # Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    .line 286
    return-object p0
.end method

.method public setJsonConvertor(Lcom/nubia/nucms/network/frame/NuCmsJsonParser;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "json"    # Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-static {p1}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->set(Lcom/nubia/nucms/network/frame/NuCmsJsonParser;)Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 318
    :cond_0
    return-object p0
.end method

.method public setRetryHandler(Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "retryHandler"    # Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    .line 295
    return-object p0
.end method

.method public setRetrySleepMillis(I)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 2
    .param p1, "retrySleepMillis"    # I

    .prologue
    .line 198
    if-gez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "retrySleepMillis can not < 1 ! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retrySleepMillis:I

    .line 203
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    invoke-virtual {v0, p1}, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->setRetrySleepTimeMS(I)Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    .line 204
    return-object p0
.end method

.method public setSocketTimeout(I)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->socketTimeout:I

    .line 277
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 171
    sput-object p1, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpConfig{context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAgent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", socketTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->socketTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableNetworkFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retrySleepMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retrySleepMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commonHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultCharSet=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultCharSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultHttpMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultMaxRetryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRetryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultMaxRedirectTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRedirectTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smartExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->smartExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
