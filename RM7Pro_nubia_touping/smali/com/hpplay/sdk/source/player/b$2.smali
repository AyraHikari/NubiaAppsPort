.class Lcom/hpplay/sdk/source/player/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/cybergarage/upnp/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/b;
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
    .line 602
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 606
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " eventNotifyReceived  uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " varName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    const-string v0, "PLAYING"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 611
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    .line 612
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v0, "PAUSED_PLAYBACK"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 617
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    goto :goto_0

    .line 620
    :cond_2
    const-string v0, "STOPPED"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$2;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->k(Lcom/hpplay/sdk/source/player/b;)V

    goto :goto_0
.end method
