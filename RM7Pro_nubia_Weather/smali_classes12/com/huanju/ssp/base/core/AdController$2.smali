.class Lcom/huanju/ssp/base/core/AdController$2;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$2;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 194
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "ret"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 197
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    .local v1, "data":Lorg/json/JSONObject;
    const-string v5, "dstlink"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "url":Ljava/lang/String;
    const-string v5, "clickid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "clickid":Ljava/lang/String;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v4, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 201
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v0, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    .line 202
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clickAdDownload ad.dl_url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ad.clickid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$2;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v6, p0, Lcom/huanju/ssp/base/core/AdController$2;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/huanju/ssp/base/core/AdController;->access$100(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .end local v0    # "clickid":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
