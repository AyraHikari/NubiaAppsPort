.class Lcom/hpplay/sdk/source/process/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/c;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    .prologue
    .line 515
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 519
    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 3

    .prologue
    .line 555
    const v0, 0x3345d

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 556
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " use stop  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->j()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    .line 560
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 563
    :cond_1
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public onInfo(II)V
    .locals 2

    .prologue
    .line 540
    const-string v0, "LelinkSdkManager"

    const-string v1, "onInfo"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    .line 544
    :cond_0
    return-void
.end method

.method public onInfo(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(ILjava/lang/String;)V

    .line 551
    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 466
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    .line 475
    :cond_0
    :goto_0
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoading  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onLoading()V

    .line 480
    :cond_1
    return-void

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 469
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_4

    .line 471
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 473
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 503
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    .line 507
    :cond_0
    :goto_0
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    .line 511
    :cond_1
    return-void

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0
.end method

.method public onPositionUpdate(JJ)V
    .locals 3

    .prologue
    .line 575
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V

    .line 579
    :cond_0
    return-void
.end method

.method public onSeekComplete(I)V
    .locals 2

    .prologue
    .line 532
    const-string v0, "LelinkSdkManager"

    const-string v1, "onSeekComplete"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onSeekComplete(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 485
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    .line 493
    :cond_0
    :goto_0
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/c;->h(Lcom/hpplay/sdk/source/process/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 498
    :cond_1
    return-void

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 487
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_4

    .line 489
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->g(Lcom/hpplay/sdk/source/process/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 523
    const-string v0, "LelinkSdkManager"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;I)I

    .line 525
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 528
    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$5;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onVolumeChanged(F)V

    .line 571
    :cond_0
    return-void
.end method
