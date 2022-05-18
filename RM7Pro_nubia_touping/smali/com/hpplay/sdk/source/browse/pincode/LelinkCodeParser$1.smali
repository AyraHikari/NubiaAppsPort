.class Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 72
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 73
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByNet cancel request"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "LelinkCodeParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " short pincode result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 83
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 84
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 85
    const-string v0, "uid"

    .line 86
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 87
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mac"

    .line 88
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip"

    .line 89
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "port"

    .line 90
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pt"

    .line 91
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "vv"

    .line 92
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/browse/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    .line 93
    const-string v0, "ip"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v2, "phone"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "LelinkCodeParser"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v0, v9, v8}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 99
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const-string v2, "ip"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "remote_port"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pt"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 100
    :cond_3
    const/16 v0, 0xd3

    if-ne v1, v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 102
    :cond_4
    const/16 v0, 0xdd

    if-ne v1, v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 112
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/4 v1, 0x6

    invoke-static {v0, v1, v8}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0
.end method
