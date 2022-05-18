.class Lcom/hpplay/sdk/source/player/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/e;->pause()V
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
    .line 468
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$7;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 471
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$7;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;Z)Z

    .line 473
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$7;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->j()V

    .line 478
    :goto_0
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause result-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$7;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x2

    const v2, 0x33464

    const v3, 0x3345c

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/e;->a(III)V

    goto :goto_0
.end method
