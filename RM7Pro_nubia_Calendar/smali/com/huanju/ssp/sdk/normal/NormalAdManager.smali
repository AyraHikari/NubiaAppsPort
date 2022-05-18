.class public final Lcom/huanju/ssp/sdk/normal/NormalAdManager;
.super Ljava/lang/Object;
.source "NormalAdManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAdInit()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdManager.init() not call"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method private static loopActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static loopActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paramClass"    # Ljava/lang/Class;

    .prologue
    .line 153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->loopActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adSlotId"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    const/4 v4, -0x2

    .line 126
    invoke-static {}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->checkAdInit()V

    .line 128
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :cond_0
    const-string v3, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_1
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    .local v0, "bannerAd":Lcom/huanju/ssp/sdk/normal/BannerAd;
    invoke-virtual {v0, p3}, Lcom/huanju/ssp/sdk/normal/BannerAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 135
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    .line 137
    .local v1, "bannerAdView":Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 141
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static showFuseSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "splashAd"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 29
    invoke-static {}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->checkAdInit()V

    .line 30
    const-string v0, "showSplashAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 32
    :cond_0
    const-string v0, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 34
    if-eqz p2, :cond_1

    .line 35
    const-string v0, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    const/16 v1, -0x501

    invoke-interface {p2, v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onAdError(Ljava/lang/String;I)V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    const-string v0, "showSplashAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 42
    invoke-virtual {p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->requestShowAd()V

    goto :goto_0
.end method

.method public static showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adSlotId"    # Ljava/lang/String;
    .param p2, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 108
    invoke-static {}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->checkAdInit()V

    .line 109
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    const-string v1, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v0, Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 115
    .local v0, "insertAd":Lcom/huanju/ssp/sdk/normal/InsertAd;
    invoke-virtual {v0, p2}, Lcom/huanju/ssp/sdk/normal/InsertAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 116
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->loadAndShowAd()V

    goto :goto_0
.end method

.method public static showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "splashAd"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 54
    invoke-static {}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->checkAdInit()V

    .line 55
    const-string v0, "showSplashAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 57
    :cond_0
    const-string v0, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 59
    if-eqz p2, :cond_1

    .line 60
    const-string v0, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    const/16 v1, -0x501

    invoke-interface {p2, v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onAdError(Ljava/lang/String;I)V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    const-string v0, "showSplashAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 67
    invoke-virtual {p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->loadAndShowAd()V

    goto :goto_0
.end method

.method public static showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paramClass"    # Ljava/lang/Class;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;
    .param p4, "resId"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->checkAdInit()V

    .line 82
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_0
    const-string v1, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 86
    if-eqz p3, :cond_1

    .line 87
    const-string v1, "\u53c2\u6570\u4e2d\u6709\u7a7a\u53c2\uff01"

    const/16 v2, -0x501

    invoke-interface {p3, v1, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onAdError(Ljava/lang/String;I)V

    .line 90
    :cond_1
    invoke-static {p0, p1}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->loopActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_2
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {v0, p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;-><init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    .local v0, "splashAd":Lcom/huanju/ssp/sdk/normal/SplashAd;
    invoke-virtual {v0, p4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setBrandPormotionImg(I)V

    .line 98
    invoke-virtual {v0, p3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 99
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->loadAndShowAd()V

    goto :goto_0
.end method
