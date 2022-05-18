.class Lcom/hpplay/sdk/source/browse/pincode/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/pincode/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hpplay/sdk/source/browse/pincode/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/pincode/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-ne v0, v5, :cond_1

    .line 82
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode cancel request"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "ConferenCodeParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDigitsOnlyPinCode onRequestResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode error: resultType not success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    invoke-interface {v0, v5, v3}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode error: response is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    invoke-interface {v0, v5, v3}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 103
    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    .line 106
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode error: status not equals 200"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode error: response not json"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_6

    .line 114
    :cond_5
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode error: data is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/b/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 121
    if-nez v0, :cond_7

    .line 122
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseDigitsOnlyPinCode error: parse info is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/b$1;->b:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
