.class Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;
.super Ljava/lang/Object;
.source "SearchAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/listener/SearchAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/SearchAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchAdListenerWrapper"
.end annotation


# instance fields
.field private mSearchAdListener:Lcom/huanju/ssp/sdk/inf/SearchAdListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/inf/SearchAdListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;->mSearchAdListener:Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    .line 57
    return-void
.end method


# virtual methods
.method public onAdError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;->mSearchAdListener:Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAdListenerWrapper.onAdError "

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

    .line 78
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;->mSearchAdListener:Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/inf/SearchAdListener;->onAdError(Ljava/lang/String;I)V

    .line 80
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
            "Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;>;"
    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;->mSearchAdListener:Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    if-eqz v2, :cond_2

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;>;"
    if-eqz p1, :cond_1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .restart local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    .line 66
    .local v1, "sr":Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchAdListenerWrapper.onAdReach: transform "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getSubTitle()Ljava/lang/String;

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

    .line 67
    new-instance v2, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 70
    .end local v1    # "sr":Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearchAdListenerWrapper;->mSearchAdListener:Lcom/huanju/ssp/sdk/inf/SearchAdListener;

    invoke-interface {v2, v0}, Lcom/huanju/ssp/sdk/inf/SearchAdListener;->onAdReach(Ljava/util/List;)V

    .line 72
    .end local v0    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;>;"
    :cond_2
    return-void
.end method
