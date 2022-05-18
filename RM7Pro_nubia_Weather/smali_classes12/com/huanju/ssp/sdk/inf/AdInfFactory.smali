.class public Lcom/huanju/ssp/sdk/inf/AdInfFactory;
.super Ljava/lang/Object;
.source "AdInfFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;
    }
.end annotation


# static fields
.field public static MODULE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/huanju/ssp/sdk/inf/AdInfFactory;


# instance fields
.field private mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

.field private mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;

.field private mIsDebug:Z

.field private mIsUpdateLimit:Z

.field private mListener:Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;

.field private mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

.field private mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

.field private mNetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "ssp"

    sput-object v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mIsUpdateLimit:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Lcom/huanju/ssp/base/hotfix/ModuleManager;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->invalidateAdInf()V

    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mListener:Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 46
    const-class v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->sInstance:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-direct {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;-><init>()V

    sput-object v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->sInstance:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    .line 48
    const-string v0, "AdInfFactory.getInstance: created new AdInfFactory "

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->sInstance:Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateAdInf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.invalidateAdInf: destroy old AdManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/AdManager;->onDestroy()V

    .line 131
    iput-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    if-eqz v0, :cond_1

    .line 134
    iput-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mIsStart:Z

    .line 138
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->reStart()V

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    .line 145
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 65
    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 66
    return-void
.end method

.method public attach(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .param p4, "netType"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.attach: netType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 76
    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 77
    return-void
.end method

.method public attach(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .param p4, "imei"    # Ljava/lang/String;
    .param p5, "netType"    # I
    .param p6, "isUpdateLimit"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdInfFactory.attach: mContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAppId:Ljava/lang/String;

    .line 85
    iput-boolean p3, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mIsDebug:Z

    .line 86
    iput-boolean p6, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mIsUpdateLimit:Z

    .line 87
    iput-object p4, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mImei:Ljava/lang/String;

    .line 88
    iput p5, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mNetType:I

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v1, Lcom/huanju/ssp/base/hotfix/ModuleManager;

    invoke-direct {v1, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdInfFactory.attach: created new ModuleManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 93
    const/16 v1, 0x16

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.huanju.ssp.sdk.inf.AdManager"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.huanju.ssp.sdk.inf.AdUpgradeListener"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.huanju.ssp.sdk.inf.AdUtils"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.huanju.ssp.sdk.inf.AdUtils$NetEnvironment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.huanju.ssp.sdk.inf.SplashAd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.huanju.ssp.sdk.inf.InsertAd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.huanju.ssp.sdk.inf.BannerAd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.huanju.ssp.sdk.inf.NativeAd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.huanju.ssp.sdk.inf.NativeAd$NativeResponse"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.huanju.ssp.sdk.inf.NativeAd$BindDataProxy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.huanju.ssp.sdk.inf.NativeAdListener"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.huanju.ssp.sdk.inf.SearchAd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.huanju.ssp.sdk.inf.SearchAd$SearcheResponse"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.huanju.ssp.sdk.inf.SearchAd$BindDataProxy"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.huanju.ssp.sdk.inf.SearchAdListener"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.huanju.ssp.base.core.frame.listeners.AdShareClickListener"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.huanju.ssp.base.core.sdk.CommonAd.CommonAd"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.huanju.ssp.base.core.request.ad.listener.IGetDownLoadUrlListener"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.huanju.ssp.sdk.listener.AdListener"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.huanju.ssp.sdk.inf.LockScreenAd"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.huanju.ssp.sdk.inf.LockScreenAdListener"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.huanju.ssp.sdk.inf.LockScreenAd$LockScreenResponse"

    aput-object v2, v0, v1

    .line 117
    .local v0, "ex":[Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    const-string v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->setExcludedClasses(Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    .end local v0    # "ex":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public attach(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .param p4, "isUpdateLimit"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 70
    const-string v4, ""

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 71
    return-void
.end method

.method public createBannerAd(Landroid/app/Activity;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/BannerAd;
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createBannerAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/BannerAd;

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/BannerAd;

    .line 252
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/BannerAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createBannerAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 253
    return-object v6
.end method

.method public createBannerAd(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/huanju/ssp/sdk/inf/BannerAd;
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "isCarousel"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createBannerAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/BannerAd;

    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v9

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    .line 261
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v9

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/BannerAd;

    .line 262
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/BannerAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createBannerAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 263
    return-object v6
.end method

.method public createBannerAd(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcom/huanju/ssp/sdk/inf/BannerAd;
    .locals 13
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "isCarousel"    # Z
    .param p4, "sessionid"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/huanju/ssp/sdk/inf/BannerAd;"
        }
    .end annotation

    .prologue
    .line 268
    .local p5, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdInfFactory.createBannerAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 269
    const-string v10, ""

    .line 271
    .local v10, "strExtend":Ljava/lang/String;
    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 272
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 273
    .local v9, "jsonObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 274
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 275
    if-nez v10, :cond_0

    .line 276
    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 285
    const-string p4, ""

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v2, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v3, Lcom/huanju/ssp/sdk/inf/BannerAd;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v11, Landroid/app/Activity;

    aput-object v11, v5, v6

    const/4 v6, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v6

    const/4 v6, 0x2

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v6

    const/4 v6, 0x3

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v6

    const/4 v6, 0x4

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v6

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v11, 0x1

    aput-object p2, v6, v11

    const/4 v11, 0x2

    .line 289
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v11, 0x3

    aput-object p4, v6, v11

    const/4 v11, 0x4

    aput-object v10, v6, v11

    .line 287
    invoke-virtual/range {v1 .. v6}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huanju/ssp/sdk/inf/BannerAd;

    .line 290
    .local v7, "ad":Lcom/huanju/ssp/sdk/inf/BannerAd;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdInfFactory.createBannerAd: created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 291
    return-object v7

    .line 280
    .end local v7    # "ad":Lcom/huanju/ssp/sdk/inf/BannerAd;
    :catch_0
    move-exception v8

    .line 281
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createInsertAd(Landroid/app/Activity;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/InsertAd;
    .locals 10
    .param p1, "ac"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createInsertAd adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/InsertAd;

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/InsertAd;

    .line 232
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/InsertAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createInsertAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 233
    return-object v6
.end method

.method public createLockScreenAd(Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/LockScreenAd;
    .locals 9
    .param p1, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createInsertAd adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    const/4 v3, 0x0

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    .line 242
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/LockScreenAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createInsertAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 243
    return-object v6
.end method

.method public createNativeAd(Landroid/app/Activity;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/NativeAd;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createNativeAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/NativeAd;

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/NativeAd;

    .line 300
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/NativeAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createNativeAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 301
    return-object v6
.end method

.method public createRewardVideoAd(Landroid/app/Activity;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/RewardVideoAd;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createRewardVideoAd adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/RewardVideoAd;

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/RewardVideoAd;

    .line 202
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/RewardVideoAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSplashAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 203
    return-object v6
.end method

.method public createSearchAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SearchAd;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSearchAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/SearchAd;

    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    aput-object p3, v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/SearchAd;

    .line 310
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/SearchAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSearchAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 311
    return-object v6
.end method

.method public createSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SplashAd;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSplashAd adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    aput-object p3, v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/SplashAd;

    .line 212
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/SplashAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSplashAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 213
    return-object v6
.end method

.method public createSplashAd(Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SplashAd;
    .locals 9
    .param p1, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSplashAd adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v3, 0x0

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huanju/ssp/sdk/inf/SplashAd;

    .line 222
    .local v6, "ad":Lcom/huanju/ssp/sdk/inf/SplashAd;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.createSplashAd: created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 223
    return-object v6
.end method

.method public getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string v0, "AdInfFactory.getAdManager: created new AdManager "

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.getAdManager: mMM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/AdManager;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/inf/AdManager;

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.getAdManager: created new AdManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;-><init>(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)V

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/AdManager;->setAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V

    .line 180
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAppId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mIsDebug:Z

    iget-object v4, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mImei:Ljava/lang/String;

    iget v5, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mNetType:I

    iget-boolean v6, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mIsUpdateLimit:Z

    invoke-interface/range {v0 .. v6}, Lcom/huanju/ssp/sdk/inf/AdManager;->init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)Z

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    return-object v0
.end method

.method public getAdUtils()Lcom/huanju/ssp/sdk/inf/AdUtils;
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mMM:Lcom/huanju/ssp/base/hotfix/ModuleManager;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const-class v2, Lcom/huanju/ssp/sdk/inf/AdUtils;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/inf/AdUtils;

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.getAdUtils: created new AdUtils "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mAdUtils:Lcom/huanju/ssp/sdk/inf/AdUtils;

    return-object v0
.end method

.method public getLockAdManager()Lcom/huanju/ssp/base/core/sdk/LockAdManager;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    .line 153
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    .line 153
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mLockAdManager:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    goto :goto_0
.end method

.method public setUpdateListener(Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mListener:Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;

    .line 124
    return-void
.end method

.method public setmNetType(I)V
    .locals 2
    .param p1, "netType"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 58
    iput p1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->mNetType:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.getInstance: setmNetType  netType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getLockAdManager()Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->setRequestNetType(I)V

    .line 61
    return-void
.end method
