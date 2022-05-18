.class Lcom/hpplay/sdk/source/push/PublicCastClient$2;
.super Lcom/hpplay/sdk/source/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/push/PublicCastClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/push/PublicCastClient;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/push/PublicCastClient;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$2;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsg(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/a/g;->onMsg(JLjava/lang/String;)V

    .line 181
    sget v0, Lcom/hpplay/sdk/source/a/a;->f:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 182
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->updateIMRootUrl()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-wide/32 v0, 0x20012ff

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "PublicCastClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMsg receive interaction msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$2;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-static {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 186
    const-string v0, "PublicCastClient"

    const-string v1, "mInteractiveAdListener is null,no need for request ad."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$2;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-static {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/business/ads/AdController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string v2, "creativeid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v3, "hid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v3, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$2;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-static {v3}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/business/ads/AdController;

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$2;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-static {v4}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/hpplay/sdk/source/business/ads/AdController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "PublicCastClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
