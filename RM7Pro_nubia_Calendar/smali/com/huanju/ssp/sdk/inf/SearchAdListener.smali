.class public interface abstract Lcom/huanju/ssp/sdk/inf/SearchAdListener;
.super Ljava/lang/Object;
.source "SearchAdListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract onAdError(Ljava/lang/String;I)V
.end method

.method public abstract onAdReach(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;",
            ">;)V"
        }
    .end annotation
.end method
