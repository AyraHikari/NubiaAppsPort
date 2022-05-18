.class public Lcn/nubia/calendar/AllInOneActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AllInOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;
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
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 30
    const-class v0, Lcn/nubia/calendar/AllInOneActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/calendar/AllInOneActivity;->startTime:J

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/AllInOneActivity;->isTimeout:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/AllInOneActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/AllInOneActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/AllInOneActivity;

    .prologue
    .line 29
    iget-wide v0, p0, Lcn/nubia/calendar/AllInOneActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/AllInOneActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/AllInOneActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/nubia/calendar/AllInOneActivity;->isTimeout:Z

    return p1
.end method

.method private registerEventReceiver()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcn/nubia/calendar/AllInOneActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcn/nubia/calendar/AllInOneActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/AllInOneActivity$1;-><init>(Lcn/nubia/calendar/AllInOneActivity;)V

    iput-object v1, p0, Lcn/nubia/calendar/AllInOneActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcn/nubia/calendar/AllInOneActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/calendar/AllInOneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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
    .line 111
    .local p2, "tagActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcn/nubia/calendar/AllInOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 113
    .local v3, "currentIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "currentAction":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 115
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 121
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 125
    .local v0, "adInf":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 126
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-interface {v1}, Lcom/huanju/ssp/sdk/inf/AdManager;->reportErrorCach()V

    .line 127
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 128
    .local v5, "mainHandler":Landroid/os/Handler;
    new-instance v9, Lcn/nubia/calendar/AllInOneActivity$2;

    invoke-direct {v9, p0, v1}, Lcn/nubia/calendar/AllInOneActivity$2;-><init>(Lcn/nubia/calendar/AllInOneActivity;Lcom/huanju/ssp/sdk/inf/AdManager;)V

    const-wide/32 v10, 0x493e0

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, p0, v9, p1}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->createSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/SplashAd;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    .line 136
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "splashId=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "------appid=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcn/nubia/calendar/util/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v10, 0x1f4

    invoke-interface {v9, v10, v11}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setAutoCloseTime(J)V

    .line 138
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v10, 0xbb8

    invoke-interface {v9, v10, v11}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTime(J)V

    .line 139
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const-wide/16 v10, 0x3e8

    invoke-interface {v9, v10, v11}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setShowAdTimeOut(J)V

    .line 140
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIsJumpTargetWhenFail(Z)V

    .line 141
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setCountControl(Z)V

    .line 142
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->showCountDown(Z)V

    .line 143
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const v10, 0x7f020085

    invoke-interface {v9, v10}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setBrandPormotionImg(I)V

    .line 144
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v9, v4}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 146
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v9}, Lcom/huanju/ssp/sdk/inf/SplashAd;->getAdView()Landroid/view/View;

    move-result-object v7

    .line 147
    .local v7, "splashAdView":Landroid/view/View;
    const v9, 0x7f110078

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 148
    .local v8, "splashLayout":Landroid/widget/FrameLayout;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "splashAdView=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v8, v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v9, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    new-instance v10, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;

    invoke-direct {v10, p0}, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;-><init>(Lcn/nubia/calendar/AllInOneActivity;)V

    invoke-interface {v1, p0, v9, v10}, Lcom/huanju/ssp/sdk/inf/AdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/inf/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 152
    return-void

    .line 117
    .end local v0    # "adInf":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    .end local v1    # "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    .end local v5    # "mainHandler":Landroid/os/Handler;
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "splashAdView":Landroid/view/View;
    .end local v8    # "splashLayout":Landroid/widget/FrameLayout;
    :cond_1
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 188
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v5, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcn/nubia/calendar/AllInOneActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 46
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/AllInOneActivity;->requestWindowFeature(I)Z

    .line 47
    const v6, 0x7f03001d

    invoke-virtual {p0, v6}, Lcn/nubia/calendar/AllInOneActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    .line 50
    .local v0, "connected":Z
    invoke-static {p0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v6

    if-nez v0, :cond_2

    :goto_0
    or-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 52
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcn/nubia/calendar/HomeActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcn/nubia/calendar/AllInOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 54
    .local v2, "currentIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "currentAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 56
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 61
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    :cond_1
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/AllInOneActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/calendar/AllInOneActivity;->finish()V

    .line 65
    iget-object v5, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    const-string v6, "AllInOneActivity isFirstLaunch"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v1    # "currentAction":Ljava/lang/String;
    .end local v2    # "currentIntent":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 50
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 58
    .restart local v1    # "currentAction":Ljava/lang/String;
    .restart local v2    # "currentIntent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 68
    .end local v1    # "currentAction":Ljava/lang/String;
    .end local v2    # "currentIntent":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcn/nubia/calendar/util/AdSetting;->getSplashID()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "splashID":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-class v5, Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0, v4, v5}, Lcn/nubia/calendar/AllInOneActivity;->showWithHot(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    invoke-direct {p0}, Lcn/nubia/calendar/AllInOneActivity;->registerEventReceiver()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/AllInOneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    iput-object v2, p0, Lcn/nubia/calendar/AllInOneActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->TAG:Ljava/lang/String;

    const-string v1, "splashAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity;->splashAd:Lcom/huanju/ssp/sdk/inf/SplashAd;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/inf/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 205
    :cond_1
    return-void
.end method
