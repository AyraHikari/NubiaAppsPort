.class Lcom/hpplay/sdk/source/player/e$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/e$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/e$1;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/e$1;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$1$2;->a:Lcom/hpplay/sdk/source/player/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e$1$2;->a:Lcom/hpplay/sdk/source/player/e$1;

    iget-object v2, v2, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  get dration result-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1$2;->a:Lcom/hpplay/sdk/source/player/e$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;Ljava/lang/String;)V

    goto :goto_0
.end method
