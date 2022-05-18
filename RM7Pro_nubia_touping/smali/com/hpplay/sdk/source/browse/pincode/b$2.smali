.class Lcom/hpplay/sdk/source/browse/pincode/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/pincode/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/pincode/b;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 164
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-ne v0, v4, :cond_1

    .line 165
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseFuzzyMatchingPinCode cancel request"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v0, "ConferenCodeParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFuzzyMatchingPinCode onRequestResult result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-eqz v0, :cond_2

    .line 170
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseFuzzyMatchingPinCode error: resultType not success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    invoke-interface {v0, v4, v9}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    const-string v0, "ConferenCodeParser"

    const-string v1, "parseFuzzyMatchingPinCode error: response is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    invoke-interface {v0, v4, v9}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V

    goto :goto_0

    .line 186
    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    const/16 v3, 0xc8

    if-eq v0, v3, :cond_4

    .line 189
    const-string v0, "ConferenCodeParser"

    const-string v2, "parseFuzzyMatchingPinCode error: status not equals 200"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v0, "ConferenCodeParser"

    const-string v2, "parseFuzzyMatchingPinCode error: response not json"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 195
    :cond_4
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 197
    :cond_5
    const-string v0, "ConferenCodeParser"

    const-string v2, "parseFuzzyMatchingPinCode error: data is empty"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V

    goto/16 :goto_0

    .line 203
    :cond_6
    const-string v2, "total"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 204
    const-string v3, "pageNum"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 205
    const-string v4, "pageSize"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 206
    const-string v5, "pages"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 207
    const-string v6, "ConferenCodeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseFuzzyMatchingPinCode total:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " pageNum:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pages:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "rows"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 210
    if-nez v2, :cond_7

    .line 211
    const-string v0, "ConferenCodeParser"

    const-string v2, "parseFuzzyMatchingPinCode error: rows is empty"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V

    goto/16 :goto_0

    .line 217
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_9

    .line 221
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 222
    invoke-static {v5}, Lcom/hpplay/sdk/source/browse/b/c;->c(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v5

    .line 223
    if-eqz v5, :cond_8

    .line 224
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    const-string v0, "ConferenCodeParser"

    const-string v2, "parseFuzzyMatchingPinCode error: LelinkServiceInfo infos is empty"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V

    goto/16 :goto_0

    .line 234
    :cond_a
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b$2;->a:Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;->onParceResult(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
