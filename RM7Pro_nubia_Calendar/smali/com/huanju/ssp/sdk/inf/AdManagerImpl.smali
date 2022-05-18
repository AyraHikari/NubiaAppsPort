.class public Lcom/huanju/ssp/sdk/inf/AdManagerImpl;
.super Ljava/lang/Object;
.source "AdManagerImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/AdManager;


# static fields
.field static sFakeAds:Z


# instance fields
.field private mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->sFakeAds:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdManagerImpl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

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

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public crashTest()V
    .locals 0

    .prologue
    .line 258
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->crashTest()V

    .line 259
    return-void
.end method

.method public generateCommonAd(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->generateCommonAd(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public generateWebAd(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->generateWebAd(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;

    move-result-object v0

    return-object v0
.end method

.method public getAdShareClickListener()Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->getAdShareClickListener()Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getChargeAd()Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonChageAd;
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/huanju/ssp/sdk/ReportAdManager;

    invoke-direct {v0}, Lcom/huanju/ssp/sdk/ReportAdManager;-><init>()V

    return-object v0
.end method

.method public getDownloadingCommonAdItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .locals 1
    .param p1, "adid"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->getDownloadingCommonAdItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_id"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdManagerImpl.init app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->init(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdManagerImpl.init app_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isDebug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/hotfix/DexManager;->setmAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V

    .line 116
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    .local v0, "res":Z
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->checkupdate(Landroid/content/Context;)V

    .line 118
    const-string v1, "fakeads"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->sFakeAds:Z

    .line 119
    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .param p4, "iMei"    # Ljava/lang/String;
    .param p5, "netType"    # I

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdManagerImpl.init app_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isDebug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/hotfix/DexManager;->setmAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V

    .line 126
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    .line 127
    .local v0, "res":Z
    if-eqz p5, :cond_0

    .line 128
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->checkupdate(Landroid/content/Context;)V

    .line 130
    :cond_0
    const-string v1, "fakeads"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->sFakeAds:Z

    .line 131
    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .param p4, "iMei"    # Ljava/lang/String;
    .param p5, "netType"    # I
    .param p6, "isUpdateLimit"    # Z

    .prologue
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdManagerImpl.init app_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isDebug: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isUpdateLimit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/hotfix/DexManager;->setmAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V

    .line 138
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v2

    .line 139
    .local v2, "res":Z
    if-eqz p5, :cond_1

    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, "isUpdate":Z
    if-eqz p6, :cond_0

    .line 142
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isUpdateTime()Z

    move-result v1

    .line 143
    .local v1, "isupdateTime":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdManagerImpl.init isupdateTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 144
    move v0, v1

    .line 146
    .end local v1    # "isupdateTime":Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdManagerImpl.init isupdate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isUpdateLimit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->checkupdate(Landroid/content/Context;)V

    .line 151
    .end local v0    # "isUpdate":Z
    :cond_1
    const-string v3, "fakeads"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->sFakeAds:Z

    .line 152
    return v2
.end method

.method public isAdInit()Z
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdManagerImpl.onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->isAdInit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->release()V

    .line 162
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->unregisterReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->onDestroy()V

    .line 169
    :cond_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public recommendPackage(Lcom/huanju/ssp/sdk/inf/IRecommendListener;Ljava/util/List;)V
    .locals 0
    .param p1, "iRecommendListener"    # Lcom/huanju/ssp/sdk/inf/IRecommendListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/IRecommendListener;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "packageInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p1, p2}, Lcom/huanju/ssp/sdk/AdManager;->recommendPackage(Lcom/huanju/ssp/sdk/inf/IRecommendListener;Ljava/util/List;)V

    .line 284
    return-void
.end method

.method public reportErrorCach()V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->reportErrorCach()V

    .line 249
    return-void
.end method

.method public reqNativeAd(Lcom/huanju/ssp/sdk/inf/NativeAd;Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V
    .locals 2
    .param p1, "nativeAd"    # Lcom/huanju/ssp/sdk/inf/NativeAd;
    .param p2, "nativeAdListener"    # Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    .prologue
    .line 238
    invoke-interface {p1}, Lcom/huanju/ssp/sdk/inf/NativeAd;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/NativeAd;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;

    invoke-direct {v1, p2}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/AdManager;->reqNativeAd(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/huanju/ssp/sdk/listener/NativeAdListener;)V

    .line 239
    return-void
.end method

.method public reqRewardVideoAd(Lcom/huanju/ssp/sdk/inf/RewardVideoAd;ILcom/huanju/ssp/sdk/inf/RewardVideoAdListener;)V
    .locals 1
    .param p1, "rewardVideoAd"    # Lcom/huanju/ssp/sdk/inf/RewardVideoAd;
    .param p2, "type"    # I
    .param p3, "rewardVideoAdListener"    # Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    .prologue
    .line 188
    invoke-interface {p1}, Lcom/huanju/ssp/sdk/inf/RewardVideoAd;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v0, p2, p3}, Lcom/huanju/ssp/sdk/AdManager;->reqRewardVideoAd(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;ILcom/huanju/ssp/sdk/inf/RewardVideoAdListener;)V

    .line 189
    return-void
.end method

.method public reqSearchAd(Lcom/huanju/ssp/sdk/inf/SearchAd;Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V
    .locals 2
    .param p1, "searchAd"    # Lcom/huanju/ssp/sdk/inf/SearchAd;
    .param p2, "searchAdListener"    # Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    .prologue
    .line 243
    invoke-interface {p1}, Lcom/huanju/ssp/sdk/inf/SearchAd;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/SearchAd;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;

    invoke-direct {v1, p2}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/AdManager;->reqSearchAd(Lcom/huanju/ssp/sdk/normal/SearchAd;Lcom/huanju/ssp/sdk/listener/SearchAdListener;)V

    .line 244
    return-void
.end method

.method public setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/huanju/ssp/sdk/AdManager;->setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V

    .line 174
    return-void
.end method

.method public setAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/AdManagerImpl;->mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    .line 289
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 273
    sput-object p1, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 278
    sput-object p1, Lcom/huanju/ssp/base/core/common/Config;->mPorviderName:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public showBanner(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stripeId"    # Ljava/lang/String;
    .param p3, "gravity"    # I

    .prologue
    .line 228
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/sdk/AdManager;->showBanner(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "gravity"    # I
    .param p4, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 233
    invoke-static {p1, p2, p3, p4}, Lcom/huanju/ssp/sdk/AdManager;->showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 234
    return-void
.end method

.method public showFuseSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "splashAd"    # Lcom/huanju/ssp/sdk/inf/SplashAd;
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 193
    invoke-interface {p2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {p1, v0, p3}, Lcom/huanju/ssp/sdk/AdManager;->showFuseSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 194
    return-void
.end method

.method public showInsertAdView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p1, p2}, Lcom/huanju/ssp/sdk/AdManager;->showInsertAdView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 223
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/sdk/AdManager;->showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 224
    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "splashAd"    # Lcom/huanju/ssp/sdk/inf/SplashAd;

    .prologue
    .line 183
    invoke-interface {p2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {p1, v0}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    .line 184
    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "splashAd"    # Lcom/huanju/ssp/sdk/inf/SplashAd;
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 198
    invoke-interface {p2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {p1, v0, p3}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 199
    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "adSlotId"    # Ljava/lang/String;
    .param p4, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 208
    invoke-static {p1, p2, p3, p4}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 209
    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "adSlotId"    # Ljava/lang/String;
    .param p4, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;
    .param p5, "resId"    # I

    .prologue
    .line 213
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V

    .line 214
    return-void
.end method
