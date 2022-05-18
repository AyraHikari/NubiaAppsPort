.class Lcom/hpplay/sdk/source/business/ads/AdController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/business/ads/AdController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

.field final synthetic b:Lcom/hpplay/sdk/source/business/ads/AdController;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/business/ads/AdController;Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/hpplay/sdk/source/business/ads/AdController$1;->b:Lcom/hpplay/sdk/source/business/ads/AdController;

    iput-object p2, p0, Lcom/hpplay/sdk/source/business/ads/AdController$1;->a:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 82
    const-string v0, "AdController"

    const-string v1, "getInteractiveAd cancel request"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 88
    const-string v2, "AdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInteractiveAd onRequestResult result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 92
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 93
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    new-instance v2, Lcom/hpplay/sdk/source/browse/api/AdInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;-><init>(Lorg/json/JSONObject;)V

    .line 96
    iget-object v1, p0, Lcom/hpplay/sdk/source/business/ads/AdController$1;->a:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/hpplay/sdk/source/business/ads/AdController$1;->a:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    invoke-interface {v1, v2}, Lcom/hpplay/sdk/source/api/InteractiveAdListener;->onAdLoaded(Lcom/hpplay/sdk/source/browse/api/AdInfo;)V

    .line 99
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getSubCreative()Lcom/hpplay/sdk/source/browse/api/AdInfo;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getCreativeId()I

    move-result v0

    .line 104
    :cond_2
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getCreativeId()I

    move-result v3

    .line 105
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getAdSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "10"

    .line 104
    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onInteractiveAdRequestSuccess(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "AdController"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
