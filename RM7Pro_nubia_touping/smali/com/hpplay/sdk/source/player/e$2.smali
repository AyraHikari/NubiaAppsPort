.class Lcom/hpplay/sdk/source/player/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/e;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/e;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 626
    :try_start_0
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop result-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->b()V

    .line 628
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;I)I

    .line 629
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/player/e;->t:Z

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$2;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->g(Lcom/hpplay/sdk/source/player/e;)V

    .line 639
    :cond_1
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
