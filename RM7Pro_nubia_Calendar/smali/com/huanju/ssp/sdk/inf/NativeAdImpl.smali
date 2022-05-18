.class public Lcom/huanju/ssp/sdk/inf/NativeAdImpl;
.super Ljava/lang/Object;
.source "NativeAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/NativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;,
        Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;,
        Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;
    }
.end annotation


# instance fields
.field private mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    .line 40
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "NativeAdImpl.free"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->free()V

    .line 53
    return-void
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    return-object v0
.end method

.method public requestAd(Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;

    invoke-direct {v1, p1}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAd(Lcom/huanju/ssp/sdk/listener/NativeAdListener;)V

    .line 47
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 1
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->setAppid(Ljava/lang/String;)V

    .line 63
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
    .line 72
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->setExtend(Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->setPackageName(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl;->mNativeAd:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->setSessionId(Ljava/lang/String;)V

    .line 58
    return-void
.end method
