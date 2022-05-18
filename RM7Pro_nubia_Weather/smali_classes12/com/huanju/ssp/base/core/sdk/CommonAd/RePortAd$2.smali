.class Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;
.super Ljava/lang/Object;
.source "RePortAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->getDownloadUrl(Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 374
    if-nez p1, :cond_1

    .line 375
    new-instance v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$1;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$1;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;)V

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "ret"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 388
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 389
    .local v1, "data":Lorg/json/JSONObject;
    const-string v5, "dstlink"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "url":Ljava/lang/String;
    const-string v5, "clickid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "clickid":Ljava/lang/String;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v5

    iput-object v4, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 393
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v5

    iput-object v0, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    .line 394
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 395
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    if-eqz v5, :cond_0

    .line 396
    new-instance v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$2;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$2;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;)V

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 411
    .end local v0    # "clickid":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 413
    new-instance v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$4;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$4;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;)V

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 404
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$3;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$3;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;)V

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 419
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    new-instance v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$5;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$5;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;)V

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
