.class final Lcom/hpplay/sdk/source/browse/impl/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/c;->b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
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
    .line 268
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/c$3;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 273
    const-string v0, "QRCodeController"

    const-string v1, "requestLelinkTxtInfo cancel"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v0, "QRCodeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseQRCodeforServer  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$3;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c;->c(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$3;->a:Lcom/hpplay/sdk/source/browse/impl/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method
