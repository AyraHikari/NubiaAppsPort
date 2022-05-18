.class Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;
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
    .line 303
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 307
    if-nez p1, :cond_1

    .line 308
    :try_start_0
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$1;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$1;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u70b9\u51fb\u65f6\u6d17\u5305result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 318
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v2, v1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$000(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lorg/json/JSONObject;)V

    .line 321
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toDownload ad.dl_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ad.bundle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    if-eqz v2, :cond_2

    .line 324
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$2;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$2;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 339
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$4;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$4;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 331
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$3;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$3;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 347
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$5;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1$5;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
