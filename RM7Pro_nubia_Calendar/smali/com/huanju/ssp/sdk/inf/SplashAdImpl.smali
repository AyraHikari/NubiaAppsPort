.class public Lcom/huanju/ssp/sdk/inf/SplashAdImpl;
.super Ljava/lang/Object;
.source "SplashAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/SplashAd;


# instance fields
.field private mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {v0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/SplashAd;-><init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {v0, v1, v1, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;-><init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    .line 19
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    return-object v0
.end method

.method public getIsClose()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getIsClose()Z

    move-result v0

    return v0
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getReqId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goToMainActivity()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->goToMainActivity()V

    .line 114
    return-void
.end method

.method public loadAndShowAd()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->loadAndShowAd()V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->onPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->onResume()V

    .line 124
    return-void
.end method

.method public setActivityContext(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setActivityContext(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method public setAutoCloseTime(J)V
    .locals 1
    .param p1, "autoCloseTime"    # J

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setAutoCloseTime(J)V

    .line 36
    return-void
.end method

.method public setBrandPormotionImg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setBrandPormotionImg(I)V

    .line 49
    return-void
.end method

.method public setCountControl(Z)V
    .locals 1
    .param p1, "isControl"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setCountControl(Z)V

    .line 74
    return-void
.end method

.method public setExtend(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setExtend(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 109
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setIntent(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public setIsJumpTargetWhenFail(Z)V
    .locals 1
    .param p1, "isJump"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setIsJumpTargetWhenFail(Z)V

    .line 32
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setSessionId(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setShowAdTime(J)V
    .locals 1
    .param p1, "showAdTime"    # J

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setShowAdTime(J)V

    .line 40
    return-void
.end method

.method public setShowAdTimeOut(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 78
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setShowAdTimeOut(J)V

    .line 79
    return-void
.end method

.method public setSplashViewId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setSplashViewId(I)V

    .line 99
    return-void
.end method

.method public showCountDown(Z)V
    .locals 1
    .param p1, "isShowCountDown"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SplashAdImpl;->mSplashAd:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->showCountDown(Z)V

    .line 44
    return-void
.end method
