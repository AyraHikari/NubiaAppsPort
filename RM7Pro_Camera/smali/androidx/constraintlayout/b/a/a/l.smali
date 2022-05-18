.class public Landroidx/constraintlayout/b/a/a/l;
.super Landroidx/constraintlayout/b/a/a/p;
.source "SourceFile"


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 37
    sput-object v0, Landroidx/constraintlayout/b/a/a/l;->a:[I

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/b/a/e;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/a/a/p;-><init>(Landroidx/constraintlayout/b/a/e;)V

    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    sget-object v0, Landroidx/constraintlayout/b/a/a/f$a;->d:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    sget-object v0, Landroidx/constraintlayout/b/a/a/f$a;->e:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Landroidx/constraintlayout/b/a/a/l;->h:I

    return-void
.end method

.method private a([IIIIIFI)V
    .locals 2

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    const/4 p2, -0x1

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p7, p2, :cond_2

    if-eqz p7, :cond_1

    if-eq p7, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 296
    aput p3, p1, p4

    .line 297
    aput p2, p1, v1

    goto :goto_0

    :cond_1
    int-to-float p2, p5

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 290
    aput p2, p1, p4

    .line 291
    aput p5, p1, v1

    goto :goto_0

    :cond_2
    int-to-float p2, p5

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p7, p3

    div-float/2addr p7, p6

    add-float/2addr p7, v0

    float-to-int p6, p7

    if-gt p2, p3, :cond_3

    if-gt p5, p5, :cond_3

    .line 280
    aput p2, p1, p4

    .line 281
    aput p5, p1, v1

    goto :goto_0

    :cond_3
    if-gt p3, p3, :cond_4

    if-gt p6, p5, :cond_4

    .line 283
    aput p3, p1, p4

    .line 284
    aput p6, p1, v1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 16

    move-object/from16 v8, p0

    .line 305
    sget-object v0, Landroidx/constraintlayout/b/a/a/l$1;->a:[I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->l:Landroidx/constraintlayout/b/a/a/p$a;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/p$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    move-object/from16 v3, p1

    invoke-virtual {v8, v3, v0, v1, v10}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/d;Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V

    return-void

    :cond_1
    move-object/from16 v3, p1

    .line 311
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/b/a/a/l;->c(Landroidx/constraintlayout/b/a/a/d;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    .line 307
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/b/a/a/l;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 320
    :goto_0
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v0, :cond_24

    .line 321
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v3, :cond_24

    .line 322
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->l:I

    if-eq v0, v1, :cond_23

    if-eq v0, v2, :cond_3

    goto/16 :goto_f

    .line 324
    :cond_3
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->m:I

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v0, v2, :cond_4

    goto :goto_4

    .line 446
    :cond_4
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->O()I

    move-result v0

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    if-eq v0, v9, :cond_5

    move v0, v10

    goto :goto_3

    .line 453
    :cond_5
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float v0, v0

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    goto :goto_1

    .line 449
    :cond_6
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float v0, v0

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_2

    .line 457
    :cond_7
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float v0, v0

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    :goto_1
    mul-float/2addr v0, v1

    :goto_2
    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 461
    :goto_3
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto/16 :goto_f

    .line 326
    :cond_8
    :goto_4
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v12, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 327
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v13, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    .line 328
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_9

    move v0, v9

    goto :goto_5

    :cond_9
    move v0, v10

    .line 329
    :goto_5
    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_a

    move v2, v9

    goto :goto_6

    :cond_a
    move v2, v10

    .line 330
    :goto_6
    iget-object v3, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_b

    move v3, v9

    goto :goto_7

    :cond_b
    move v3, v10

    .line 331
    :goto_7
    iget-object v4, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v4, :cond_c

    move v4, v9

    goto :goto_8

    :cond_c
    move v4, v10

    .line 333
    :goto_8
    iget-object v5, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/e;->O()I

    move-result v14

    if-eqz v0, :cond_15

    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    if-eqz v4, :cond_15

    .line 336
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v15

    .line 337
    iget-boolean v0, v12, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v13, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_f

    .line 338
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez v0, :cond_d

    goto :goto_9

    .line 341
    :cond_d
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int v2, v0, v1

    .line 342
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int v3, v0, v1

    .line 343
    iget v0, v12, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v1, v12, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int v4, v0, v1

    .line 344
    iget v0, v13, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v1, v13, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int v5, v0, v1

    .line 345
    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/b/a/a/l;->a([IIIIIFI)V

    .line 346
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 347
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    :cond_e
    :goto_9
    return-void

    .line 350
    :cond_f
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_12

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_12

    .line 351
    iget-boolean v0, v12, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v13, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez v0, :cond_10

    goto :goto_a

    .line 354
    :cond_10
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int v2, v0, v1

    .line 355
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int v3, v0, v1

    .line 356
    iget-object v0, v12, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v1, v12, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int v4, v0, v1

    .line 357
    iget-object v0, v13, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v1, v13, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int v5, v0, v1

    .line 358
    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/b/a/a/l;->a([IIIIIFI)V

    .line 359
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 360
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_b

    :cond_11
    :goto_a
    return-void

    .line 362
    :cond_12
    :goto_b
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_14

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v12, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v13, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez v0, :cond_13

    goto :goto_c

    .line 367
    :cond_13
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int v2, v0, v1

    .line 368
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int v3, v0, v1

    .line 369
    iget-object v0, v12, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v1, v12, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int v4, v0, v1

    .line 370
    iget-object v0, v13, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v1, v13, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int v5, v0, v1

    .line 371
    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/b/a/a/l;->a([IIIIIFI)V

    .line 372
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 373
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    sget-object v1, Landroidx/constraintlayout/b/a/a/l;->a:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto/16 :goto_f

    :cond_14
    :goto_c
    return-void

    :cond_15
    if-eqz v0, :cond_1c

    if-eqz v3, :cond_1c

    .line 375
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_1b

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez v0, :cond_16

    goto/16 :goto_d

    .line 378
    :cond_16
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v0

    .line 379
    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v3, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v3, v3, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v2, v3

    .line 380
    iget-object v3, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/b/a/a/f;

    iget v3, v3, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v4, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v4, v4, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int/2addr v3, v4

    if-eq v14, v1, :cond_19

    if-eqz v14, :cond_19

    if-eq v14, v9, :cond_17

    goto/16 :goto_f

    :cond_17
    sub-int/2addr v3, v2

    .line 398
    invoke-virtual {v8, v3, v10}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 400
    invoke-virtual {v8, v2, v9}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_18

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 404
    :cond_18
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 405
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto/16 :goto_f

    :cond_19
    sub-int/2addr v3, v2

    .line 386
    invoke-virtual {v8, v3, v10}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 388
    invoke-virtual {v8, v2, v9}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_1a

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 392
    :cond_1a
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 393
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto/16 :goto_f

    :cond_1b
    :goto_d
    return-void

    :cond_1c
    if-eqz v2, :cond_24

    if-eqz v4, :cond_24

    .line 409
    iget-boolean v0, v12, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v13, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez v0, :cond_1d

    goto :goto_e

    .line 412
    :cond_1d
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v0

    .line 413
    iget-object v2, v12, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v3, v12, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v2, v3

    .line 414
    iget-object v3, v13, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/b/a/a/f;

    iget v3, v3, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget v4, v13, Landroidx/constraintlayout/b/a/a/f;->f:I

    sub-int/2addr v3, v4

    if-eq v14, v1, :cond_20

    if-eqz v14, :cond_1e

    if-eq v14, v9, :cond_20

    goto :goto_f

    :cond_1e
    sub-int/2addr v3, v2

    .line 432
    invoke-virtual {v8, v3, v9}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 434
    invoke-virtual {v8, v2, v10}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_1f

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 438
    :cond_1f
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 439
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_f

    :cond_20
    sub-int/2addr v3, v2

    .line 420
    invoke-virtual {v8, v3, v9}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 422
    invoke-virtual {v8, v2, v10}, Landroidx/constraintlayout/b/a/a/l;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_21

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 426
    :cond_21
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 427
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_f

    :cond_22
    :goto_e
    return-void

    .line 466
    :cond_23
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 468
    iget-object v1, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v1, v1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v1, :cond_24

    .line 469
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v1, v1, Landroidx/constraintlayout/b/a/e;->q:F

    .line 470
    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 472
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 481
    :cond_24
    :goto_f
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz v0, :cond_2c

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez v0, :cond_25

    goto/16 :goto_10

    .line 485
    :cond_25
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_26

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_26

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v0, :cond_26

    return-void

    .line 489
    :cond_26
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v0, :cond_27

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_27

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v0, :cond_27

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    .line 492
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v0

    if-nez v0, :cond_27

    .line 494
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    .line 495
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    .line 496
    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v0, v2

    .line 497
    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v1, v2

    sub-int v2, v1, v0

    .line 500
    iget-object v3, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 501
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 502
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    return-void

    .line 506
    :cond_27
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v0, :cond_29

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_29

    iget v0, v8, Landroidx/constraintlayout/b/a/a/l;->c:I

    if-ne v0, v9, :cond_29

    .line 509
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 510
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    .line 511
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    .line 512
    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v0, v2

    .line 513
    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 515
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->m:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 516
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v1, v1, Landroidx/constraintlayout/b/a/e;->p:I

    .line 517
    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v2, v2, Landroidx/constraintlayout/b/a/e;->o:I

    .line 518
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v1, :cond_28

    .line 520
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    :cond_28
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 526
    :cond_29
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v0, :cond_2a

    return-void

    .line 530
    :cond_2a
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    .line 531
    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    .line 532
    iget v2, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v3, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v3, v3, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v2, v3

    .line 533
    iget v3, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v4, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v4, v4, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v3, v4

    .line 534
    iget-object v4, v8, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->I()F

    move-result v4

    if-ne v0, v1, :cond_2b

    .line 536
    iget v2, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    .line 537
    iget v3, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    move v4, v11

    :cond_2b
    sub-int/2addr v3, v2

    .line 542
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->g:I

    sub-int/2addr v3, v0

    .line 543
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    int-to-float v1, v2

    add-float/2addr v1, v11

    int-to-float v2, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 544
    iget-object v0, v8, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v8, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, v8, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    :cond_2c
    :goto_10
    return-void
.end method

.method a()Z
    .locals 3

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->e:Landroidx/constraintlayout/b/a/a/m;

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/g;->a()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/l;->i:Z

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/l;->i:Z

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    .line 67
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 548
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->m(I)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 5

    .line 83
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/e;->b:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    .line 88
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-eq v0, v1, :cond_7

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v2, :cond_2

    .line 93
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v2, :cond_3

    .line 94
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 96
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_7

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_7

    .line 107
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v2, :cond_6

    .line 110
    :cond_5
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v2, :cond_7

    .line 111
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 112
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    return-void

    .line 127
    :cond_7
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/e;->b:Z

    if-eqz v0, :cond_e

    .line 128
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 130
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto/16 :goto_2

    .line 133
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 135
    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 137
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 139
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v1, v0, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 141
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v2, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v2, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    goto/16 :goto_2

    .line 144
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_c

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 147
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 148
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_2

    .line 150
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_d

    .line 151
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 153
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_2

    .line 158
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/b/a/i;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->g:Landroidx/constraintlayout/b/a/d$a;

    .line 159
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v0, :cond_1a

    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 161
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->y()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_2

    .line 166
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v3, :cond_15

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->l:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    const/4 v3, 0x3

    if-eq v0, v3, :cond_f

    goto/16 :goto_1

    .line 169
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v0, v3, :cond_12

    .line 172
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/f;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/f;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/f;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 175
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/f;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/g;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/g;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 186
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 187
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 190
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    .line 196
    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v2, v0, Landroidx/constraintlayout/b/a/a/g;->b:Z

    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1

    .line 213
    :cond_14
    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    .line 214
    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v2, v0, Landroidx/constraintlayout/b/a/a/g;->b:Z

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_15
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_17

    .line 228
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto/16 :goto_2

    .line 232
    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    .line 233
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v1

    .line 242
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/b/a/a/f;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 243
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/b/a/a/f;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 245
    sget-object v0, Landroidx/constraintlayout/b/a/a/p$a;->d:Landroidx/constraintlayout/b/a/a/p$a;

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->l:Landroidx/constraintlayout/b/a/a/p$a;

    goto/16 :goto_2

    .line 247
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_18

    .line 248
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 250
    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 251
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    goto :goto_2

    .line 253
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_19

    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 256
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    const/4 v2, -0x1

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    goto :goto_2

    .line 261
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/b/a/i;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 262
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 263
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/e;->y()I

    move-result v3

    invoke-virtual {p0, v1, v0, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 264
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/b/a/a/l;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    :cond_1a
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/l;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
