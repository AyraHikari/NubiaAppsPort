.class public Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
.super Ljava/lang/Object;
.source "AdReportConfigInfo.java"


# instance fields
.field public actvTrackers:Ljava/lang/String;

.field public clkTrackers:Ljava/lang/String;

.field public dwnlTrackers:Ljava/lang/String;

.field public exposureTrackers:Ljava/lang/String;

.field public impTrackers:Ljava/lang/String;

.field public intlTrackers:Ljava/lang/String;

.field public request:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->actvTrackers:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->clkTrackers:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->dwnlTrackers:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->exposureTrackers:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->impTrackers:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->intlTrackers:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->request:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "actvTrackers"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->actvTrackers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v2, "clkTrackers"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->clkTrackers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "dwnlTrackers"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->dwnlTrackers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v2, "exposureTrackers"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->exposureTrackers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v2, "impTrackers"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->impTrackers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "intlTrackers"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->intlTrackers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "request"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->request:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
