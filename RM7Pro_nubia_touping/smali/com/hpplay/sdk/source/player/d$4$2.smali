.class Lcom/hpplay/sdk/source/player/d$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d$4;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d$4;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$4$2;->a:Lcom/hpplay/sdk/source/player/d$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    const-string v0, "LelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d$4$2;->a:Lcom/hpplay/sdk/source/player/d$4;

    iget-object v2, v2, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;)Z

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

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4$2;->a:Lcom/hpplay/sdk/source/player/d$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)V

    .line 205
    return-void
.end method
