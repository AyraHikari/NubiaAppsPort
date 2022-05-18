.class Lcom/hpplay/sdk/source/player/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/c;->start()V
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
    .line 169
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/c$2;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 173
    const-string v1, "IMPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start push result -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "200"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$2;->a:Lcom/hpplay/sdk/source/player/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/c;->a(I)V

    .line 176
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$2;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$2;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$2;->a:Lcom/hpplay/sdk/source/player/c;

    const/4 v1, 0x0

    const v2, 0x33450

    const v3, 0x33454

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/c;->a(III)V

    goto :goto_0
.end method
