.class Lcom/hpplay/sdk/source/player/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/player/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/player/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/player/b;)V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/b$a;->o:Ljava/lang/ref/WeakReference;

    .line 381
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/b$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/b$a;->o:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 9

    .prologue
    const v8, 0x3345c

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 385
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$a;->o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 386
    const-string v0, "DlnaPlayerControl"

    const-string v1, "DLNAEventListenerWrapper onEvent mReference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$a;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/player/b;

    .line 390
    if-nez v0, :cond_2

    .line 391
    const-string v0, "DlnaPlayerControl"

    const-string v1, "DLNAEventListenerWrapper onEvent DlnaPlayerControl is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    const-string v1, "DlnaPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 398
    :sswitch_0
    const-string v1, "DlnaPlayerControl"

    const-string v2, "play call back"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 401
    if-eqz v1, :cond_5

    .line 402
    iput v6, v0, Lcom/hpplay/sdk/source/player/b;->u:I

    .line 403
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 404
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/b;->a(I)V

    .line 405
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 406
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 409
    :cond_3
    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 411
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->d(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    goto :goto_0

    .line 414
    :cond_4
    invoke-static {v0, v7}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;I)V

    goto :goto_0

    .line 417
    :cond_5
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->d()V

    goto :goto_0

    .line 422
    :sswitch_1
    const-string v1, "DlnaPlayerControl"

    const-string v2, "image play call back"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/b;->a(I)V

    .line 424
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_0

    .line 425
    iget-object v0, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    goto/16 :goto_0

    :sswitch_2
    move-object v1, p2

    .line 430
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 431
    const-string v2, "DlnaPlayerControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " play call back pause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz v1, :cond_7

    .line 433
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 434
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    .line 440
    :cond_6
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->f(Lcom/hpplay/sdk/source/player/b;)V

    .line 441
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;I)V

    .line 442
    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    goto/16 :goto_0

    .line 445
    :cond_7
    const v1, 0x33464

    invoke-virtual {v0, v7, v1, v8}, Lcom/hpplay/sdk/source/player/b;->a(III)V

    goto/16 :goto_0

    .line 451
    :sswitch_3
    const-string v1, "DlnaPlayerControl"

    const-string v2, " play call back resume"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 454
    if-eqz v1, :cond_9

    .line 455
    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 457
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_8

    .line 458
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 460
    :cond_8
    invoke-static {v0, v7}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;I)V

    goto/16 :goto_0

    .line 462
    :cond_9
    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 463
    const v1, 0x33478

    invoke-virtual {v0, v7, v1, v8}, Lcom/hpplay/sdk/source/player/b;->a(III)V

    goto/16 :goto_0

    .line 469
    :sswitch_4
    check-cast p2, Ljava/util/HashMap;

    .line 471
    :try_start_0
    const-string v1, "position"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 472
    const-string v1, "duration"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 474
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    .line 476
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 479
    :cond_a
    invoke-static {v0, v2, v3}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;J)J

    .line 480
    invoke-static {v0, v4, v5}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;J)J

    .line 482
    const-string v1, "DlnaPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;JJ)V

    .line 486
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 490
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_c

    .line 491
    :cond_b
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->f()V

    .line 492
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->f(Lcom/hpplay/sdk/source/player/b;)V

    .line 493
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/player/a/a;->removeMessages(I)V

    .line 495
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string v1, "DlnaPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 500
    :cond_c
    :try_start_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;J)J

    .line 501
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->i(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 502
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->f()V

    .line 506
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->f(Lcom/hpplay/sdk/source/player/b;)V

    .line 507
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/player/a/a;->removeMessages(I)V

    .line 508
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->i(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lcom/hpplay/sdk/source/player/a/a;->sendEmptyMessageDelayed(IJ)Z

    .line 510
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 517
    :sswitch_5
    if-eqz p2, :cond_0

    .line 518
    check-cast p2, Landroid/os/Message;

    .line 519
    iget v1, p2, Landroid/os/Message;->arg1:I

    .line 520
    int-to-long v2, v1

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->i(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 521
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->g(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;JJ)V

    .line 522
    add-int/lit8 v1, v1, 0x1

    .line 523
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;I)V

    goto/16 :goto_0

    .line 528
    :sswitch_6
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    goto/16 :goto_0

    .line 535
    :sswitch_7
    const-string v0, "1"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 538
    :sswitch_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/hpplay/sdk/source/player/b;->B:I

    goto/16 :goto_0

    .line 541
    :sswitch_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/hpplay/sdk/source/player/b;->C:I

    goto/16 :goto_0

    .line 544
    :sswitch_a
    if-eqz p2, :cond_0

    .line 547
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    const-string v2, "DlnaPlayerControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state------>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 550
    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 551
    const-string v1, "DlnaPlayerControl"

    const-string v2, "state------> PLAYING "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 553
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 555
    :cond_d
    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 556
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    .line 578
    :cond_e
    :goto_1
    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;I)V

    goto/16 :goto_0

    .line 557
    :cond_f
    const-string v2, "REL_TIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 558
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    goto :goto_1

    .line 559
    :cond_10
    const-string v2, "STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 560
    const-string v1, "DlnaPlayerControl"

    const-string v2, "state------> STOPPED "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->j(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 562
    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 563
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->e(Lcom/hpplay/sdk/source/player/b;)V

    goto/16 :goto_0

    .line 566
    :cond_11
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->k(Lcom/hpplay/sdk/source/player/b;)V

    goto/16 :goto_0

    .line 568
    :cond_12
    const-string v2, "PAUSED_PLAYBACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 569
    const-string v1, "DlnaPlayerControl"

    const-string v2, "state------> PAUSED "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->c(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 571
    iget-object v1, v0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    .line 573
    :cond_13
    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 574
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/b;->f()V

    goto :goto_1

    .line 581
    :sswitch_b
    const-string v1, "DlnaPlayerControl"

    const-string v2, " play call back stop"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 583
    if-eqz v1, :cond_14

    .line 584
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/b;->k(Lcom/hpplay/sdk/source/player/b;)V

    goto/16 :goto_0

    .line 586
    :cond_14
    const v1, 0x3346e

    invoke-virtual {v0, v7, v1, v8}, Lcom/hpplay/sdk/source/player/b;->a(III)V

    goto/16 :goto_0

    .line 591
    :sswitch_c
    const v1, 0x3345a

    invoke-virtual {v0, v6, v1, v8}, Lcom/hpplay/sdk/source/player/b;->a(III)V

    goto/16 :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_b
        0x5 -> :sswitch_6
        0x6 -> :sswitch_4
        0x8 -> :sswitch_9
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0xd -> :sswitch_1
        0xe -> :sswitch_5
        0x9b -> :sswitch_c
    .end sparse-switch
.end method
