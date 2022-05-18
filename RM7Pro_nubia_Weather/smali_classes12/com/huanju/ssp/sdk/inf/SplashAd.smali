.class public interface abstract Lcom/huanju/ssp/sdk/inf/SplashAd;
.super Ljava/lang/Object;
.source "SplashAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getIsClose()Z
.end method

.method public abstract getOrigin()Ljava/lang/Object;
.end method

.method public abstract getReqId()Ljava/lang/String;
.end method

.method public abstract goToMainActivity()V
.end method

.method public abstract loadAndShowAd()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setActivityContext(Landroid/app/Activity;)V
.end method

.method public abstract setAutoCloseTime(J)V
.end method

.method public abstract setBrandPormotionImg(I)V
.end method

.method public abstract setCountControl(Z)V
.end method

.method public abstract setExtend(Ljava/util/Map;)V
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
.end method

.method public abstract setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V
.end method

.method public abstract setIntent(Landroid/content/Intent;)V
.end method

.method public abstract setIsJumpTargetWhenFail(Z)V
.end method

.method public abstract setSessionId(Ljava/lang/String;)V
.end method

.method public abstract setShowAdTime(J)V
.end method

.method public abstract setShowAdTimeOut(J)V
.end method

.method public abstract setSplashViewId(I)V
.end method

.method public abstract showCountDown(Z)V
.end method
