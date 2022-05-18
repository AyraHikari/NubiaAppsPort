.class public interface abstract Lcom/huanju/ssp/sdk/inf/InsertAd;
.super Ljava/lang/Object;
.source "InsertAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract clearAd()V
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getOrigin()Ljava/lang/Object;
.end method

.method public abstract isAdReady()Z
.end method

.method public abstract loadAd()V
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

.method public abstract setSessionId(Ljava/lang/String;)V
.end method

.method public abstract showAd()V
.end method
