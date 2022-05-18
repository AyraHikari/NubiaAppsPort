.class Lcom/huanju/ssp/base/core/AdController$7;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->toDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$7;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 422
    :try_start_0
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

    .line 423
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v2, v1, v3}, Lcom/huanju/ssp/base/core/AdController;->access$000(Lcom/huanju/ssp/base/core/AdController;Lorg/json/JSONObject;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 426
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toDownload ad.dl_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ad.bundle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_activate:I

    if-ne v4, v2, :cond_1

    .line 430
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/core/AdController;->access$400(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 434
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/core/AdController;->access$400(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$7;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$7;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-static {v2, v3, v4}, Lcom/huanju/ssp/base/core/AdController;->access$100(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 440
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
