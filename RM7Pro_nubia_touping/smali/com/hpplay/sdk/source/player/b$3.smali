.class Lcom/hpplay/sdk/source/player/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/b;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 634
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/player/b;->t:Z

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->e()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 638
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->f()V

    .line 639
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->f(Lcom/hpplay/sdk/source/player/b;)V

    .line 640
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->j(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTypeCheck() -> duration is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 651
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->b()V

    .line 652
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0, v4, v5}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;J)J

    .line 653
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0, v4, v5}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;J)J

    .line 654
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0, v4, v5}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;J)J

    goto :goto_0

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$3;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    goto :goto_1
.end method
