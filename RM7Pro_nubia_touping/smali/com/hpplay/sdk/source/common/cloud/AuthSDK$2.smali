.class Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->updateIMRootUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 337
    const-string v0, "AuthSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIMRoot result-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 344
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 345
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$502(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;I)I

    .line 348
    const-string v1, "server"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "ImServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string v1, "AuthSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$500(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->updateIMRootUrl()V

    .line 361
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$508(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)I

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$2;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$502(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;I)I

    goto :goto_0
.end method
