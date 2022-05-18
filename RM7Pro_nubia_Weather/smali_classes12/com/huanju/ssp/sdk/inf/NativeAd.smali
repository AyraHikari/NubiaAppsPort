.class public interface abstract Lcom/huanju/ssp/sdk/inf/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;,
        Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;
    }
.end annotation


# virtual methods
.method public abstract free()V
.end method

.method public abstract getOrigin()Ljava/lang/Object;
.end method

.method public abstract requestAd(Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V
.end method

.method public abstract setAppid(Ljava/lang/String;)V
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

.method public abstract setPkgName(Ljava/lang/String;)V
.end method

.method public abstract setSessionId(Ljava/lang/String;)V
.end method
