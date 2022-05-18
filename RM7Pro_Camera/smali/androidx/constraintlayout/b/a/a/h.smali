.class public Landroidx/constraintlayout/b/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroidx/constraintlayout/b/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    sput-object v0, Landroidx/constraintlayout/b/a/a/h;->a:Landroidx/constraintlayout/b/a/a/b$a;

    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;)V
    .locals 6

    .line 534
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->J()F

    move-result v0

    .line 535
    iget-object v1, p1, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v1

    .line 536
    iget-object v2, p1, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    .line 537
    iget-object v3, p1, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    add-int/2addr v3, v1

    .line 538
    iget-object v4, p1, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 544
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_2

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 556
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroidx/constraintlayout/b/a/e;->b(II)V

    .line 557
    invoke-static {p1, p0}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;Z)V
    .locals 6

    .line 499
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->I()F

    move-result v0

    .line 500
    iget-object v1, p1, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v1

    .line 501
    iget-object v2, p1, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    .line 502
    iget-object v3, p1, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    add-int/2addr v3, v1

    .line 503
    iget-object v4, p1, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 509
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_2

    sub-int v4, v0, v3

    .line 521
    :cond_2
    invoke-virtual {p1, v0, v4}, Landroidx/constraintlayout/b/a/e;->a(II)V

    .line 522
    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/a;Landroidx/constraintlayout/b/a/a/b$b;IZ)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 213
    invoke-static {p0, p1, p3}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {p0, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V
    .locals 13

    .line 353
    instance-of v0, p0, Landroidx/constraintlayout/b/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 355
    sget v1, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {p0, p1, v0, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 358
    :cond_0
    sget-object v0, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v0

    .line 359
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    .line 361
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v3

    .line 363
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 364
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/b/a/d;

    .line 365
    iget-object v9, v4, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 368
    invoke-static {v9}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v10

    .line 369
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    .line 370
    new-instance v11, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v11}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 371
    sget v12, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {v9, p1, v11, v12}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 374
    :cond_2
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v11, v12, :cond_8

    if-eqz v10, :cond_3

    goto/16 :goto_2

    .line 400
    :cond_3
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v10, v11, :cond_1

    iget v10, v9, Landroidx/constraintlayout/b/a/e;->s:I

    if-ltz v10, :cond_1

    iget v10, v9, Landroidx/constraintlayout/b/a/e;->r:I

    if-ltz v10, :cond_1

    .line 402
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v10

    if-eq v10, v6, :cond_4

    iget v10, v9, Landroidx/constraintlayout/b/a/e;->m:I

    if-nez v10, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v10

    cmpl-float v10, v10, v5

    if-nez v10, :cond_1

    .line 403
    :cond_4
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->l()Z

    move-result v10

    if-nez v10, :cond_1

    .line 404
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v10}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v4, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 405
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v7

    goto :goto_1

    :cond_7
    move v4, v8

    :goto_1
    if-eqz v4, :cond_1

    .line 406
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    invoke-static {p0, p1, v9}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;)V

    goto/16 :goto_0

    .line 376
    :cond_8
    :goto_2
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v10

    if-eqz v10, :cond_9

    goto/16 :goto_0

    .line 383
    :cond_9
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_a

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v10, :cond_a

    .line 384
    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    add-int/2addr v4, v2

    .line 385
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v10

    add-int/2addr v10, v4

    .line 386
    invoke-virtual {v9, v4, v10}, Landroidx/constraintlayout/b/a/e;->b(II)V

    .line 387
    invoke-static {v9, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    goto/16 :goto_0

    .line 388
    :cond_a
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_b

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v10, :cond_b

    .line 389
    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    sub-int v4, v2, v4

    .line 390
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v10

    sub-int v10, v4, v10

    .line 391
    invoke-virtual {v9, v10, v4}, Landroidx/constraintlayout/b/a/e;->b(II)V

    .line 392
    invoke-static {v9, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    goto/16 :goto_0

    .line 393
    :cond_b
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v4, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 394
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 395
    invoke-static {p1, v9}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;)V

    goto/16 :goto_0

    .line 412
    :cond_c
    instance-of v0, p0, Landroidx/constraintlayout/b/a/h;

    if-eqz v0, :cond_d

    return-void

    .line 415
    :cond_d
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 416
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/d;

    .line 417
    iget-object v2, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 418
    invoke-static {v2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v4

    .line 419
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v4, :cond_f

    .line 420
    new-instance v9, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v9}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 421
    sget v10, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {v2, p1, v9, v10}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 426
    :cond_f
    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v9, :cond_10

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v9, :cond_10

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v9

    if-nez v9, :cond_11

    :cond_10
    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v9, :cond_12

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v9, :cond_12

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 427
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    move v9, v7

    goto :goto_4

    :cond_12
    move v9, v8

    .line 428
    :goto_4
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v10, v11, :cond_15

    if-eqz v4, :cond_13

    goto :goto_5

    .line 450
    :cond_13
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v4, :cond_e

    iget v1, v2, Landroidx/constraintlayout/b/a/e;->s:I

    if-ltz v1, :cond_e

    iget v1, v2, Landroidx/constraintlayout/b/a/e;->r:I

    if-ltz v1, :cond_e

    .line 452
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v1

    if-eq v1, v6, :cond_14

    iget v1, v2, Landroidx/constraintlayout/b/a/e;->m:I

    if-nez v1, :cond_e

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_e

    .line 453
    :cond_14
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->l()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v9, :cond_e

    .line 454
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v1

    if-nez v1, :cond_e

    .line 455
    invoke-static {p0, p1, v2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;)V

    goto/16 :goto_3

    .line 430
    :cond_15
    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_3

    .line 437
    :cond_16
    iget-object v4, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v4, :cond_17

    iget-object v4, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_17

    .line 438
    iget-object v1, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    add-int/2addr v1, v3

    .line 439
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v4

    add-int/2addr v4, v1

    .line 440
    invoke-virtual {v2, v1, v4}, Landroidx/constraintlayout/b/a/e;->b(II)V

    .line 441
    invoke-static {v2, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    goto/16 :goto_3

    .line 442
    :cond_17
    iget-object v4, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v4, :cond_18

    iget-object v1, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v1, :cond_18

    .line 443
    iget-object v1, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    sub-int v1, v3, v1

    .line 444
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v4

    sub-int v4, v1, v4

    .line 445
    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/b/a/e;->b(II)V

    .line 446
    invoke-static {v2, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    goto/16 :goto_3

    :cond_18
    if-eqz v9, :cond_e

    .line 447
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v1

    if-nez v1, :cond_e

    .line 448
    invoke-static {p1, v2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;)V

    goto/16 :goto_3

    .line 461
    :cond_19
    sget-object v0, Landroidx/constraintlayout/b/a/d$a;->f:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object p0

    .line 462
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 463
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v0

    .line 464
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/d;

    .line 465
    iget-object v2, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 466
    invoke-static {v2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v3

    .line 467
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    .line 468
    new-instance v4, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v4}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 469
    sget v5, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {v2, p1, v4, v5}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 471
    :cond_1b
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v5, :cond_1c

    if-eqz v3, :cond_1a

    .line 473
    :cond_1c
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_6

    .line 480
    :cond_1d
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->A:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v3, :cond_1a

    .line 481
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/b/a/e;->f(I)V

    .line 482
    invoke-static {v2, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;)V
    .locals 7

    .line 609
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->J()F

    move-result v0

    .line 610
    iget-object v1, p2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    add-int/2addr v1, v2

    .line 611
    iget-object v2, p2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    iget-object v3, p2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    .line 613
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    .line 614
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 615
    iget v4, p2, Landroidx/constraintlayout/b/a/e;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 617
    instance-of v3, p0, Landroidx/constraintlayout/b/a/f;

    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result p0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result p0

    :goto_0
    mul-float v3, v0, v6

    int-to-float p0, p0

    mul-float/2addr v3, p0

    float-to-int v3, v3

    goto :goto_1

    .line 623
    :cond_1
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->m:I

    if-nez p0, :cond_2

    sub-int v3, v2, v1

    .line 626
    :cond_2
    :goto_1
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->r:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 627
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->s:I

    if-lez p0, :cond_3

    .line 628
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->s:I

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    .line 635
    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/b/a/e;->b(II)V

    .line 636
    invoke-static {p2, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    :cond_4
    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;Z)V
    .locals 7

    .line 569
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->I()F

    move-result v0

    .line 570
    iget-object v1, p2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    add-int/2addr v1, v2

    .line 571
    iget-object v2, p2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    iget-object v3, p2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    .line 573
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    .line 574
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 575
    iget v4, p2, Landroidx/constraintlayout/b/a/e;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 577
    instance-of v3, p0, Landroidx/constraintlayout/b/a/f;

    if-eqz v3, :cond_0

    .line 578
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result p0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result p0

    .line 582
    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->I()F

    move-result v3

    mul-float/2addr v3, v6

    int-to-float p0, p0

    mul-float/2addr v3, p0

    float-to-int v3, v3

    goto :goto_1

    .line 583
    :cond_1
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez p0, :cond_2

    sub-int v3, v2, v1

    .line 586
    :cond_2
    :goto_1
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->o:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 587
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->p:I

    if-lez p0, :cond_3

    .line 588
    iget p0, p2, Landroidx/constraintlayout/b/a/e;->p:I

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    .line 595
    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/b/a/e;->a(II)V

    .line 596
    invoke-static {p2, p1, p3}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    :cond_4
    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V
    .locals 13

    .line 232
    instance-of v0, p0, Landroidx/constraintlayout/b/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 234
    sget v1, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {p0, p1, v0, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 237
    :cond_0
    sget-object v0, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v0

    .line 238
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    .line 240
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v3

    .line 242
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 243
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/b/a/d;

    .line 244
    iget-object v9, v4, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 247
    invoke-static {v9}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v10

    .line 248
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    .line 249
    new-instance v11, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v11}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 250
    sget v12, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {v9, p1, v11, v12}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 253
    :cond_2
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v11, v12, :cond_8

    if-eqz v10, :cond_3

    goto/16 :goto_2

    .line 279
    :cond_3
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v10, v11, :cond_1

    iget v10, v9, Landroidx/constraintlayout/b/a/e;->p:I

    if-ltz v10, :cond_1

    iget v10, v9, Landroidx/constraintlayout/b/a/e;->o:I

    if-ltz v10, :cond_1

    .line 281
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v10

    if-eq v10, v6, :cond_4

    iget v10, v9, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v10, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v10

    cmpl-float v10, v10, v5

    if-nez v10, :cond_1

    .line 282
    :cond_4
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->l()Z

    move-result v10

    if-nez v10, :cond_1

    .line 283
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v10}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v4, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 284
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v7

    goto :goto_1

    :cond_7
    move v4, v8

    :goto_1
    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    invoke-static {p0, p1, v9, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;Z)V

    goto/16 :goto_0

    .line 255
    :cond_8
    :goto_2
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v10

    if-eqz v10, :cond_9

    goto/16 :goto_0

    .line 262
    :cond_9
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_a

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v10, :cond_a

    .line 263
    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    add-int/2addr v4, v2

    .line 264
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v10

    add-int/2addr v10, v4

    .line 265
    invoke-virtual {v9, v4, v10}, Landroidx/constraintlayout/b/a/e;->a(II)V

    .line 266
    invoke-static {v9, p1, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    goto/16 :goto_0

    .line 267
    :cond_a
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_b

    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v10, :cond_b

    .line 268
    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    sub-int v4, v2, v4

    .line 269
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v10

    sub-int v10, v4, v10

    .line 270
    invoke-virtual {v9, v10, v4}, Landroidx/constraintlayout/b/a/e;->a(II)V

    .line 271
    invoke-static {v9, p1, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    goto/16 :goto_0

    .line 272
    :cond_b
    iget-object v10, v9, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    if-ne v4, v10, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v4, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 273
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    invoke-static {p1, v9, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;Z)V

    goto/16 :goto_0

    .line 291
    :cond_c
    instance-of v0, p0, Landroidx/constraintlayout/b/a/h;

    if-eqz v0, :cond_d

    return-void

    .line 294
    :cond_d
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 295
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/d;

    .line 296
    iget-object v2, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 297
    invoke-static {v2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v4

    .line 298
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v4, :cond_f

    .line 299
    new-instance v9, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v9}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    .line 300
    sget v10, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {v2, p1, v9, v10}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 305
    :cond_f
    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v9, :cond_10

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v9, :cond_10

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v9

    if-nez v9, :cond_11

    :cond_10
    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v9, :cond_12

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v9, :cond_12

    iget-object v9, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 306
    invoke-virtual {v9}, Landroidx/constraintlayout/b/a/d;->f()Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    move v9, v7

    goto :goto_4

    :cond_12
    move v9, v8

    .line 307
    :goto_4
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v10, v11, :cond_15

    if-eqz v4, :cond_13

    goto :goto_5

    .line 329
    :cond_13
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v4, :cond_e

    iget v1, v2, Landroidx/constraintlayout/b/a/e;->p:I

    if-ltz v1, :cond_e

    iget v1, v2, Landroidx/constraintlayout/b/a/e;->o:I

    if-ltz v1, :cond_e

    .line 331
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v1

    if-eq v1, v6, :cond_14

    iget v1, v2, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v1, :cond_e

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_e

    .line 332
    :cond_14
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->l()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v9, :cond_e

    .line 333
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v1

    if-nez v1, :cond_e

    .line 334
    invoke-static {p0, p1, v2, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;Z)V

    goto/16 :goto_3

    .line 309
    :cond_15
    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_3

    .line 316
    :cond_16
    iget-object v4, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v4, :cond_17

    iget-object v4, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_17

    .line 317
    iget-object v1, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    add-int/2addr v1, v3

    .line 318
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v4

    add-int/2addr v4, v1

    .line 319
    invoke-virtual {v2, v1, v4}, Landroidx/constraintlayout/b/a/e;->a(II)V

    .line 320
    invoke-static {v2, p1, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    goto/16 :goto_3

    .line 321
    :cond_17
    iget-object v4, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    if-ne v1, v4, :cond_18

    iget-object v1, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v1, :cond_18

    .line 322
    iget-object v1, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    sub-int v1, v3, v1

    .line 323
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v4

    sub-int v4, v1, v4

    .line 324
    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/b/a/e;->a(II)V

    .line 325
    invoke-static {v2, p1, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    goto/16 :goto_3

    :cond_18
    if-eqz v9, :cond_e

    .line 326
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v1

    if-nez v1, :cond_e

    .line 327
    invoke-static {p1, v2, p2}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/e;Z)V

    goto/16 :goto_3

    :cond_19
    return-void
.end method

.method public static a(Landroidx/constraintlayout/b/a/f;Landroidx/constraintlayout/b/a/a/b$b;)V
    .locals 13

    .line 54
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->c_()V

    .line 60
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->ac()Ljava/util/ArrayList;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    .line 63
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/b/a/e;

    .line 64
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/e;->c_()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->Y()Z

    move-result v5

    .line 74
    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v6, :cond_1

    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Landroidx/constraintlayout/b/a/f;->a(II)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/b/a/f;->d(I)V

    :goto_1
    move v0, v4

    move v6, v0

    move v7, v6

    :goto_2
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge v0, v3, :cond_7

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/b/a/e;

    .line 85
    instance-of v12, v11, Landroidx/constraintlayout/b/a/h;

    if-eqz v12, :cond_5

    .line 86
    check-cast v11, Landroidx/constraintlayout/b/a/h;

    .line 87
    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v12

    if-ne v12, v10, :cond_6

    .line 88
    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/h;->g()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 89
    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/h;->g()I

    move-result v6

    invoke-virtual {v11, v6}, Landroidx/constraintlayout/b/a/h;->z(I)V

    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/h;->h()I

    move-result v6

    if-eq v6, v9, :cond_3

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v6

    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/h;->h()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v11, v6}, Landroidx/constraintlayout/b/a/h;->z(I)V

    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->d()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/h;->f()F

    move-result v6

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 94
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/b/a/h;->z(I)V

    :cond_4
    :goto_3
    move v6, v10

    goto :goto_4

    .line 98
    :cond_5
    instance-of v8, v11, Landroidx/constraintlayout/b/a/a;

    if-eqz v8, :cond_6

    .line 99
    check-cast v11, Landroidx/constraintlayout/b/a/a;

    .line 100
    invoke-virtual {v11}, Landroidx/constraintlayout/b/a/a;->h()I

    move-result v8

    if-nez v8, :cond_6

    move v7, v10

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_9

    move v0, v4

    :goto_5
    if-ge v0, v3, :cond_9

    .line 107
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/b/a/e;

    .line 108
    instance-of v11, v6, Landroidx/constraintlayout/b/a/h;

    if-eqz v11, :cond_8

    .line 109
    check-cast v6, Landroidx/constraintlayout/b/a/h;

    .line 110
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 111
    invoke-static {v6, p1, v5}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    :cond_9
    invoke-static {p0, p1, v5}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    if-eqz v7, :cond_b

    move v0, v4

    :goto_6
    if-ge v0, v3, :cond_b

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/b/a/e;

    .line 124
    instance-of v7, v6, Landroidx/constraintlayout/b/a/a;

    if-eqz v7, :cond_a

    .line 125
    check-cast v6, Landroidx/constraintlayout/b/a/a;

    .line 126
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/a;->h()I

    move-result v7

    if-nez v7, :cond_a

    .line 127
    invoke-static {v6, p1, v4, v5}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/a;Landroidx/constraintlayout/b/a/a/b$b;IZ)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 134
    :cond_b
    sget-object v0, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v0, :cond_c

    .line 135
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Landroidx/constraintlayout/b/a/f;->b(II)V

    goto :goto_7

    .line 137
    :cond_c
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/b/a/f;->e(I)V

    :goto_7
    move v0, v4

    move v1, v0

    move v6, v1

    :goto_8
    if-ge v0, v3, :cond_12

    .line 144
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/b/a/e;

    .line 145
    instance-of v11, v7, Landroidx/constraintlayout/b/a/h;

    if-eqz v11, :cond_10

    .line 146
    check-cast v7, Landroidx/constraintlayout/b/a/h;

    .line 147
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v11

    if-nez v11, :cond_11

    .line 148
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/h;->g()I

    move-result v1

    if-eq v1, v9, :cond_d

    .line 149
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/h;->g()I

    move-result v1

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/h;->z(I)V

    goto :goto_9

    .line 150
    :cond_d
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/h;->h()I

    move-result v1

    if-eq v1, v9, :cond_e

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 151
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v1

    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/h;->h()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/h;->z(I)V

    goto :goto_9

    .line 152
    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 153
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/h;->f()F

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v1, v11

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 154
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/h;->z(I)V

    :cond_f
    :goto_9
    move v1, v10

    goto :goto_a

    .line 158
    :cond_10
    instance-of v11, v7, Landroidx/constraintlayout/b/a/a;

    if-eqz v11, :cond_11

    .line 159
    check-cast v7, Landroidx/constraintlayout/b/a/a;

    .line 160
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/a;->h()I

    move-result v7

    if-ne v7, v10, :cond_11

    move v6, v10

    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_14

    move v0, v4

    :goto_b
    if-ge v0, v3, :cond_14

    .line 167
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/e;

    .line 168
    instance-of v7, v1, Landroidx/constraintlayout/b/a/h;

    if-eqz v7, :cond_13

    .line 169
    check-cast v1, Landroidx/constraintlayout/b/a/h;

    .line 170
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v7

    if-nez v7, :cond_13

    .line 171
    invoke-static {v1, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 178
    :cond_14
    invoke-static {p0, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    if-eqz v6, :cond_16

    move p0, v4

    :goto_c
    if-ge p0, v3, :cond_16

    .line 183
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/e;

    .line 184
    instance-of v1, v0, Landroidx/constraintlayout/b/a/a;

    if-eqz v1, :cond_15

    .line 185
    check-cast v0, Landroidx/constraintlayout/b/a/a;

    .line 186
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a;->h()I

    move-result v1

    if-ne v1, v10, :cond_15

    .line 187
    invoke-static {v0, p1, v10, v5}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/a;Landroidx/constraintlayout/b/a/a/b$b;IZ)V

    :cond_15
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    if-ge v4, v3, :cond_18

    .line 195
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/b/a/e;

    .line 196
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 197
    sget-object v0, Landroidx/constraintlayout/b/a/a/h;->a:Landroidx/constraintlayout/b/a/a/b$a;

    sget v1, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    invoke-static {p0, p1, v0, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    .line 198
    invoke-static {p0, p1, v5}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Z)V

    .line 199
    invoke-static {p0, p1}, Landroidx/constraintlayout/b/a/a/h;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_18
    return-void
.end method

.method private static a(Landroidx/constraintlayout/b/a/e;)Z
    .locals 6

    .line 647
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v0

    .line 648
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    .line 649
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/f;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/f;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    :cond_1
    if-eqz v2, :cond_2

    .line 651
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/f;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    .line 652
    :cond_2
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_5

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v0, v2, :cond_5

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/constraintlayout/b/a/e;->K:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 658
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/b/a/e;->g(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 659
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v5

    .line 660
    :goto_2
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v2, :cond_8

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v2, :cond_8

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v2, :cond_6

    iget v1, p0, Landroidx/constraintlayout/b/a/e;->m:I

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/b/a/e;->K:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    .line 666
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/b/a/e;->g(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 667
    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/e;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v5

    .line 668
    :goto_4
    iget p0, p0, Landroidx/constraintlayout/b/a/e;->K:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_a

    if-nez v0, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    return v5

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    move v4, v5

    :cond_b
    return v4
.end method
