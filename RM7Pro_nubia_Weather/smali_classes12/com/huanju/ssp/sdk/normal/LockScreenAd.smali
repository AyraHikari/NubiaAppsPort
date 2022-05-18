.class public final Lcom/huanju/ssp/sdk/normal/LockScreenAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "LockScreenAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;,
        Lcom/huanju/ssp/sdk/normal/LockScreenAd$BindDataProxy;
    }
.end annotation


# instance fields
.field private mAdSlotId:Ljava/lang/String;

.field private mAppcontext:Landroid/content/Context;

.field private mIsInit:Z

.field private mLockScreenAdListener:Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

.field mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

.field private mScreenSize:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mIsInit:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mScreenSize:[I

    .line 47
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAdSlotId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->clearCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)[I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->getScreenSize()[I

    move-result-object v0

    return-object v0
.end method

.method private checkNet()Z
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    iget v1, v2, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    .line 114
    .local v1, "netType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request checkNet netType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 115
    if-nez v1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAppcontext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 119
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAppcontext:Landroid/content/Context;

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAppcontext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isRequstByMobile(ILandroid/content/Context;)Z

    move-result v0

    .line 124
    .local v0, "isRequest":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request checkNet isRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    .line 302
    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 303
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->setAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 304
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->deleteAd()V

    .line 305
    return-void
.end method

.method private getScreenSize()[I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mScreenSize:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mScreenSize:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Z)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mScreenSize:[I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mScreenSize:[I

    return-object v0
.end method

.method private parseData(Ljava/util/List;)Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;)",
            "Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 358
    .local v0, "adInfo":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    if-eqz v3, :cond_0

    .line 359
    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 360
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->setAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 361
    new-instance v1, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 365
    .end local v0    # "adInfo":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adShow()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---adShow Lockscreen Ad getClassLoader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 228
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v5, :cond_0

    .line 229
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAd()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v5

    iput-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 231
    :cond_0
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v5, :cond_2

    .line 232
    const-string v5, "---adShow request Lockscreen Ad net"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getReqId()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "reqid":Ljava/lang/String;
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v2, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->reqid:Ljava/lang/String;

    .line 239
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-boolean v7, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubDisTrk:Z

    .line 240
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v5, v6, v7}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---adShow mAd.mCheckTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v6

    iget-wide v6, v6, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mCheckTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",curtime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mAd.cache_time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cache_time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->checkNet()Z

    move-result v5

    if-nez v5, :cond_3

    .line 243
    const-string v5, "---adShow checkNet only wifi:"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v5

    iget-wide v8, v5, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mCheckTime:J

    sub-long/2addr v6, v8

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v8, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cache_time:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 247
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_cache:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 251
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v3, "reqjson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "sp_request_id"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "requestid":Ljava/lang/String;
    const-string v5, "request_id"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v5, "app_id"

    sget-object v6, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v5, "adslot_id"

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAdSlotId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v5, "imp_id"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v5, "campaign_id"

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->campaign_id:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "reqParam":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---adShow reqParam:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 260
    new-instance v5, Lcom/huanju/ssp/base/core/request/ad/RequestAdFlagProcessor;

    new-instance v6, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)V

    invoke-direct {v5, v6, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdFlagProcessor;-><init>(Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/request/ad/RequestAdFlagProcessor;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 290
    .end local v1    # "reqParam":Ljava/lang/String;
    .end local v3    # "reqjson":Lorg/json/JSONObject;
    .end local v4    # "requestid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAd()Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v3, "---getAd"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    if-nez v3, :cond_5

    .line 314
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v3, :cond_1

    .line 315
    const-string v3, "---getAd mAd not null"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 316
    new-instance v3, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v3, p0, v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    iput-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    .line 325
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    if-eqz v3, :cond_5

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    const-string v3, "---getAd mAd path is null"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 353
    .end local v1    # "path":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 318
    :cond_1
    const-string v3, "---getAd mAd is null"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAd()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 320
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v3, :cond_0

    .line 321
    const-string v3, "---getAd mAd cache not null"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 322
    new-instance v3, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v3, p0, v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    iput-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    goto :goto_0

    .line 331
    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 333
    :cond_3
    const-string v3, "---getAd mAd file is not exists"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_4
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v3, v1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->setImgPath(Ljava/lang/String;)V

    .line 339
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    if-eqz v3, :cond_9

    .line 341
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v3}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getmAdInfo()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v3}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getmAdInfo()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v3}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getmAdInfo()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iget-wide v6, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_time:J

    invoke-static {v4, v5, v6, v7}, Lcom/huanju/ssp/base/utils/SystemUtils;->isSameDayOfMillis(JJ)Z

    move-result v3

    if-nez v3, :cond_6

    .line 343
    const-string v3, "---ad is end time not same day"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :cond_6
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    goto :goto_1

    .line 348
    :cond_7
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v3}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getmAdInfo()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v3}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getmAdInfo()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9

    .line 349
    :cond_8
    const-string v3, "---ad is end time "

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 353
    :cond_9
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    goto/16 :goto_1
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "---handleClick"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    .line 200
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected onAdClose(I)V
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 57
    return-void
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public onNativeAdReach(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    const-string v1, "---request Lockscreen Ad getClassLoader:"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->parseData(Ljava/util/List;)Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    .line 76
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    if-nez v1, :cond_1

    .line 77
    const-string v1, "---request Lockscreen Ad mParseData is null"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->loadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;->onAdReach(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method protected reqAdSuccess()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public requestAd(Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;)V
    .locals 6
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request Lockscreen Ad getClassLoader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request Lockscreen Ad mIsInit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mIsInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 136
    iget-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mIsInit:Z

    if-nez v2, :cond_2

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mIsInit:Z

    .line 138
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAd()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 139
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_time:J

    invoke-static {v2, v3, v4, v5}, Lcom/huanju/ssp/base/utils/SystemUtils;->isSameDayOfMillis(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---mIsInit request Lockscreen Ad cache mAd.end_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->onNativeAdReach(Ljava/util/List;)V

    .line 193
    .end local v0    # "adList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 149
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---mIsInit request Lockscreen Ad cache mAd.end_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local v0    # "adList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->onNativeAdReach(Ljava/util/List;)V

    goto :goto_0

    .line 157
    .end local v0    # "adList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    :cond_2
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->checkNet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    const-string v2, "---requestAd checkNet only wifi:"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sp_request_interval"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "time":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request Lockscreen Ad time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v3

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v4

    iget-wide v4, v4, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    sub-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 164
    const-string v2, "---request Lockscreen Ad net by time"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->getScreenSize()[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->requestAd([I)V

    goto/16 :goto_0

    .line 173
    :cond_4
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAd()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request Lockscreen Ad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request Lockscreen Ad cache mAd.end_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_5
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---request Lockscreen Ad net by ad out time mAd.end_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->getScreenSize()[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->requestAd([I)V

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mAppcontext:Landroid/content/Context;

    .line 212
    :cond_0
    return-void
.end method

.method public setNetType(I)V
    .locals 2
    .param p1, "netType"    # I

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- Lockscreen setNetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iput p1, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    .line 221
    return-void
.end method

.method public subClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    return-void
.end method
