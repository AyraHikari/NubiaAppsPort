.class Lcom/hpplay/sdk/source/player/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "playing"

.field private static final c:Ljava/lang/String; = "stopped"

.field private static final d:Ljava/lang/String; = "loading"

.field private static final e:Ljava/lang/String; = "paused"

.field private static final f:Ljava/lang/String; = "error"

.field private static final g:Ljava/lang/String; = "ended"

.field private static final h:Ljava/lang/String; = "Switching Protocols"

.field private static final i:Ljava/lang/String; = "stoptype"

.field private static final j:Ljava/lang/String; = "state"

.field private static final k:Ljava/lang/String; = "photohide"

.field private static final l:Ljava/lang/String; = "media_completion"

.field private static final m:Ljava/lang/String; = "phonevideohide"

.field private static final n:Ljava/lang/String; = "Duration"

.field private static final o:Ljava/lang/String; = "Position"


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 478
    monitor-enter p0

    :try_start_0
    const-string v0, "photohide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 482
    :cond_0
    const-string v0, "LelinkPlayerControl"

    const-string v1, "on PHOTO_HIDE"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    .line 484
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 494
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    if-eqz v0, :cond_2

    .line 502
    :try_start_2
    const-string v4, "0"

    .line 503
    const-string v1, "0"

    .line 505
    const-string v5, "Duration"

    invoke-virtual {v0, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 506
    const-string v4, "Duration"

    invoke-virtual {v0, v4}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    :cond_4
    const-string v5, "Position"

    invoke-virtual {v0, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 509
    const-string v1, "Position"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 512
    :cond_5
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    .line 513
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 514
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    :cond_6
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;I)I

    .line 517
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;I)I

    .line 518
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v5, v5, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v5, :cond_7

    .line 519
    const-string v5, "LelinkPlayerControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reverse to uiduration : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "position : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v4}, Lcom/hpplay/sdk/source/player/d;->i(Lcom/hpplay/sdk/source/player/d;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v6}, Lcom/hpplay/sdk/source/player/d;->j(Lcom/hpplay/sdk/source/player/d;)I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    :cond_7
    :goto_1
    :try_start_4
    const-string v1, "stoptype"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 529
    const-string v1, "stoptype"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string v4, "media_completion"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 531
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_a

    .line 532
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 533
    const-string v0, "LelinkPlayerControl"

    const-string v1, "on completion"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    .line 535
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    :try_start_5
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 524
    :catch_1
    move-exception v1

    .line 525
    const-string v4, "LelinkPlayerControl"

    invoke-static {v4, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 538
    :cond_8
    const-string v4, "phonevideohide"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 539
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_9

    .line 540
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 542
    :cond_9
    const-string v0, "LelinkPlayerControl"

    const-string v1, "on stop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    .line 544
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    goto/16 :goto_0

    .line 549
    :cond_a
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_b
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->e(Lcom/hpplay/sdk/source/player/d;)I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_c

    .line 554
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/d;->d()V

    .line 555
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/d;->j()V

    .line 557
    :cond_c
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    .line 558
    const-string v0, "LelinkPlayerControl"

    const-string v1, "PLAYING"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :sswitch_0
    const-string v3, "playing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v2

    goto :goto_2

    :sswitch_1
    const-string v2, "loading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v2, "paused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "stopped"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x4

    goto :goto_2

    .line 561
    :pswitch_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    .line 562
    const-string v0, "LelinkPlayerControl"

    const-string v1, "LOADING"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :pswitch_2
    const-string v0, "LelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAUSED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 567
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/d;->f()V

    .line 569
    :cond_d
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    goto/16 :goto_0

    .line 572
    :pswitch_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_e

    .line 573
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 575
    :cond_e
    const-string v0, "LelinkPlayerControl"

    const-string v1, "state on stop---------"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z

    .line 577
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    goto/16 :goto_0

    .line 580
    :pswitch_4
    const-string v0, "LelinkPlayerControl"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 582
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 551
    :sswitch_data_0
    .sparse-switch
        -0x70506e33 -> :sswitch_3
        -0x3b5366d2 -> :sswitch_2
        -0x1d6b2fd2 -> :sswitch_0
        0x5c4d208 -> :sswitch_4
        0x1410e13c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 468
    const-string v0, "Switching Protocols"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$7;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/d$7;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
