.class public Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;
.super Ljava/lang/Object;
.source "LockScreenAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/LockScreenAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;,
        Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;
    }
.end annotation


# instance fields
.field private mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AdModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeAdImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    .line 21
    return-void
.end method


# virtual methods
.method public adShow()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->adShow()V

    .line 49
    return-void
.end method

.method public free()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public getAd()Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v3}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->getAd()Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    move-result-object v1

    .line 54
    .local v1, "parseData":Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;
    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$1;)V

    .line 58
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->handleClick(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public requestAd(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;

    invoke-direct {v1, p1}, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->requestAd(Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;)V

    .line 25
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->setContext(Landroid/content/Context;)V

    .line 70
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
    .line 79
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->setExtend(Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public setNetType(I)V
    .locals 2
    .param p1, "netType"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->setNetType(I)V

    .line 65
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->setSessionId(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public subClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;->mLockScreenAd:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->subClick(Landroid/view/View;)V

    .line 44
    return-void
.end method
