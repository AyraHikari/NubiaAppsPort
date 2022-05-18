.class public interface abstract Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;
.super Ljava/lang/Object;
.source "AdStateChangListener.java"


# virtual methods
.method public abstract onAdError(Ljava/lang/String;I)V
.end method

.method public abstract onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end method

.method public abstract onAdStatusChange(I)V
.end method

.method public abstract onNativeAdReach(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStart()V
.end method

.method public abstract reportErrUrl(Ljava/lang/String;)V
.end method
