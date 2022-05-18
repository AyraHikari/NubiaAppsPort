.class public Lcom/zte/camera/ui/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([F)F
    .locals 3

    const/4 v0, 0x0

    .line 13
    aget v1, p1, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    aget p1, p1, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a([F[F)F
    .locals 2

    const/4 v0, 0x0

    .line 17
    aget v1, p1, v0

    aget v0, p2, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    .line 18
    aget p1, p1, v0

    aget p2, p2, v0

    sub-float/2addr p1, p2

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double p1, v1

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private a(FF)[F
    .locals 4

    float-to-double v0, p1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double p1, p2

    mul-double/2addr v2, p1

    double-to-float v2, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput v2, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    return-object p2
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;FFF)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p9

    .line 30
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    sub-int v5, v1, p4

    int-to-float v5, v5

    .line 31
    iput v5, v4, Landroid/graphics/RectF;->left:F

    sub-int v5, v2, p4

    int-to-float v5, v5

    .line 32
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 33
    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x2

    mul-int/lit8 v7, p4, 0x2

    int-to-float v7, v7

    add-float/2addr v5, v7

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 34
    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v7

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 35
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    sub-int v7, p5, p7

    int-to-float v7, v7

    .line 36
    iput v7, v5, Landroid/graphics/RectF;->left:F

    sub-int v7, p6, p7

    int-to-float v7, v7

    .line 37
    iput v7, v5, Landroid/graphics/RectF;->top:F

    .line 38
    iget v7, v5, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v8, p7, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 39
    iget v7, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    iput v7, v5, Landroid/graphics/RectF;->bottom:F

    new-array v7, v6, [F

    .line 40
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    const/4 v10, 0x1

    aput v8, v7, v10

    new-array v8, v6, [F

    .line 41
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    aput v11, v8, v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    aput v11, v8, v10

    .line 42
    invoke-direct {v0, v7, v8}, Lcom/zte/camera/ui/common/a;->a([F[F)F

    move-result v11

    .line 43
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 44
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v13

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_3

    cmpl-float v15, v5, v14

    if-eqz v15, :cond_3

    cmpg-float v15, v11, p11

    if-gtz v15, :cond_3

    sub-float v15, v12, v5

    .line 47
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v16, v11, v16

    if-lez v16, :cond_3

    add-float v16, v12, v5

    cmpg-float v17, v11, v16

    if-gez v17, :cond_0

    mul-float v14, v12, v12

    mul-float v17, v11, v11

    add-float v18, v14, v17

    mul-float v19, v5, v5

    sub-float v18, v18, v19

    mul-float v20, v12, v13

    mul-float v20, v20, v11

    div-float v10, v18, v20

    float-to-double v9, v10

    .line 51
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-float v19, v19, v17

    sub-float v19, v19, v14

    mul-float v10, v5, v13

    mul-float/2addr v10, v11

    div-float v10, v19, v10

    float-to-double v13, v10

    .line 52
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v14, v13

    move/from16 v25, v14

    move v14, v9

    move/from16 v9, v25

    goto :goto_0

    :cond_0
    move v9, v14

    :goto_0
    new-array v10, v6, [F

    const/4 v13, 0x0

    .line 58
    aget v17, v8, v13

    aget v18, v7, v13

    sub-float v17, v17, v18

    aput v17, v10, v13

    const/16 v17, 0x1

    aget v18, v8, v17

    aget v19, v7, v17

    sub-float v18, v18, v19

    aput v18, v10, v17

    .line 59
    aget v6, v10, v17

    float-to-double v1, v6

    aget v6, v10, v13

    move-object v10, v7

    float-to-double v6, v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v15, v11

    float-to-double v6, v15

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v2, v6

    add-float v6, v1, v14

    sub-float v7, v2, v14

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    sub-float v13, v1, v14

    sub-float/2addr v13, v7

    float-to-double v14, v1

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    add-double v21, v14, v19

    move-object v1, v8

    float-to-double v7, v9

    sub-double v21, v21, v7

    sub-double v23, v19, v7

    move-object/from16 p7, v1

    float-to-double v1, v2

    sub-double v23, v23, v1

    float-to-double v1, v3

    mul-double v23, v23, v1

    sub-double v1, v21, v23

    double-to-float v1, v1

    sub-double v14, v14, v19

    add-double/2addr v14, v7

    add-double v14, v14, v23

    double-to-float v2, v14

    .line 65
    invoke-direct {v0, v6, v12}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v7

    .line 66
    invoke-direct {v0, v13, v12}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v8

    .line 67
    invoke-direct {v0, v1, v5}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v9

    .line 68
    invoke-direct {v0, v2, v5}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v14

    move-object/from16 v17, v4

    const/4 v15, 0x2

    new-array v4, v15, [F

    const/16 v18, 0x0

    .line 69
    aget v19, v7, v18

    aget v20, v10, v18

    add-float v19, v19, v20

    aput v19, v4, v18

    const/16 v19, 0x1

    aget v7, v7, v19

    aget v20, v10, v19

    add-float v7, v7, v20

    aput v7, v4, v19

    new-array v7, v15, [F

    .line 70
    aget v20, v8, v18

    aget v21, v10, v18

    add-float v20, v20, v21

    aput v20, v7, v18

    aget v8, v8, v19

    aget v10, v10, v19

    add-float/2addr v8, v10

    aput v8, v7, v19

    new-array v8, v15, [F

    .line 71
    aget v10, v9, v18

    aget v20, p7, v18

    add-float v10, v10, v20

    aput v10, v8, v18

    aget v9, v9, v19

    aget v10, p7, v19

    add-float/2addr v9, v10

    aput v9, v8, v19

    new-array v9, v15, [F

    .line 72
    aget v10, v14, v18

    aget v20, p7, v18

    add-float v10, v10, v20

    aput v10, v9, v18

    aget v10, v14, v19

    aget v14, p7, v19

    add-float/2addr v10, v14

    aput v10, v9, v19

    new-array v10, v15, [F

    .line 73
    aget v14, v4, v18

    aget v15, v8, v18

    sub-float/2addr v14, v15

    aput v14, v10, v18

    aget v14, v4, v19

    aget v15, v8, v19

    sub-float/2addr v14, v15

    aput v14, v10, v19

    mul-float v3, v3, p10

    .line 75
    invoke-direct {v0, v10}, Lcom/zte/camera/ui/common/a;->a([F)F

    move-result v10

    div-float v10, v10, v16

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v11, v14

    div-float v11, v11, v16

    .line 76
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float/2addr v3, v10

    mul-float/2addr v12, v3

    mul-float/2addr v5, v3

    const v3, 0x3fc90fdb

    sub-float/2addr v6, v3

    .line 79
    invoke-direct {v0, v6, v12}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v6

    add-float/2addr v1, v3

    .line 80
    invoke-direct {v0, v1, v5}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v1

    sub-float/2addr v2, v3

    .line 81
    invoke-direct {v0, v2, v5}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v2

    add-float/2addr v13, v3

    .line 82
    invoke-direct {v0, v13, v12}, Lcom/zte/camera/ui/common/a;->a(FF)[F

    move-result-object v3

    const/4 v5, 0x1

    .line 83
    aget v10, v7, v5

    move/from16 v11, p3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/4 v12, 0x0

    aget v13, v7, v12

    div-float/2addr v10, v13

    move/from16 v13, p2

    int-to-float v13, v13

    sub-float/2addr v10, v13

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 84
    aget v14, v9, v5

    sub-float/2addr v14, v11

    aget v5, v9, v12

    div-float/2addr v14, v5

    sub-float/2addr v14, v13

    float-to-double v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v5, v11

    const/high16 v11, 0x43340000    # 180.0f

    cmpl-float v12, v10, v11

    const/high16 v13, 0x42b40000    # 90.0f

    if-lez v12, :cond_1

    sub-float/2addr v10, v13

    :cond_1
    cmpl-float v11, v5, v11

    if-lez v11, :cond_2

    sub-float v10, v5, v13

    .line 93
    :cond_2
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    const/4 v12, 0x0

    .line 94
    aget v14, v4, v12

    const/4 v15, 0x1

    aget v13, v4, v15

    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    aget v13, v4, v12

    aget v14, v6, v12

    add-float v19, v13, v14

    aget v4, v4, v15

    aget v6, v6, v15

    add-float v20, v4, v6

    aget v4, v8, v12

    aget v6, v1, v12

    add-float v21, v4, v6

    aget v4, v8, v15

    aget v1, v1, v15

    add-float v22, v4, v1

    aget v23, v8, v12

    aget v24, v8, v15

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 96
    aget v1, v9, v12

    aget v4, v9, v15

    invoke-virtual {v11, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    aget v1, v9, v12

    aget v4, v2, v12

    add-float v19, v1, v4

    aget v1, v9, v15

    aget v2, v2, v15

    add-float v20, v1, v2

    aget v1, v7, v12

    aget v2, v3, v12

    add-float v21, v1, v2

    aget v1, v7, v15

    aget v2, v3, v15

    add-float v22, v1, v2

    aget v23, v7, v12

    aget v24, v7, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v10, v1

    sub-float/2addr v5, v1

    move-object/from16 v1, v17

    .line 98
    invoke-virtual {v11, v1, v10, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 99
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    .line 100
    invoke-virtual {v1, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method
