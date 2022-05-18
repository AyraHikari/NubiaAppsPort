.class public Lcom/zte/mifavor/widget/MetaBall;
.super Ljava/lang/Object;
.source "MetaBall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDistance([F[F)F
    .locals 1

    const/4 p0, 0x0

    .line 22
    aget v0, p1, p0

    aget p0, p2, p0

    sub-float/2addr v0, p0

    const/4 p0, 0x1

    .line 23
    aget p1, p1, p0

    aget p0, p2, p0

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p0, v0

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private getLength([F)F
    .locals 2

    const/4 p0, 0x0

    .line 18
    aget v0, p1, p0

    aget p0, p1, p0

    mul-float/2addr v0, p0

    const/4 p0, 0x1

    aget v1, p1, p0

    aget p0, p1, p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private getVector(FF)[F
    .locals 4

    float-to-double p0, p1

    .line 29
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float p2, v0

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    double-to-float p0, p0

    const/4 p1, 0x2

    .line 31
    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p0, p1, p2

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;FFF)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v5, p9

    .line 40
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    sub-int v7, v1, p4

    int-to-float v7, v7

    .line 41
    iput v7, v6, Landroid/graphics/RectF;->left:F

    sub-int v7, v2, p4

    int-to-float v7, v7

    .line 42
    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 43
    iget v7, v6, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x2

    mul-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    add-float/2addr v7, v3

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 44
    iget v7, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v3

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 46
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    sub-int v7, p5, p7

    int-to-float v7, v7

    .line 47
    iput v7, v3, Landroid/graphics/RectF;->left:F

    sub-int v7, p6, p7

    int-to-float v7, v7

    .line 48
    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 49
    iget v7, v3, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v4, p7, 0x2

    int-to-float v4, v4

    add-float/2addr v7, v4

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 50
    iget v7, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 52
    new-array v4, v8, [F

    .line 53
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    const/4 v9, 0x0

    aput v7, v4, v9

    .line 54
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/4 v10, 0x1

    aput v7, v4, v10

    .line 56
    new-array v7, v8, [F

    .line 57
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    aput v11, v7, v9

    .line 58
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    aput v11, v7, v10

    .line 60
    invoke-direct {v0, v4, v7}, Lcom/zte/mifavor/widget/MetaBall;->getDistance([F[F)F

    move-result v11

    .line 62
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 63
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v13

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_6

    cmpl-float v15, v3, v14

    if-nez v15, :cond_0

    goto/16 :goto_2

    :cond_0
    cmpl-float v15, v11, p11

    if-gtz v15, :cond_5

    sub-float v15, v12, v3

    .line 73
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v11, v16

    if-gtz v16, :cond_1

    goto/16 :goto_1

    :cond_1
    add-float v16, v12, v3

    cmpg-float v17, v11, v16

    if-gez v17, :cond_2

    mul-float v14, v12, v12

    mul-float v17, v11, v11

    add-float v18, v14, v17

    mul-float v19, v3, v3

    sub-float v18, v18, v19

    mul-float v20, v12, v13

    mul-float v20, v20, v11

    div-float v10, v18, v20

    float-to-double v9, v10

    .line 76
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-float v19, v19, v17

    sub-float v19, v19, v14

    mul-float v10, v3, v13

    mul-float/2addr v10, v11

    div-float v10, v19, v10

    float-to-double v13, v10

    .line 78
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v14, v13

    goto :goto_0

    :cond_2
    move v9, v14

    .line 85
    :goto_0
    new-array v10, v8, [F

    const/4 v13, 0x0

    aget v17, v7, v13

    aget v18, v4, v13

    sub-float v17, v17, v18

    aput v17, v10, v13

    const/16 v17, 0x1

    aget v18, v7, v17

    aget v19, v4, v17

    sub-float v18, v18, v19

    aput v18, v10, v17

    .line 87
    aget v8, v10, v17

    float-to-double v1, v8

    aget v8, v10, v13

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    float-to-double v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v15, v11

    float-to-double v6, v15

    .line 88
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v2, v6

    add-float v6, v1, v9

    sub-float v7, v2, v9

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    sub-float v8, v1, v9

    sub-float/2addr v8, v7

    float-to-double v9, v1

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    add-double v19, v9, v17

    float-to-double v13, v14

    sub-double v19, v19, v13

    sub-double v23, v17, v13

    float-to-double v1, v2

    sub-double v23, v23, v1

    float-to-double v1, v5

    mul-double v23, v23, v1

    sub-double v1, v19, v23

    double-to-float v1, v1

    sub-double v9, v9, v17

    add-double/2addr v9, v13

    add-double v9, v9, v23

    double-to-float v2, v9

    .line 97
    invoke-direct {v0, v6, v12}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v7

    .line 98
    invoke-direct {v0, v8, v12}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v9

    .line 99
    invoke-direct {v0, v1, v3}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v10

    .line 100
    invoke-direct {v0, v2, v3}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v13

    const/4 v14, 0x2

    .line 102
    new-array v15, v14, [F

    const/16 v17, 0x0

    aget v18, v7, v17

    aget v19, v4, v17

    add-float v18, v18, v19

    aput v18, v15, v17

    const/16 v18, 0x1

    aget v7, v7, v18

    aget v19, v4, v18

    add-float v7, v7, v19

    aput v7, v15, v18

    .line 103
    new-array v7, v14, [F

    aget v19, v9, v17

    aget v20, v4, v17

    add-float v19, v19, v20

    aput v19, v7, v17

    aget v9, v9, v18

    aget v4, v4, v18

    add-float/2addr v9, v4

    aput v9, v7, v18

    .line 104
    new-array v4, v14, [F

    aget v9, v10, v17

    aget v19, v22, v17

    add-float v9, v9, v19

    aput v9, v4, v17

    aget v9, v10, v18

    aget v10, v22, v18

    add-float/2addr v9, v10

    aput v9, v4, v18

    .line 105
    new-array v9, v14, [F

    aget v10, v13, v17

    aget v19, v22, v17

    add-float v10, v10, v19

    aput v10, v9, v17

    aget v10, v13, v18

    aget v13, v22, v18

    add-float/2addr v10, v13

    aput v10, v9, v18

    .line 110
    new-array v10, v14, [F

    aget v13, v15, v17

    aget v14, v4, v17

    sub-float/2addr v13, v14

    aput v13, v10, v17

    aget v13, v15, v18

    aget v14, v4, v18

    sub-float/2addr v13, v14

    aput v13, v10, v18

    mul-float v5, v5, p10

    .line 113
    invoke-direct {v0, v10}, Lcom/zte/mifavor/widget/MetaBall;->getLength([F)F

    move-result v10

    div-float v10, v10, v16

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v11, v13

    div-float v11, v11, v16

    .line 114
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float/2addr v5, v10

    mul-float/2addr v12, v5

    mul-float/2addr v3, v5

    const v5, 0x3fc90fdb

    sub-float/2addr v6, v5

    .line 119
    invoke-direct {v0, v6, v12}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v6

    add-float/2addr v1, v5

    .line 120
    invoke-direct {v0, v1, v3}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v1

    sub-float/2addr v2, v5

    .line 121
    invoke-direct {v0, v2, v3}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v2

    add-float/2addr v8, v5

    .line 122
    invoke-direct {v0, v8, v12}, Lcom/zte/mifavor/widget/MetaBall;->getVector(FF)[F

    move-result-object v0

    const/4 v3, 0x1

    .line 126
    aget v5, v7, v3

    move/from16 v8, p3

    int-to-float v8, v8

    sub-float/2addr v5, v8

    const/4 v10, 0x0

    aget v11, v7, v10

    div-float/2addr v5, v11

    move/from16 v11, p2

    int-to-float v11, v11

    sub-float/2addr v5, v11

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 127
    aget v12, v9, v3

    sub-float/2addr v12, v8

    aget v3, v9, v10

    div-float/2addr v12, v3

    sub-float/2addr v12, v11

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v3, v10

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v10, v5, v8

    const/high16 v11, 0x42b40000    # 90.0f

    if-lez v10, :cond_3

    sub-float/2addr v5, v11

    :cond_3
    cmpl-float v8, v3, v8

    if-lez v8, :cond_4

    sub-float v5, v3, v11

    .line 135
    :cond_4
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/4 v10, 0x0

    .line 136
    aget v12, v15, v10

    const/4 v13, 0x1

    aget v14, v15, v13

    invoke-virtual {v8, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    aget v12, v15, v10

    aget v14, v6, v10

    add-float v23, v12, v14

    aget v12, v15, v13

    aget v6, v6, v13

    add-float v24, v12, v6

    aget v6, v4, v10

    aget v12, v1, v10

    add-float v25, v6, v12

    aget v6, v4, v13

    aget v1, v1, v13

    add-float v26, v6, v1

    aget v27, v4, v10

    aget v28, v4, v13

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 138
    aget v1, v9, v10

    aget v4, v9, v13

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    aget v1, v9, v10

    aget v4, v2, v10

    add-float v23, v1, v4

    aget v1, v9, v13

    aget v2, v2, v13

    add-float v24, v1, v2

    aget v1, v7, v10

    aget v2, v0, v10

    add-float v25, v1, v2

    aget v1, v7, v13

    aget v0, v0, v13

    add-float v26, v1, v0

    aget v27, v7, v10

    aget v28, v7, v13

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float/2addr v5, v11

    sub-float/2addr v3, v11

    move-object/from16 v0, v21

    .line 140
    invoke-virtual {v8, v0, v5, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 142
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    .line 150
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method
