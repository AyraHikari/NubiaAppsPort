.class public Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;
.super Ljava/lang/Object;
.source "TTAdManagerHolder.java"


# static fields
.field private static sAppid:Ljava/lang/String;

.field private static sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    move-object v0, p1

    .line 53
    .local v0, "appId":Ljava/lang/String;
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "appName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v1, "ssp\u5a92\u4f53"

    .line 57
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildConfig appId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 58
    new-instance v4, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 59
    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    .line 65
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v5

    sget-object v6, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    if-ne v5, v6, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 66
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v2

    .line 58
    return-object v2

    :cond_1
    move v2, v3

    .line 65
    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.method private static doInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-boolean v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sInit:Z

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->buildConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sInit:Z

    .line 49
    :cond_0
    return-void
.end method

.method public static get()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 2

    .prologue
    .line 24
    sget-boolean v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sInit:Z

    if-nez v0, :cond_0

    .line 25
    const-string v0, "TTAdManagerHolder"

    const-string v1, "TTAdSdk is not init, please check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->doInit(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static resetinit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sAppid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sInit:Z

    .line 34
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->doInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    sput-object p1, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->sAppid:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method
