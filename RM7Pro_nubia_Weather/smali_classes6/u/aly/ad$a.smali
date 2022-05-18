.class public Lu/aly/ad$a;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lu/aly/ad;

.field private b:Lcom/umeng/analytics/ReportPolicy$i;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/ad;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 437
    iput-object p1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput v1, p0, Lu/aly/ad$a;->c:I

    .line 432
    iput v1, p0, Lu/aly/ad$a;->d:I

    .line 434
    iput v1, p0, Lu/aly/ad$a;->e:I

    .line 435
    iput v1, p0, Lu/aly/ad$a;->f:I

    .line 438
    invoke-static {p1}, Lu/aly/ad;->a(Lu/aly/ad;)Lu/aly/x$a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lu/aly/x$a;->a(II)[I

    move-result-object v0

    .line 439
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/ad$a;->c:I

    .line 440
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/ad$a;->d:I

    .line 441
    return-void
.end method

.method private b(II)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 4

    .prologue
    .line 505
    .line 507
    packed-switch p1, :pswitch_data_0

    .line 535
    :pswitch_0
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 539
    :goto_0
    return-object v0

    .line 509
    :pswitch_1
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_0

    .line 512
    :pswitch_2
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$e;

    if-eqz v0, :cond_1

    .line 513
    iget-object v1, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    move-object v0, v1

    .line 514
    check-cast v0, Lcom/umeng/analytics/ReportPolicy$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;->a(J)V

    move-object v0, v1

    goto :goto_0

    .line 516
    :cond_1
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$e;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->c(Lu/aly/ad;)Lu/aly/as;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;-><init>(Lu/aly/as;J)V

    goto :goto_0

    .line 520
    :pswitch_3
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$g;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    .line 521
    invoke-static {v1}, Lu/aly/ad;->c(Lu/aly/ad;)Lu/aly/as;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$g;-><init>(Lu/aly/as;)V

    goto :goto_0

    .line 524
    :pswitch_4
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$h;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$h;-><init>()V

    goto :goto_0

    .line 527
    :pswitch_5
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$j;

    .line 528
    invoke-static {}, Lu/aly/ad;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 531
    :pswitch_6
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$k;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    .line 532
    invoke-static {v1}, Lu/aly/ad;->c(Lu/aly/ad;)Lu/aly/as;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$k;-><init>(Lu/aly/as;)V

    goto :goto_0

    .line 535
    :cond_6
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 543
    iput p1, p0, Lu/aly/ad$a;->e:I

    .line 544
    iput p2, p0, Lu/aly/ad$a;->f:I

    .line 545
    return-void
.end method

.method public a(Lu/aly/x$a;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 548
    invoke-virtual {p1, v0, v0}, Lu/aly/x$a;->a(II)[I

    move-result-object v0

    .line 549
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/ad$a;->c:I

    .line 550
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/ad$a;->d:I

    .line 551
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 447
    iget-object v2, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v2}, Lu/aly/ad;->b(Lu/aly/ad;)Lu/aly/ax;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/ax;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    iget-object v2, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    :goto_1
    iput-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 488
    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report policy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 489
    return-void

    :cond_1
    move v1, v0

    .line 449
    goto :goto_0

    .line 450
    :cond_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$b;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->c(Lu/aly/ad;)Lu/aly/as;

    move-result-object v1

    iget-object v2, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v2}, Lu/aly/ad;->b(Lu/aly/ad;)Lu/aly/ax;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(Lu/aly/as;Lu/aly/ax;)V

    goto :goto_1

    .line 452
    :cond_3
    iget-object v2, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    :goto_3
    if-nez v1, :cond_0

    .line 454
    if-eqz p1, :cond_5

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->d(Lu/aly/ad;)Lu/aly/ay;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ay;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 455
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$c;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->d(Lu/aly/ad;)Lu/aly/ay;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ay;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>(I)V

    iput-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 456
    iget-object v0, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->d(Lu/aly/ad;)Lu/aly/ay;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ay;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lu/aly/ad;->a(Lu/aly/ad;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    .line 452
    goto :goto_3

    .line 459
    :cond_5
    sget-boolean v1, Lu/aly/bl;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->a(Lu/aly/ad;)Lu/aly/x$a;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/x$a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    const-string v0, "Debug: send log every 15 seconds"

    invoke-static {v0}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->c(Lu/aly/ad;)Lu/aly/as;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$a;-><init>(Lu/aly/as;)V

    iput-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2

    .line 462
    :cond_6
    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->e(Lu/aly/ad;)Lu/aly/aw;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/aw;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 463
    const-string v1, "Start A/B Test"

    invoke-static {v1}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->e(Lu/aly/ad;)Lu/aly/aw;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/aw;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 466
    iget-object v0, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v0}, Lu/aly/ad;->a(Lu/aly/ad;)Lu/aly/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 467
    iget-object v0, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v0}, Lu/aly/ad;->a(Lu/aly/ad;)Lu/aly/x$a;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/x$a;->d(I)I

    move-result v0

    .line 474
    :cond_7
    :goto_4
    iget-object v1, p0, Lu/aly/ad$a;->a:Lu/aly/ad;

    invoke-static {v1}, Lu/aly/ad;->e(Lu/aly/ad;)Lu/aly/aw;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/aw;->b()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lu/aly/ad$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2

    .line 468
    :cond_8
    iget v0, p0, Lu/aly/ad$a;->d:I

    if-lez v0, :cond_9

    .line 469
    iget v0, p0, Lu/aly/ad$a;->d:I

    goto :goto_4

    .line 471
    :cond_9
    iget v0, p0, Lu/aly/ad$a;->f:I

    goto :goto_4

    .line 476
    :cond_a
    iget v1, p0, Lu/aly/ad$a;->e:I

    .line 477
    iget v0, p0, Lu/aly/ad$a;->f:I

    .line 478
    iget v2, p0, Lu/aly/ad$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 479
    iget v1, p0, Lu/aly/ad$a;->c:I

    .line 480
    iget v0, p0, Lu/aly/ad$a;->d:I

    .line 482
    :cond_b
    invoke-direct {p0, v1, v0}, Lu/aly/ad$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2
.end method

.method public b(Z)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lu/aly/ad$a;->a(Z)V

    .line 493
    iget-object v0, p0, Lu/aly/ad$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    return-object v0
.end method
