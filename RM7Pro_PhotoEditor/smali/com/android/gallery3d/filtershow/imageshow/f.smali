.class public Lcom/android/gallery3d/filtershow/imageshow/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/graphics/Path;FFFF)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    cmpg-float v0, p1, p3

    if-gez v0, :cond_1

    cmpg-float v0, p2, p4

    if-gez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p4, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    cmpg-float v0, p2, p4

    if-gez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3, p2, p1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static b(IIIILandroid/graphics/Path;)V
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    add-int/lit8 v5, v2, -0x3

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-int/lit8 v9, v3, -0x3

    sub-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v7, 0x4071800000000000L    # 280.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    div-double v7, v5, v7

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    div-double/2addr v5, v9

    goto :goto_0

    :cond_0
    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    :goto_0
    div-double v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    mul-double/2addr v5, v5

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-int v7, v2, v0

    int-to-float v7, v7

    sub-int v8, v3, v1

    int-to-float v8, v8

    const/4 v15, 0x1

    move v11, v7

    move v12, v8

    move-wide v13, v9

    move-wide/from16 v16, v5

    invoke-static/range {v11 .. v17}, Lcom/android/gallery3d/filtershow/imageshow/f;->c(FFDZD)[D

    move-result-object v18

    neg-double v13, v9

    invoke-static/range {v11 .. v17}, Lcom/android/gallery3d/filtershow/imageshow/f;->c(FFDZD)[D

    move-result-object v5

    int-to-double v6, v2

    const/4 v8, 0x0

    aget-wide v9, v18, v8

    sub-double v9, v6, v9

    double-to-int v9, v9

    int-to-double v10, v3

    const/4 v12, 0x1

    aget-wide v13, v18, v12

    sub-double v13, v10, v13

    double-to-int v13, v13

    aget-wide v14, v5, v8

    sub-double/2addr v6, v14

    double-to-int v6, v6

    aget-wide v7, v5, v12

    sub-double/2addr v10, v7

    double-to-int v5, v10

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v2

    int-to-float v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v9

    int-to-float v3, v13

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v6

    int-to-float v1, v5

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public static c(FFDZD)[D
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [D

    float-to-double v1, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    float-to-double p0, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, p0

    sub-double/2addr v3, v5

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    add-double/2addr v1, p0

    if-eqz p4, :cond_0

    mul-double p0, v3, v3

    mul-double p2, v1, v1

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v3, p0

    mul-double/2addr v3, p5

    div-double/2addr v1, p0

    mul-double/2addr v1, p5

    :cond_0
    const/4 p0, 0x0

    aput-wide v3, v0, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method
