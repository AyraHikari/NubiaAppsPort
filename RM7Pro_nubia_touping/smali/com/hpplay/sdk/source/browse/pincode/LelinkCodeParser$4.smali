.class Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 236
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 237
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet cancel request"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v0, "LelinkCodeParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePinCodeByNet onRequestResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet error: resultType not success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0, v3, v4}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet error: response is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0, v3, v4}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 257
    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    .line 260
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet error: status not equals 200"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet error: response not json"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0, v3, v4}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 263
    :cond_4
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_6

    .line 265
    :cond_5
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet error: data is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_6
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 269
    if-nez v0, :cond_7

    .line 270
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet error: parse info is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 275
    :cond_7
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;->b:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
