.class public interface abstract Lcom/huanju/ssp/sdk/listener/NativeAdListener;
.super Ljava/lang/Object;
.source "NativeAdListener.java"


# virtual methods
.method public abstract onAdError(Ljava/lang/String;I)V
.end method

.method public abstract onAdReach(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTTAdExpressReach(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;)V"
        }
    .end annotation
.end method
