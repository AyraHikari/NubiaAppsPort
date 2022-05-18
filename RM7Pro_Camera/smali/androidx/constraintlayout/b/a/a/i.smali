.class public Landroidx/constraintlayout/b/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/b/a/e;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/o;",
            ">;",
            "Landroidx/constraintlayout/b/a/a/o;",
            ")",
            "Landroidx/constraintlayout/b/a/a/o;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 369
    iget v0, p0, Landroidx/constraintlayout/b/a/e;->ak:I

    goto :goto_0

    .line 371
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/a/e;->al:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    .line 377
    iget v3, p3, Landroidx/constraintlayout/b/a/a/o;->c:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    .line 382
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 383
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/b/a/a/o;

    .line 384
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/a/o;->b()I

    move-result v5

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 389
    invoke-virtual {p3, p1, v4}, Landroidx/constraintlayout/b/a/a/o;->a(ILandroidx/constraintlayout/b/a/a/o;)V

    .line 390
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    if-nez p3, :cond_9

    .line 400
    instance-of v0, p0, Landroidx/constraintlayout/b/a/j;

    if-eqz v0, :cond_7

    .line 401
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/b/a/j;

    .line 402
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/j;->y(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    move v2, v1

    .line 404
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 405
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/b/a/a/o;

    .line 406
    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/a/o;->b()I

    move-result v4

    if-ne v4, v0, :cond_6

    move-object p3, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez p3, :cond_8

    .line 414
    new-instance p3, Landroidx/constraintlayout/b/a/a/o;

    invoke-direct {p3, p1}, Landroidx/constraintlayout/b/a/a/o;-><init>(I)V

    .line 419
    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_9
    invoke-virtual {p3, p0}, Landroidx/constraintlayout/b/a/a/o;->a(Landroidx/constraintlayout/b/a/e;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    instance-of v0, p0, Landroidx/constraintlayout/b/a/h;

    if-eqz v0, :cond_b

    .line 423
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/b/a/h;

    .line 424
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->b()Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {v2, v1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    :cond_b
    if-nez p1, :cond_c

    .line 427
    invoke-virtual {p3}, Landroidx/constraintlayout/b/a/a/o;->b()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/b/a/e;->ak:I

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    goto :goto_5

    .line 434
    :cond_c
    invoke-virtual {p3}, Landroidx/constraintlayout/b/a/a/o;->b()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/b/a/e;->al:I

    .line 438
    iget-object v0, p0, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/b/a/e;->A:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    .line 440
    iget-object v0, p0, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    .line 442
    :goto_5
    iget-object p0, p0, Landroidx/constraintlayout/b/a/e;->D:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/b/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V

    :cond_d
    return-object p3
.end method

.method private static a(Ljava/util/ArrayList;I)Landroidx/constraintlayout/b/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/o;",
            ">;I)",
            "Landroidx/constraintlayout/b/a/a/o;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/a/o;

    .line 359
    iget v3, v2, Landroidx/constraintlayout/b/a/a/o;->c:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;)Z
    .locals 3

    .line 48
    sget-object v0, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne p2, v0, :cond_0

    sget-object p2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    .line 50
    :goto_1
    sget-object p2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq p3, p2, :cond_3

    sget-object p2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq p3, p2, :cond_3

    sget-object p2, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne p3, p2, :cond_2

    sget-object p2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v1

    :cond_5
    :goto_4
    return v2
.end method

.method public static a(Landroidx/constraintlayout/b/a/f;Landroidx/constraintlayout/b/a/a/b$b;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->ac()Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 75
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/e;

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v7

    .line 77
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v9

    .line 76
    invoke-static {v6, v7, v8, v9}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;)Z

    move-result v6

    if-nez v6, :cond_0

    return v3

    .line 83
    :cond_0
    instance-of v5, v5, Landroidx/constraintlayout/b/a/g;

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v4, v0, Landroidx/constraintlayout/b/a/f;->ao:Landroidx/constraintlayout/b/e;

    if-eqz v4, :cond_3

    .line 88
    iget-object v4, v0, Landroidx/constraintlayout/b/a/f;->ao:Landroidx/constraintlayout/b/e;

    iget-wide v5, v4, Landroidx/constraintlayout/b/e;->E:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroidx/constraintlayout/b/e;->E:J

    :cond_3
    move v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v5, v2, :cond_14

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/b/a/e;

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v15

    .line 93
    invoke-virtual {v13}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v3

    invoke-virtual {v13}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v4

    .line 92
    invoke-static {v14, v15, v3, v4}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;Landroidx/constraintlayout/b/a/e$a;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 94
    iget-object v3, v0, Landroidx/constraintlayout/b/a/f;->aF:Landroidx/constraintlayout/b/a/a/b$a;

    sget v4, Landroidx/constraintlayout/b/a/a/b$a;->a:I

    move-object/from16 v14, p1

    invoke-static {v13, v14, v3, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$b;Landroidx/constraintlayout/b/a/a/b$a;I)Z

    goto :goto_2

    :cond_4
    move-object/from16 v14, p1

    .line 96
    :goto_2
    instance-of v3, v13, Landroidx/constraintlayout/b/a/h;

    if-eqz v3, :cond_8

    .line 97
    move-object v4, v13

    check-cast v4, Landroidx/constraintlayout/b/a/h;

    .line 98
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v15

    if-nez v15, :cond_6

    if-nez v8, :cond_5

    .line 100
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :cond_5
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v15

    if-ne v15, v12, :cond_8

    if-nez v6, :cond_7

    .line 106
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :cond_7
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_8
    instance-of v4, v13, Landroidx/constraintlayout/b/a/j;

    if-eqz v4, :cond_f

    .line 112
    instance-of v4, v13, Landroidx/constraintlayout/b/a/a;

    if-eqz v4, :cond_c

    .line 113
    move-object v4, v13

    check-cast v4, Landroidx/constraintlayout/b/a/a;

    .line 114
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/a;->h()I

    move-result v15

    if-nez v15, :cond_a

    if-nez v7, :cond_9

    .line 116
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :cond_9
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_a
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/a;->h()I

    move-result v15

    if-ne v15, v12, :cond_f

    if-nez v9, :cond_b

    .line 122
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :cond_b
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 127
    :cond_c
    move-object v4, v13

    check-cast v4, Landroidx/constraintlayout/b/a/j;

    if-nez v7, :cond_d

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :cond_d
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_e

    .line 133
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :cond_e
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_f
    :goto_3
    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_11

    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_11

    if-nez v3, :cond_11

    instance-of v4, v13, Landroidx/constraintlayout/b/a/a;

    if-nez v4, :cond_11

    if-nez v10, :cond_10

    .line 141
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :cond_10
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_11
    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_13

    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_13

    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->A:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v4, :cond_13

    if-nez v3, :cond_13

    instance-of v3, v13, Landroidx/constraintlayout/b/a/a;

    if-nez v3, :cond_13

    if-nez v11, :cond_12

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 151
    :cond_12
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 154
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_15

    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/h;

    const/4 v6, 0x0

    const/4 v13, 0x0

    .line 161
    invoke-static {v5, v6, v3, v13}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_4

    :cond_15
    const/4 v6, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_16

    .line 165
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/j;

    .line 166
    invoke-static {v5, v6, v3, v13}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    move-result-object v7

    .line 167
    invoke-virtual {v5, v3, v6, v7}, Landroidx/constraintlayout/b/a/j;->a(Ljava/util/ArrayList;ILandroidx/constraintlayout/b/a/a/o;)V

    .line 168
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/b/a/a/o;->a(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_5

    .line 172
    :cond_16
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 174
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 175
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_6

    .line 179
    :cond_17
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 181
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 182
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_7

    .line 186
    :cond_18
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->g:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 188
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 189
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_8

    :cond_19
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v10, :cond_1a

    .line 194
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/e;

    .line 195
    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_9

    :cond_1a
    if-eqz v8, :cond_1b

    .line 204
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/h;

    .line 205
    invoke-static {v5, v12, v3, v7}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_a

    :cond_1b
    if-eqz v9, :cond_1c

    .line 209
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/j;

    .line 210
    invoke-static {v5, v12, v3, v7}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    move-result-object v6

    .line 211
    invoke-virtual {v5, v3, v12, v6}, Landroidx/constraintlayout/b/a/j;->a(Ljava/util/ArrayList;ILandroidx/constraintlayout/b/a/a/o;)V

    .line 212
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/b/a/a/o;->a(Ljava/util/ArrayList;)V

    const/4 v7, 0x0

    goto :goto_b

    .line 216
    :cond_1c
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 218
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 219
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_c

    .line 223
    :cond_1d
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->f:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 225
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 226
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_d

    .line 230
    :cond_1e
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 232
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 233
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_e

    .line 237
    :cond_1f
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->g:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 239
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/d;

    .line 240
    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    const/4 v13, 0x0

    invoke-static {v5, v12, v3, v13}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_f

    :cond_20
    const/4 v13, 0x0

    if-eqz v11, :cond_21

    .line 245
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/e;

    .line 246
    invoke-static {v5, v12, v3, v13}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_10

    :cond_21
    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_23

    .line 252
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/e;

    .line 253
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/e;->t()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 254
    iget v6, v5, Landroidx/constraintlayout/b/a/e;->ak:I

    invoke-static {v3, v6}, Landroidx/constraintlayout/b/a/a/i;->a(Ljava/util/ArrayList;I)Landroidx/constraintlayout/b/a/a/o;

    move-result-object v6

    .line 255
    iget v5, v5, Landroidx/constraintlayout/b/a/e;->al:I

    invoke-static {v3, v5}, Landroidx/constraintlayout/b/a/a/i;->a(Ljava/util/ArrayList;I)Landroidx/constraintlayout/b/a/a/o;

    move-result-object v5

    if-eqz v6, :cond_22

    if-eqz v5, :cond_22

    const/4 v7, 0x0

    .line 260
    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/b/a/a/o;->a(ILandroidx/constraintlayout/b/a/a/o;)V

    const/4 v7, 0x2

    .line 261
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/b/a/a/o;->a(I)V

    .line 262
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 270
    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v12, :cond_24

    const/4 v1, 0x0

    return v1

    .line 297
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v2, :cond_28

    .line 300
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v13

    const/4 v6, 0x0

    :cond_25
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/b/a/a/o;

    .line 301
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/a/o;->a()I

    move-result v5

    if-ne v5, v12, :cond_26

    goto :goto_12

    :cond_26
    const/4 v5, 0x0

    .line 304
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/b/a/a/o;->a(Z)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->ab()Landroidx/constraintlayout/b/d;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Landroidx/constraintlayout/b/a/a/o;->a(Landroidx/constraintlayout/b/d;I)I

    move-result v7

    if-le v7, v6, :cond_25

    move-object v2, v4

    move v6, v7

    goto :goto_12

    :cond_27
    if-eqz v2, :cond_28

    .line 318
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 319
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/b/a/f;->o(I)V

    .line 320
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/b/a/a/o;->a(Z)V

    goto :goto_13

    :cond_28
    move-object v2, v13

    .line 325
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v4, :cond_2c

    .line 328
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v13

    const/4 v6, 0x0

    :cond_29
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/b/a/a/o;

    .line 329
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/a/o;->a()I

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_14

    :cond_2a
    const/4 v5, 0x0

    .line 332
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/b/a/a/o;->a(Z)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/a/f;->ab()Landroidx/constraintlayout/b/d;

    move-result-object v7

    invoke-virtual {v4, v7, v12}, Landroidx/constraintlayout/b/a/a/o;->a(Landroidx/constraintlayout/b/d;I)I

    move-result v7

    if-le v7, v6, :cond_29

    move-object v3, v4

    move v6, v7

    goto :goto_14

    :cond_2b
    const/4 v5, 0x0

    if-eqz v3, :cond_2d

    .line 346
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 347
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/b/a/f;->p(I)V

    .line 348
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/b/a/a/o;->a(Z)V

    move-object v4, v3

    goto :goto_15

    :cond_2c
    const/4 v5, 0x0

    :cond_2d
    move-object v4, v13

    :goto_15
    if-nez v2, :cond_2f

    if-eqz v4, :cond_2e

    goto :goto_16

    :cond_2e
    move v3, v5

    goto :goto_17

    :cond_2f
    :goto_16
    move v3, v12

    :goto_17
    return v3
.end method
