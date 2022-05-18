.class Lcom/hpplay/sdk/source/service/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/c$1;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/c$1;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/c$1$1;->a:Lcom/hpplay/sdk/source/service/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 4

    .prologue
    .line 99
    const-string v0, "IMLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start connect im IP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$1$1;->a:Lcom/hpplay/sdk/source/service/c$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/c$1;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$1$1;->a:Lcom/hpplay/sdk/source/service/c$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/c$1;->a:Lcom/hpplay/sdk/source/service/c;

    const v1, 0x33c2b

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;I)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$1$1;->a:Lcom/hpplay/sdk/source/service/c$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/c$1;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    const/16 v1, 0x1f5

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
