.class Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;
.super Ljava/lang/Object;
.source "RequestAdManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdConfig(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

.field final synthetic val$slotid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->val$slotid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAdConfig result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 443
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    iget-object v9, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->val$slotid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->delConfigbyId(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    .local v5, "jsonObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 451
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-virtual {v8, v5}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAdReportConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    move-result-object v1

    .line 452
    .local v1, "adReportConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->getJsonString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->insOrUpAdConfig(Ljava/lang/String;)V

    .line 453
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-static {v8, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->access$002(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    .line 454
    const-string v8, "adslotSdkInfoVOS"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 455
    const-string v8, "adslotSdkInfoVOS"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 456
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestTTAdConfig onReceive jsonArray:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 457
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 459
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 460
    .local v6, "opt":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 463
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-virtual {v8, v6}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAdSlotConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    move-result-object v2

    .line 464
    .local v2, "adSlotConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    iget-object v7, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->val$slotid:Ljava/lang/String;

    .line 465
    .local v7, "tempSlotId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 466
    iget-object v8, v2, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adslotId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 467
    iget-object v7, v2, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adslotId:Ljava/lang/String;

    .line 470
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "adConfigInfo":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestTTAdConfig onReceive slotid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 472
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-virtual {v8, v7, v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->insOrUpSlotConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 480
    .end local v0    # "adConfigInfo":Ljava/lang/String;
    .end local v1    # "adReportConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    .end local v2    # "adSlotConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "opt":Lorg/json/JSONObject;
    .end local v7    # "tempSlotId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 481
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 475
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "adReportConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    iget-object v9, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->val$slotid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->delConfigbyId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    iget-object v9, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;->val$slotid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->delConfigbyId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
