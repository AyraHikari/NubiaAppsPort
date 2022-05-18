.class public Lcom/huanju/ssp/sdk/inf/SearchAdImpl;
.super Ljava/lang/Object;
.source "SearchAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/SearchAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;,
        Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;,
        Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;
    }
.end annotation


# instance fields
.field private mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-direct {v0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/SearchAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl;->mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;

    .line 22
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "SearchAdImpl.free"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl;->mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd;->free()V

    .line 35
    return-void
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl;->mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;

    return-object v0
.end method

.method public requestAd(Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl;->mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;

    invoke-direct {v1, p1}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->requestAd(Lcom/huanju/ssp/sdk/listener/SearchAdListener;)V

    .line 29
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
    .line 44
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl;->mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->setExtend(Ljava/util/Map;)V

    .line 45
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl;->mSearchAd:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->setSessionId(Ljava/lang/String;)V

    .line 40
    return-void
.end method
