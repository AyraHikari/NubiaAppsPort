.class Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;
.super Ljava/lang/Object;
.source "LockScreenAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/LockScreenAd;->adShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mCheckTime:J

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---adShow RequestAdFlagProcessor result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 266
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const/4 v2, 0x1

    .line 268
    .local v2, "flag":Z
    const-string v4, "flag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const-string v4, "flag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 271
    :cond_0
    if-nez v2, :cond_3

    .line 272
    const-string v4, "---request Lockscreen Ad net"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->access$000(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->access$000(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    iget-object v5, v5, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;->onAdReach(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;Landroid/graphics/Bitmap;Z)V

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    iget-object v4, v4, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    if-eqz v4, :cond_2

    .line 277
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    iget-object v4, v4, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->mParseData:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 282
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->access$100(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)V

    .line 283
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-static {v5}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->access$200(Lcom/huanju/ssp/sdk/normal/LockScreenAd;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huanju/ssp/sdk/normal/LockScreenAd;->requestAd([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v2    # "flag":Z
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
