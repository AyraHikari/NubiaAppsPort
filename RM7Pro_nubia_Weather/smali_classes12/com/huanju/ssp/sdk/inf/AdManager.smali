.class public interface abstract Lcom/huanju/ssp/sdk/inf/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract crashTest()V
.end method

.method public abstract generateCommonAd(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract generateWebAd(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
.end method

.method public abstract getAdShareClickListener()Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;
.end method

.method public abstract getChargeAd()Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonChageAd;
.end method

.method public abstract getDownloadingCommonAdItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;Z)Z
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)Z
.end method

.method public abstract isAdInit()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract recommendPackage(Lcom/huanju/ssp/sdk/inf/IRecommendListener;Ljava/util/List;)V
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
.end method

.method public abstract reportErrorCach()V
.end method

.method public abstract reqNativeAd(Lcom/huanju/ssp/sdk/inf/NativeAd;Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V
.end method

.method public abstract reqRewardVideoAd(Lcom/huanju/ssp/sdk/inf/RewardVideoAd;ILcom/huanju/ssp/sdk/inf/RewardVideoAdListener;)V
.end method

.method public abstract reqSearchAd(Lcom/huanju/ssp/sdk/inf/SearchAd;Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V
.end method

.method public abstract setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
.end method

.method public abstract setAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V
.end method

.method public abstract setAppid(Ljava/lang/String;)V
.end method

.method public abstract setProviderName(Ljava/lang/String;)V
.end method

.method public abstract showBanner(Landroid/app/Activity;Ljava/lang/String;I)V
.end method

.method public abstract showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V
.end method

.method public abstract showFuseSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
.end method

.method public abstract showInsertAdView(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V
.end method
