.class public abstract Lcom/android/gallery3d/filtershow/crop/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V
    .locals 1

    float-to-int p3, p3

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p3, v0

    float-to-int p4, p4

    sub-int/2addr p4, v0

    add-int v0, p3, p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V
    .locals 2

    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p4, :cond_8

    const/4 p4, 0x3

    if-eq p5, p4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_2
    const/4 p4, 0x6

    if-eq p5, p4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_4
    const/16 p4, 0x9

    if-eq p5, p4, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_6
    const/16 p4, 0xc

    if-eq p5, p4, :cond_7

    if-eqz v0, :cond_10

    :cond_7
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_8
    and-int/lit8 p4, p5, 0x2

    if-nez p4, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_a
    and-int/lit8 p4, p5, 0x8

    if-nez p4, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_c
    and-int/lit8 p4, p5, 0x1

    if-nez p4, :cond_d

    if-eqz v0, :cond_e

    :cond_d
    iget p4, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_e
    and-int/lit8 p4, p5, 0x4

    if-nez p4, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    iget p4, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    :goto_1
    invoke-static {p0, p1, p2, p4, p3}, Lcom/android/gallery3d/filtershow/crop/b;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_10
    return-void
.end method

.method public static d(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 14

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x80

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float v7, v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v8, v0, v1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float v9, v1, v8

    const/4 v10, 0x0

    move v11, v0

    move v12, v10

    :goto_0
    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v1, v11

    move v3, v11

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v11, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v10, v13, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    move-object v0, p0

    move v2, v9

    move v4, v9

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v9, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static e(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 14

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x80

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41100000    # 9.0f

    div-float v7, v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v8, v0, v1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float v9, v1, v8

    const/4 v10, 0x0

    move v11, v0

    move v12, v10

    :goto_0
    const/16 v13, 0x8

    if-ge v12, v13, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v1, v11

    move v3, v11

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v11, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v10, v13, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    move-object v0, p0

    move v2, v9

    move v4, v9

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v9, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static f(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/filtershow/crop/b;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public static g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, -0x78000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    iget v4, p1, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_0
    sget-object p1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p0, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/crop/b;->j(Landroid/graphics/Path;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 11

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->top:F

    iget v8, p3, Landroid/graphics/RectF;->right:F

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v6, p3, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    iget v8, p2, Landroid/graphics/RectF;->left:F

    iget v9, p3, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static i(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v4, p3, v0

    div-float/2addr p2, v3

    sub-float v3, v1, p2

    add-float v5, p3, v0

    add-float v6, v1, p2

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p3, p2

    sub-float v5, v1, v0

    add-float/2addr p3, p2

    add-float/2addr v1, v0

    invoke-direct {v3, v4, v5, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v2, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v3, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, p1, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static j(Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 14

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    const v5, 0x3d91b1d9    # 0.07114f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3efced91    # 0.494f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v4

    iget v9, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v10, v7

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    invoke-direct {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v4, 0x430ba8b4

    const v5, 0x430247f0

    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v5, v6

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v10, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x424c0000    # 51.0f

    mul-float/2addr v11, v12

    div-float/2addr v11, v9

    add-float/2addr v10, v11

    iget v11, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v12, v2

    div-float/2addr v12, v8

    add-float/2addr v11, v12

    invoke-direct {v3, v4, v5, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v5, 0x42960000    # 75.0f

    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x42440000    # 49.0f

    mul-float/2addr v11, v12

    div-float/2addr v11, v9

    add-float/2addr v10, v11

    iget v11, p1, Landroid/graphics/RectF;->top:F

    iget v12, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v13, v6

    div-float/2addr v13, v9

    sub-float/2addr v12, v13

    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v9, v2

    div-float/2addr v9, v8

    add-float/2addr v6, v9

    invoke-direct {v3, v10, v11, v12, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p0, v3, v6, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v6, v2

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v7

    div-float/2addr p1, v8

    add-float/2addr p1, v2

    invoke-direct {v3, v5, v2, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const p1, 0x43013db2

    invoke-virtual {p0, v3, v4, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public static k(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, p3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v0, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0, p3, v0, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result p0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
