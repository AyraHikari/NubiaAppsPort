.class public interface abstract Lcom/huanju/ssp/sdk/inf/IRecommendListener;
.super Ljava/lang/Object;
.source "IRecommendListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract onErrorr(Ljava/lang/String;I)V
.end method

.method public abstract recommendResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonRepository;",
            ">;)V"
        }
    .end annotation
.end method
