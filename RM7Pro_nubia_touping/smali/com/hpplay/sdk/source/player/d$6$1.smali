.class Lcom/hpplay/sdk/source/player/d$6$1;
.super Lcom/hpplay/sdk/source/protocol/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d$6;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d$6;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d$6;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataResult(I[B)V
    .locals 5

    .prologue
    const v4, 0x493e2

    const/4 v1, 0x1

    .line 367
    invoke-super {p0, p1, p2}, Lcom/hpplay/sdk/source/protocol/a;->onDataResult(I[B)V

    .line 368
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->h(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 369
    const-string v2, "LelinkPlayerControl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data call back "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-ne p1, v1, :cond_0

    .line 371
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$6;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->savePicture([BLjava/lang/String;)Ljava/io/File;

    .line 373
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x493e3

    invoke-interface {v0, v4, v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    .line 382
    :cond_0
    :goto_1
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6$1;->a:Lcom/hpplay/sdk/source/player/d$6;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x493e4

    invoke-interface {v0, v4, v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_1
.end method
