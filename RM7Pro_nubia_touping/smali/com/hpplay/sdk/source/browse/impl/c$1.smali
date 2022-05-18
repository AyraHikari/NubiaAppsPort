.class final Lcom/hpplay/sdk/source/browse/impl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/c;->d(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/impl/c$b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/c$1;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "QRCodeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addQRCodeServiceInfo onRequestResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 124
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo cancel request"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_2

    .line 130
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 134
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 135
    const-string v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$1;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo not json"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$1;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-interface {v0, v3}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 138
    :cond_1
    :try_start_1
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo status not 200 or data is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$1;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :cond_2
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo result.out.resultType not success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$1;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-interface {v0, v3}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method
