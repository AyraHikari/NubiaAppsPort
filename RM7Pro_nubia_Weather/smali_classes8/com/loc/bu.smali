.class public final Lcom/loc/bu;
.super Lcom/loc/bt;
.source "FpsBufferBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/loc/bt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/dc;Lcom/loc/bx$a;JLjava/util/List;)[B
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/dc;",
            "Lcom/loc/bx$a;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;)[B"
        }
    .end annotation

    invoke-super/range {p0 .. p0}, Lcom/loc/bt;->a()Lcom/loc/bt;

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/loc/dc;->k:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/loc/dc;->c:J

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/loc/dc;->e:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v8

    double-to-int v8, v2

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/loc/dc;->d:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v10

    double-to-int v9, v2

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/loc/dc;->f:D

    double-to-int v10, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/loc/dc;->i:F

    float-to-int v11, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/loc/dc;->g:F

    float-to-int v12, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/loc/dc;->h:F

    float-to-int v2, v2

    int-to-short v13, v2

    move-object/from16 v0, p1

    iget-byte v14, v0, Lcom/loc/dc;->l:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static/range {v3 .. v14}, Lcom/loc/cj;->a(Lcom/loc/er;JJIIIIISB)I

    move-result v16

    if-eqz p2, :cond_16

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->f:Ljava/util/List;

    if-eqz v2, :cond_16

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->f:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/loc/cw;

    move-object v12, v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    instance-of v2, v12, Lcom/loc/cy;

    if-eqz v2, :cond_8

    const/4 v13, 0x1

    move-object v0, v12

    check-cast v0, Lcom/loc/cy;

    move-object v11, v0

    iget-boolean v2, v11, Lcom/loc/cy;->i:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v3, v11, Lcom/loc/cy;->j:I

    iget v4, v11, Lcom/loc/cy;->k:I

    iget v5, v11, Lcom/loc/cy;->c:I

    iget v6, v11, Lcom/loc/cy;->l:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/loc/ck;->a(Lcom/loc/er;IIII)I

    move-result v7

    move v6, v13

    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v7, v2, :cond_e

    iget-boolean v2, v12, Lcom/loc/cw;->h:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    int-to-byte v3, v2

    iget-boolean v2, v12, Lcom/loc/cw;->i:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    int-to-byte v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v5, v12, Lcom/loc/cw;->g:I

    int-to-short v5, v5

    invoke-static/range {v2 .. v7}, Lcom/loc/ch;->a(Lcom/loc/er;BBSBI)I

    move-result v2

    aput v2, v18, v14

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cw;

    instance-of v3, v2, Lcom/loc/cy;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lcom/loc/cy;

    move-object v3, v0

    iget v5, v3, Lcom/loc/cy;->j:I

    iget v3, v3, Lcom/loc/cy;->k:I

    invoke-static {v5, v3}, Lcom/loc/ct;->a(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/loc/ct;->a(J)S

    move-result v3

    iput v3, v2, Lcom/loc/cw;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/loc/dg;->a(Ljava/lang/Throwable;)V

    move-object v2, v15

    :goto_5
    return-object v2

    :cond_4
    :try_start_1
    instance-of v3, v2, Lcom/loc/cz;

    if-eqz v3, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/loc/cz;

    move-object v3, v0

    iget v5, v3, Lcom/loc/cz;->j:I

    iget v3, v3, Lcom/loc/cz;->k:I

    invoke-static {v5, v3}, Lcom/loc/ct;->a(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/loc/ct;->a(J)S

    move-result v3

    iput v3, v2, Lcom/loc/cw;->g:I

    goto :goto_4

    :cond_5
    instance-of v3, v2, Lcom/loc/da;

    if-eqz v3, :cond_6

    move-object v0, v2

    check-cast v0, Lcom/loc/da;

    move-object v3, v0

    iget v5, v3, Lcom/loc/da;->j:I

    iget v3, v3, Lcom/loc/da;->k:I

    invoke-static {v5, v3}, Lcom/loc/ct;->a(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/loc/ct;->a(J)S

    move-result v3

    iput v3, v2, Lcom/loc/cw;->g:I

    goto :goto_4

    :cond_6
    instance-of v3, v2, Lcom/loc/cx;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/loc/cx;

    move-object v3, v0

    iget v5, v3, Lcom/loc/cx;->k:I

    iget v3, v3, Lcom/loc/cx;->l:I

    invoke-static {v5, v3}, Lcom/loc/ct;->a(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/loc/ct;->a(J)S

    move-result v3

    iput v3, v2, Lcom/loc/cw;->g:I

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-virtual {v11}, Lcom/loc/cy;->b()I

    move-result v3

    invoke-virtual {v11}, Lcom/loc/cy;->c()I

    move-result v4

    iget v5, v11, Lcom/loc/cy;->j:I

    iget v6, v11, Lcom/loc/cy;->k:I

    iget v7, v11, Lcom/loc/cy;->c:I

    iget v8, v11, Lcom/loc/cy;->m:I

    iget v9, v11, Lcom/loc/cy;->n:I

    iget v10, v11, Lcom/loc/cy;->d:I

    iget v11, v11, Lcom/loc/cy;->l:I

    invoke-static/range {v2 .. v11}, Lcom/loc/ck;->a(Lcom/loc/er;IIIIIIIII)I

    move-result v7

    move v6, v13

    goto/16 :goto_1

    :cond_8
    instance-of v2, v12, Lcom/loc/cz;

    if-eqz v2, :cond_9

    const/4 v11, 0x3

    move-object v0, v12

    check-cast v0, Lcom/loc/cz;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-virtual {v10}, Lcom/loc/cz;->b()I

    move-result v3

    invoke-virtual {v10}, Lcom/loc/cz;->c()I

    move-result v4

    iget v5, v10, Lcom/loc/cz;->j:I

    iget v6, v10, Lcom/loc/cz;->k:I

    iget v7, v10, Lcom/loc/cz;->l:I

    iget v8, v10, Lcom/loc/cz;->c:I

    iget v9, v10, Lcom/loc/cz;->m:I

    iget v10, v10, Lcom/loc/cz;->d:I

    invoke-static/range {v2 .. v10}, Lcom/loc/cl;->a(Lcom/loc/er;IIIIIIII)I

    move-result v7

    move v6, v11

    goto/16 :goto_1

    :cond_9
    instance-of v2, v12, Lcom/loc/cx;

    if-eqz v2, :cond_b

    const/4 v10, 0x2

    move-object v0, v12

    check-cast v0, Lcom/loc/cx;

    move-object v9, v0

    iget-boolean v2, v9, Lcom/loc/cx;->i:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v3, v9, Lcom/loc/cx;->j:I

    iget v4, v9, Lcom/loc/cx;->k:I

    iget v5, v9, Lcom/loc/cx;->l:I

    iget v6, v9, Lcom/loc/cx;->m:I

    iget v7, v9, Lcom/loc/cx;->n:I

    iget v8, v9, Lcom/loc/cx;->c:I

    invoke-static/range {v2 .. v8}, Lcom/loc/ce;->a(Lcom/loc/er;IIIIII)I

    move-result v7

    move v6, v10

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v3, v9, Lcom/loc/cx;->j:I

    iget v4, v9, Lcom/loc/cx;->k:I

    iget v5, v9, Lcom/loc/cx;->l:I

    iget v6, v9, Lcom/loc/cx;->m:I

    iget v7, v9, Lcom/loc/cx;->n:I

    iget v8, v9, Lcom/loc/cx;->c:I

    iget v9, v9, Lcom/loc/cx;->d:I

    invoke-static/range {v2 .. v9}, Lcom/loc/ce;->a(Lcom/loc/er;IIIIIII)I

    move-result v7

    move v6, v10

    goto/16 :goto_1

    :cond_b
    instance-of v2, v12, Lcom/loc/da;

    if-eqz v2, :cond_1

    const/4 v11, 0x4

    move-object v0, v12

    check-cast v0, Lcom/loc/da;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-virtual {v10}, Lcom/loc/da;->b()I

    move-result v3

    invoke-virtual {v10}, Lcom/loc/da;->c()I

    move-result v4

    iget v5, v10, Lcom/loc/da;->j:I

    iget v6, v10, Lcom/loc/da;->k:I

    iget v7, v10, Lcom/loc/da;->l:I

    iget v8, v10, Lcom/loc/da;->c:I

    iget v9, v10, Lcom/loc/da;->m:I

    iget v10, v10, Lcom/loc/da;->d:I

    invoke-static/range {v2 .. v10}, Lcom/loc/co;->a(Lcom/loc/er;IIIIIIII)I

    move-result v7

    move v6, v11

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v2, -0x1

    move v11, v2

    :goto_6
    if-eqz p5, :cond_1c

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    const/4 v3, -0x1

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dd;

    iget-wide v6, v2, Lcom/loc/dd;->a:J

    invoke-static {v6, v7}, Lcom/loc/ct;->b(J)S

    move-result v5

    iput-short v5, v2, Lcom/loc/dd;->g:S

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/loc/bx$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/loc/cf;->a(Lcom/loc/er;[I)I

    move-result v9

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v11, v10, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v10, :cond_15

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cw;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/loc/cw;->e:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x7fff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_10

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_11

    :cond_10
    const-wide/16 v4, 0x7fff

    :cond_11
    const/4 v6, 0x0

    const/4 v7, 0x0

    instance-of v12, v2, Lcom/loc/cy;

    if-eqz v12, :cond_12

    check-cast v2, Lcom/loc/cy;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v12, v2, Lcom/loc/cy;->j:I

    iget v2, v2, Lcom/loc/cy;->k:I

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v7, v12, v2, v4}, Lcom/loc/cn;->a(Lcom/loc/er;IIS)I

    move-result v2

    move v4, v2

    move v2, v6

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    int-to-byte v2, v2

    invoke-static {v5, v2, v4}, Lcom/loc/cg;->a(Lcom/loc/er;BI)I

    move-result v2

    aput v2, v11, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_12
    instance-of v12, v2, Lcom/loc/cz;

    if-eqz v12, :cond_13

    check-cast v2, Lcom/loc/cz;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v12, v2, Lcom/loc/cz;->j:I

    iget v2, v2, Lcom/loc/cz;->k:I

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v7, v12, v2, v4}, Lcom/loc/cn;->a(Lcom/loc/er;IIS)I

    move-result v2

    move v4, v2

    move v2, v6

    goto :goto_9

    :cond_13
    instance-of v12, v2, Lcom/loc/cx;

    if-eqz v12, :cond_14

    check-cast v2, Lcom/loc/cx;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v12, v2, Lcom/loc/cx;->j:I

    iget v13, v2, Lcom/loc/cx;->k:I

    iget v2, v2, Lcom/loc/cx;->l:I

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v7, v12, v13, v2, v4}, Lcom/loc/cm;->a(Lcom/loc/er;IIIS)I

    move-result v2

    move v4, v2

    move v2, v6

    goto :goto_9

    :cond_14
    instance-of v12, v2, Lcom/loc/da;

    if-eqz v12, :cond_1e

    check-cast v2, Lcom/loc/da;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget v12, v2, Lcom/loc/da;->j:I

    iget v2, v2, Lcom/loc/da;->k:I

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v7, v12, v2, v4}, Lcom/loc/cn;->a(Lcom/loc/er;IIS)I

    move-result v2

    move v4, v2

    move v2, v6

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v2, v11}, Lcom/loc/cf;->b(Lcom/loc/er;[I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/loc/bx$a;->a:B

    invoke-static {v3, v8, v4, v9, v2}, Lcom/loc/cf;->a(Lcom/loc/er;IBII)I

    move-result v2

    move v11, v2

    goto/16 :goto_6

    :cond_16
    const/4 v2, -0x1

    move v11, v2

    goto/16 :goto_6

    :cond_17
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1d

    new-array v13, v12, [I

    const/4 v2, 0x0

    move v10, v2

    :goto_a
    if-ge v10, v12, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/loc/dd;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget-object v4, v9, Lcom/loc/dd;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v7

    iget-wide v4, v9, Lcom/loc/dd;->a:J

    cmp-long v2, v4, p3

    if-nez v2, :cond_18

    iget-wide v4, v9, Lcom/loc/dd;->a:J

    const-wide/16 v18, -0x1

    cmp-long v2, v4, v18

    if-eqz v2, :cond_18

    const/4 v3, 0x1

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    iget-wide v4, v9, Lcom/loc/dd;->a:J

    iget v6, v9, Lcom/loc/dd;->c:I

    int-to-short v6, v6

    iget-short v8, v9, Lcom/loc/dd;->g:S

    iget v9, v9, Lcom/loc/dd;->d:I

    int-to-short v9, v9

    invoke-static/range {v2 .. v9}, Lcom/loc/cq;->a(Lcom/loc/er;ZJSISS)I

    move-result v2

    aput v2, v13, v10

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v2, v13}, Lcom/loc/cp;->a(Lcom/loc/er;[I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v3, v2}, Lcom/loc/cp;->a(Lcom/loc/er;I)I

    move-result v2

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v3}, Lcom/loc/cc;->a(Lcom/loc/er;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/loc/cc;->a(Lcom/loc/er;I)V

    if-lez v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v3, v11}, Lcom/loc/cc;->c(Lcom/loc/er;I)V

    :cond_1a
    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v3, v2}, Lcom/loc/cc;->b(Lcom/loc/er;I)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-static {v2}, Lcom/loc/cc;->b(Lcom/loc/er;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-virtual {v3, v2}, Lcom/loc/bv;->c(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bu;->a:Lcom/loc/bv;

    invoke-virtual {v2}, Lcom/loc/bv;->c()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_5

    :cond_1c
    const/4 v2, -0x1

    goto :goto_b

    :cond_1d
    move v2, v3

    goto :goto_b

    :cond_1e
    move v2, v6

    move v4, v7

    goto/16 :goto_9
.end method
