.class Lcom/hpplay/sdk/source/player/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/e;
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
    .line 329
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x3345a

    .line 332
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->e(Lcom/hpplay/sdk/source/player/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v0, "603"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x33852

    invoke-interface {v0, v3, v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto :goto_0

    .line 342
    :cond_2
    const-string v0, "453"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x33853

    invoke-interface {v0, v3, v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto :goto_0

    .line 346
    :cond_3
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$5;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
