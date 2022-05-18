.class public interface abstract Lcom/huanju/ssp/sdk/inf/SearchAd;
.super Ljava/lang/Object;
.source "SearchAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;,
        Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;
    }
.end annotation


# virtual methods
.method public abstract free()V
.end method

.method public abstract getOrigin()Ljava/lang/Object;
.end method

.method public abstract requestAd(Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V
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

.method public abstract setSessionId(Ljava/lang/String;)V
.end method
