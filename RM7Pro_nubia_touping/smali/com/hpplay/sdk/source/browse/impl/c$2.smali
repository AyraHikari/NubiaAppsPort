.class final Lcom/hpplay/sdk/source/browse/impl/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/hpplay/sdk/source/browse/impl/c$b;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    iput-object p6, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 171
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 172
    const-string v0, "QRCodeController"

    const-string v1, "requestLelinkTxtInfo cancel"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v5, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 177
    const-string v0, "QRCodeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLelinkTxtInfo response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->d:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/hpplay/sdk/source/browse/impl/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static/range {v0 .. v5}, Lcom/hpplay/sdk/source/browse/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-interface {v0, v6}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/b/c;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 195
    :cond_4
    const-string v0, "QRCodeController"

    const-string v1, "requestLelinkTxtInfo failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-interface {v0, v6}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->e:Lcom/hpplay/sdk/source/browse/impl/c$b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$2;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/b/c;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method
