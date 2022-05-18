.class public Lcom/huanju/ssp/sdk/inf/InsertAdImpl;
.super Ljava/lang/Object;
.source "InsertAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/InsertAd;


# instance fields
.field private mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "ac"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-direct {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/InsertAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    .line 19
    return-void
.end method


# virtual methods
.method public clearAd()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "InsertAdImpl.clearAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->clearAd()V

    .line 31
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    const-string v0, "InsertAdImpl.getAdView"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->isAdReady()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->loadAd()V

    .line 57
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
    .line 66
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd;->setExtend(Ljava/util/Map;)V

    .line 67
    return-void
.end method

.method public setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 52
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd;->setSessionId(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "InsertAdImpl.showAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/InsertAdImpl;->mInsertAd:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->showAd()V

    .line 25
    return-void
.end method
