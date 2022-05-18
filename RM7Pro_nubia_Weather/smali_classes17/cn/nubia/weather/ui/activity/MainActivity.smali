.class public Lcn/nubia/weather/ui/activity/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/MainActivity$SplashAdCallBack;
    }
.end annotation


# static fields
.field public static final CUSTOM:I = 0x2

.field private static final FIVE_MINUTE:J = 0x493e0L

.field public static final SIMPLE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isTimeout:Z

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 32
    const-class v0, Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->startTime:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->isTimeout:Z

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/activity/MainActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 31
    iget-wide v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/nubia/weather/ui/activity/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->isTimeout:Z

    return p1
.end method

.method private initAd()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getSplashID()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "splashID":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splashID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-class v1, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0, v0, v1}, Lcn/nubia/weather/ui/activity/MainActivity;->showWithHot(Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    return-void
.end method

.method private initAdSdk()V
    .locals 6

    .prologue
    .line 204
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "initAdSdk: "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 206
    .local v0, "adInfFactory":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 207
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 208
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdUtils()Lcom/huanju/ssp/sdk/inf/AdUtils;

    move-result-object v2

    .line 209
    .local v2, "adUtils":Lcom/huanju/ssp/sdk/inf/AdUtils;
    return-void
.end method

.method private registerEventReceiver()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcn/nubia/weather/ui/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/MainActivity$1;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private showWithHot(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 12
    .param p1, "splashID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "tagActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 111
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 113
    .local v0, "adInf":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 114
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-interface {v1}, Lcom/huanju/ssp/sdk/inf/AdManager;->reportErrorCach()V

    .line 115
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 116
    .local v3, "mainHandler":Landroid/os/Handler;
    new-instance v7, Lcn/nubia/weather/ui/activity/MainActivity$2;

    invoke-direct {v7, p0, v1}, Lcn/nubia/weather/ui/activity/MainActivity$2;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;Lcom/huanju/ssp/sdk/inf/AdManager;)V

    const-wide/32 v8, 0x493e0

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, p0, v7, p1}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->createSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SplashAd;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    .line 124
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "splashId=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "appid=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0x1f4

    invoke-interface {v7, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setAutoCloseTime(J)V

    .line 126
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0xbb8

    invoke-interface {v7, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTime(J)V

    .line 127
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0x3e8

    invoke-interface {v7, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTimeOut(J)V

    .line 128
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v7, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIsJumpTargetWhenFail(Z)V

    .line 129
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v7, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setCountControl(Z)V

    .line 130
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v7, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->showCountDown(Z)V

    .line 131
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const v8, 0x7f020261

    invoke-interface {v7, v8}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setBrandPormotionImg(I)V

    .line 132
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v7, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 134
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v7}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getAdView()Landroid/view/View;

    move-result-object v5

    .line 135
    .local v5, "splashAdView":Landroid/view/View;
    const v7, 0x7f10006a

    invoke-virtual {p0, v7}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 136
    .local v6, "splashLayout":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "splashAdView=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v6, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    new-instance v8, Lcn/nubia/weather/ui/activity/MainActivity$SplashAdCallBack;

    invoke-direct {v8, p0}, Lcn/nubia/weather/ui/activity/MainActivity$SplashAdCallBack;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    invoke-interface {v1, p0, v7, v8}, Lcom/huanju/ssp/sdk/inf/AdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 183
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 48
    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/MainActivity;->requestWindowFeature(I)Z

    .line 49
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->setContentView(I)V

    .line 50
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getIsUpdateEnabled()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "KEY_IS_ALLOW_UPDATE"

    const/4 v4, 0x0

    .line 51
    invoke-static {v2, v3, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    .local v1, "isAlreadySetFlag":Z
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [lijiangfeng] isAlreadySetFlag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->setIsAllowUpdate()V

    .line 58
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initAdSdk()V

    .line 63
    .end local v1    # "isAlreadySetFlag":Z
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initAd()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->registerEventReceiver()V

    .line 73
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "no initAdSdk "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initAdSdk()V

    .line 69
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initAd()V

    goto :goto_0
.end method

.method public onCtaConfirm()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "splashAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 200
    :cond_1
    return-void
.end method
