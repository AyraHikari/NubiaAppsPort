.class Lcom/hpplay/sdk/source/player/c$3;
.super Lcom/hpplay/sdk/source/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/c;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/c$3;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsg(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/a/g;->onMsg(JLjava/lang/String;)V

    .line 228
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v1, "pc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 232
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    const-string v1, "IMPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c$3;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/c;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c$3;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/c;->n:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    :try_start_2
    const-string v1, "IMPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    const-string v1, "IMPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
