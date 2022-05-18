.class Lcn/nubia/camera/hitchcock/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/hitchcock/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/hitchcock/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcn/nubia/camera/hitchcock/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-static {p1}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/hitchcock/c$b;->a:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 550
    iput p1, p0, Lcn/nubia/camera/hitchcock/c$b;->b:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    .line 632
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v2, v2, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 633
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/hitchcock/i;->e()J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v4, v4, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/hitchcock/c$a;

    iget-wide v4, v4, Lcn/nubia/camera/hitchcock/c$a;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v2, v2, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    .line 634
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/hitchcock/c$a;

    iget-wide v2, v2, Lcn/nubia/camera/hitchcock/c$a;->a:J

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v4}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/hitchcock/i;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 635
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v2, v2, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v3, v3, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "HitchcockFragment"

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoTrackMsgList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v3, v3, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previewTrackMsgList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v3, v3, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result v1

    iput v1, p0, Lcn/nubia/camera/hitchcock/c$b;->a:F

    .line 641
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/hitchcock/i;->g()V

    .line 643
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/i;->a(F)V

    .line 644
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/TipView;->setTrackerRect(Landroid/graphics/Rect;)V

    .line 645
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/TipView;->setScale(F)V

    .line 646
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/hitchcock/TipView;->invalidate()V

    .line 647
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->n(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/hitchcock/c$b$3;

    invoke-direct {v2, p0}, Lcn/nubia/camera/hitchcock/c$b$3;-><init>(Lcn/nubia/camera/hitchcock/c$b;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 660
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    monitor-enter v1

    .line 661
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->k(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_2

    .line 663
    :try_start_1
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 665
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 668
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->o(Lcn/nubia/camera/hitchcock/c;)V

    .line 671
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->p(Lcn/nubia/camera/hitchcock/c;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 672
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v1, v1, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "HitchcockFragment"

    const-string v2, "no track msg"

    .line 673
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v1, Lcn/nubia/l/b/g;

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    .line 675
    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->q(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    .line 676
    invoke-static {v3}, Lcn/nubia/camera/hitchcock/c;->k(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/g;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v0, v0}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 679
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->r(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 680
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->u(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/hitchcock/c$b$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/hitchcock/c$b$4;-><init>(Lcn/nubia/camera/hitchcock/c$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 693
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/c;->m()V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 668
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public a(Landroid/graphics/Rect;J)V
    .locals 6

    .line 556
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->e(Lcn/nubia/camera/hitchcock/c;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->e(Lcn/nubia/camera/hitchcock/c;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 557
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 558
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 559
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    .line 560
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 561
    iget v3, p0, Lcn/nubia/camera/hitchcock/c$b;->a:F

    iget v4, p0, Lcn/nubia/camera/hitchcock/c$b;->b:F

    mul-float/2addr v3, v4

    sub-float v4, v1, v4

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    iput v3, p0, Lcn/nubia/camera/hitchcock/c$b;->a:F

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/hitchcock/TipView;->setScale(F)V

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/hitchcock/i;->a(F)V

    .line 565
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0, v3}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;F)F

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->h(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcn/nubia/camera/hitchcock/c$b$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/hitchcock/c$b$1;-><init>(Lcn/nubia/camera/hitchcock/c$b;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 574
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/hitchcock/TipView;->setTrackerRect(Landroid/graphics/Rect;)V

    .line 575
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/TipView;->postInvalidate()V

    .line 578
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result v0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->g(Lcn/nubia/camera/hitchcock/c;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->g(Lcn/nubia/camera/hitchcock/c;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 579
    :goto_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    .line 580
    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->i(Lcn/nubia/camera/hitchcock/c;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    if-gt v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    .line 582
    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->i(Lcn/nubia/camera/hitchcock/c;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    if-le v1, v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_6

    .line 585
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop track. isOffsetTooBig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isScaleCrossTheBorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HitchcockFragment"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->j(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/hitchcock/c$b$2;

    invoke-direct {v2, p0, v3, v0}, Lcn/nubia/camera/hitchcock/c$b$2;-><init>(Lcn/nubia/camera/hitchcock/c$b;ZZ)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 604
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->k(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_5

    .line 605
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->k(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->c()V

    goto :goto_2

    .line 608
    :cond_5
    new-instance v0, Lcn/nubia/camera/hitchcock/a$b;

    invoke-direct {v0}, Lcn/nubia/camera/hitchcock/a$b;-><init>()V

    .line 609
    iput-boolean v4, v0, Lcn/nubia/camera/hitchcock/a$b;->c:Z

    .line 610
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a$b;)V

    .line 622
    :cond_6
    :goto_2
    new-instance v0, Lcn/nubia/camera/hitchcock/c$a;

    invoke-direct {v0}, Lcn/nubia/camera/hitchcock/c$a;-><init>()V

    .line 623
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcn/nubia/camera/hitchcock/c$a;->b:Landroid/graphics/Rect;

    .line 624
    iput-wide p2, v0, Lcn/nubia/camera/hitchcock/c$a;->a:J

    .line 625
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object p1, p1, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
