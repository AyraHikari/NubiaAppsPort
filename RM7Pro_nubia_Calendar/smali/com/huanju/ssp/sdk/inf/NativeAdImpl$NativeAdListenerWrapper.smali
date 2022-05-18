.class Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;
.super Ljava/lang/Object;
.source "NativeAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/listener/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/NativeAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeAdListenerWrapper"
.end annotation


# instance fields
.field private mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/inf/NativeAdListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    .line 90
    return-void
.end method


# virtual methods
.method public onAdError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAdListenerWrapper.onAdError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/inf/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    .line 128
    :cond_0
    return-void
.end method

.method public onAdReach(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    if-eqz v2, :cond_2

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    if-eqz p1, :cond_1

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .restart local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .line 99
    .local v1, "nr":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeAdListenerWrapper.onAdReach: transform "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSubTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 100
    new-instance v2, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 103
    .end local v1    # "nr":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    invoke-interface {v2, v0}, Lcom/huanju/ssp/sdk/inf/NativeAdListener;->onAdReach(Ljava/util/List;)V

    .line 105
    .end local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    :cond_2
    return-void
.end method

.method public onTTAdExpressReach(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    if-eqz v2, :cond_1

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .restart local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .line 115
    .local v1, "nr":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    new-instance v3, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v1    # "nr":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeAdListenerWrapper;->mNativeAdListener:Lcom/huanju/ssp/sdk/inf/NativeAdListener;

    invoke-interface {v2, v0}, Lcom/huanju/ssp/sdk/inf/NativeAdListener;->onTTAdExpressReach(Ljava/util/List;)V

    .line 120
    .end local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;>;"
    :cond_1
    return-void
.end method
