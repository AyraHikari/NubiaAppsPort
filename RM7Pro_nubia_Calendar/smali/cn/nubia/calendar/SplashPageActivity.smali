.class public Lcn/nubia/calendar/SplashPageActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SplashPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/SplashPageActivity$SplashAdCallBack;
    }
.end annotation


# static fields
.field public static final CUSTOM:I = 0x2

.field public static final SIMPLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SplashPageActivity"


# instance fields
.field private isTimeout:Z

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/calendar/SplashPageActivity;->startTime:J

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/SplashPageActivity;->isTimeout:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/SplashPageActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/SplashPageActivity;

    .prologue
    .line 22
    iget-wide v0, p0, Lcn/nubia/calendar/SplashPageActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/SplashPageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/SplashPageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcn/nubia/calendar/SplashPageActivity;->isTimeout:Z

    return p1
.end method

.method private registerEventReceiver()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcn/nubia/calendar/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcn/nubia/calendar/SplashPageActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/SplashPageActivity$1;-><init>(Lcn/nubia/calendar/SplashPageActivity;)V

    iput-object v1, p0, Lcn/nubia/calendar/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcn/nubia/calendar/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/calendar/SplashPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
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

    .line 86
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 87
    .local v0, "adInf":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 88
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, p0, v6, p1}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->createSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SplashAd;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    .line 89
    const-string v6, "SplashPageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "splashId=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "------appid=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/calendar/util/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0x12c

    invoke-interface {v6, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setAutoCloseTime(J)V

    .line 91
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0xbb8

    invoke-interface {v6, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTime(J)V

    .line 92
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v8, 0x320

    invoke-interface {v6, v8, v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTimeOut(J)V

    .line 93
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIsJumpTargetWhenFail(Z)V

    .line 94
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setCountControl(Z)V

    .line 95
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->showCountDown(Z)V

    .line 96
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const v7, 0x7f020085

    invoke-interface {v6, v7}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setBrandPormotionImg(I)V

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 100
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v6}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getAdView()Landroid/view/View;

    move-result-object v4

    .line 101
    .local v4, "splashAdView":Landroid/view/View;
    const v6, 0x7f110078

    invoke-virtual {p0, v6}, Lcn/nubia/calendar/SplashPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 102
    .local v5, "splashLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const-string v6, "SplashPageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "splashAdView=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v5, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v6, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    new-instance v7, Lcn/nubia/calendar/SplashPageActivity$SplashAdCallBack;

    invoke-direct {v7, p0}, Lcn/nubia/calendar/SplashPageActivity$SplashAdCallBack;-><init>(Lcn/nubia/calendar/SplashPageActivity;)V

    invoke-interface {v1, p0, v6, v7}, Lcom/huanju/ssp/sdk/inf/AdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 142
    iget-object v0, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/calendar/SplashPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/SplashPageActivity;->requestWindowFeature(I)Z

    .line 39
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/SplashPageActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/nubia/calendar/HomeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/SplashPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcn/nubia/calendar/SplashPageActivity;->finish()V

    .line 43
    const-string v2, "lidd"

    const-string v3, "SplashPageActivity isFirstLaunch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/SplashPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/calendar/util/AdSetting;->getSplashID()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "splashID":Ljava/lang/String;
    const-string v2, "123qwe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-class v2, Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0, v1, v2}, Lcn/nubia/calendar/SplashPageActivity;->showWithHot(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    invoke-direct {p0}, Lcn/nubia/calendar/SplashPageActivity;->registerEventReceiver()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 150
    const-string v0, "SplashPageActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcn/nubia/calendar/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/SplashPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iput-object v2, p0, Lcn/nubia/calendar/SplashPageActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "SplashPageActivity"

    const-string v1, "splashAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/SplashPageActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 159
    :cond_1
    return-void
.end method
