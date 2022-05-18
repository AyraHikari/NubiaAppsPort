.class public Lcn/nubia/weather/ui/activity/SplashPageActivity;
.super Lcn/nubia/weather/ui/activity/BaseFragmentActivity;
.source "SplashPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/SplashPageActivity$SplashAdCallBack;
    }
.end annotation


# static fields
.field public static final CUSTOM:I = 0x2

.field public static final SIMPLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SplashPageActivity"


# instance fields
.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

.field private splashLayout:Landroid/widget/LinearLayout;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->startTime:J

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/activity/SplashPageActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/SplashPageActivity;

    .prologue
    .line 21
    iget-wide v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/activity/SplashPageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/SplashPageActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private registerEventReceiver()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcn/nubia/weather/ui/activity/SplashPageActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/SplashPageActivity$1;-><init>(Lcn/nubia/weather/ui/activity/SplashPageActivity;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
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

    .line 85
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 86
    .local v0, "adInf":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 87
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, p0, v6, p1}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->createSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SplashAd;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    .line 88
    const-string v6, "SplashPageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdModule: splashAd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v6, "SplashPageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "splashId=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "appid=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0x12c

    invoke-interface {v6, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setAutoCloseTime(J)V

    .line 91
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0xbb8

    invoke-interface {v6, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTime(J)V

    .line 92
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0x320

    invoke-interface {v6, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTimeOut(J)V

    .line 93
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIsJumpTargetWhenFail(Z)V

    .line 94
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->showCountDown(Z)V

    .line 95
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setCountControl(Z)V

    .line 96
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const v7, 0x7f020261

    invoke-interface {v6, v7}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setBrandPormotionImg(I)V

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 101
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getAdView()Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "splashAdView":Landroid/view/View;
    const v6, 0x7f10006a

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 103
    .local v5, "splashLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    new-instance v7, Lcn/nubia/weather/ui/activity/SplashPageActivity$SplashAdCallBack;

    invoke-direct {v7, p0}, Lcn/nubia/weather/ui/activity/SplashPageActivity$SplashAdCallBack;-><init>(Lcn/nubia/weather/ui/activity/SplashPageActivity;)V

    invoke-interface {v1, p0, v6, v7}, Lcom/huanju/ssp/sdk/inf/AdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onBackPressed()V

    .line 141
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    .line 34
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v3, "SplashPageActivity"

    const-string v4, "SplashPageActivity onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 38
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->requestWindowFeature(I)Z

    .line 39
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->setContentView(I)V

    .line 40
    const v3, 0x7f100069

    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashLayout:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    .line 43
    .local v1, "method":I
    if-eqz v0, :cond_0

    .line 44
    const-string v3, "method"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    :cond_0
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getSplashID()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "splashID":Ljava/lang/String;
    const-string v3, "123qwe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "splashID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->registerEventReceiver()V

    .line 50
    const-class v3, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0, v2, v3}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->showWithHot(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/SplashPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    iput-object v2, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "SplashPageActivity"

    const-string v1, "splashAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 157
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onResume()V

    .line 162
    const-string v0, "SplashPageActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
