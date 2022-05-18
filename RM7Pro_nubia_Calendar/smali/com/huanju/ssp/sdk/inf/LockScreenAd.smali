.class public interface abstract Lcom/huanju/ssp/sdk/inf/LockScreenAd;
.super Ljava/lang/Object;
.source "LockScreenAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;
    }
.end annotation


# virtual methods
.method public abstract adShow()V
.end method

.method public abstract free()V
.end method

.method public abstract getAd()Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;
.end method

.method public abstract getOrigin()Ljava/lang/Object;
.end method

.method public abstract handleClick(Landroid/view/View;)V
.end method

.method public abstract requestAd(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
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

.method public abstract setNetType(I)V
.end method

.method public abstract setSessionId(Ljava/lang/String;)V
.end method

.method public abstract subClick(Landroid/view/View;)V
.end method
