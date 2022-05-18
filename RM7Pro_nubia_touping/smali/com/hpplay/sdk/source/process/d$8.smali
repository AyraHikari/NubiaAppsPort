.class Lcom/hpplay/sdk/source/process/d$8;
.super Lcom/hpplay/sdk/source/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lcom/hpplay/sdk/source/process/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/d;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 348
    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 381
    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    .line 369
    :cond_0
    return-void
.end method

.method public onInfo2(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onLoading()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onLoading()V

    .line 327
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    .line 341
    :cond_0
    return-void
.end method

.method public onPositionUpdate(JJ)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V

    .line 395
    :cond_0
    return-void
.end method

.method public onSeekComplete(I)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onSeekComplete(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 334
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 355
    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$8;->l:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onVolumeChanged(F)V

    .line 388
    :cond_0
    return-void
.end method
