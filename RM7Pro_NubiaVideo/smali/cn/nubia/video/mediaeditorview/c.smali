.class public Lcn/nubia/video/mediaeditorview/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected A:F

.field protected a:Landroid/content/Context;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Landroid/graphics/Rect;

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:Landroid/graphics/Bitmap;

.field protected q:Z

.field protected r:Z

.field protected s:I

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Landroid/graphics/Bitmap;

.field protected x:Landroid/graphics/Bitmap;

.field protected y:Landroid/graphics/Bitmap;

.field protected z:F


# virtual methods
.method public a(I)I
    .locals 5

    if-gtz p1, :cond_0

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    add-int v1, p1, v0

    add-int/lit16 v1, v1, -0x3e8

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    if-ge v1, v2, :cond_1

    sub-int/2addr v2, v0

    add-int/lit16 p1, v2, 0x3e8

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    add-int v1, v0, p1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->f:I

    if-le v1, v2, :cond_1

    sub-int p1, v2, v0

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz p1, :cond_4

    .line 4
    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_4

    .line 5
    :cond_2
    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-int/2addr v2, p1

    int-to-float v2, v2

    div-float/2addr v3, v2

    cmpl-float v2, v3, v1

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-lez p1, :cond_5

    .line 6
    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    .line 7
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    int-to-float v3, v1

    mul-float/2addr v0, v3

    add-int/2addr v1, p1

    int-to-float v1, v1

    div-float v1, v0, v1

    cmpg-float v0, v1, v2

    if-gez v0, :cond_5

    move v1, v2

    .line 8
    :cond_5
    iput v1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    .line 9
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    .line 10
    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v1

    cmpg-float v1, v2, v4

    if-gez v1, :cond_6

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 11
    iput v3, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/c;->x()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipEndTime 666 mScaleRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "mClipHeadTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mClipDuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EntryShow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public b(I)I
    .locals 5

    const/16 v0, 0x3e8

    if-ltz p1, :cond_0

    .line 1
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    add-int v2, p1, v1

    add-int/2addr v2, v0

    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    if-le v2, v3, :cond_1

    sub-int/2addr v3, v1

    add-int/lit16 p1, v3, -0x3e8

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    add-int v2, v1, p1

    if-gez v2, :cond_1

    neg-int p1, v1

    .line 3
    :cond_1
    :goto_0
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz p1, :cond_4

    .line 4
    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    cmpl-float v4, v1, v3

    if-gtz v4, :cond_2

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    const/16 v4, 0x32

    if-ne v3, v4, :cond_4

    .line 5
    :cond_2
    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->f:I

    if-le v3, v0, :cond_4

    .line 6
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    int-to-float v3, v0

    mul-float/2addr v3, v1

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v3, v0

    cmpl-float v0, v3, v2

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-gez p1, :cond_5

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    cmpl-float v3, v1, v0

    if-lez v3, :cond_5

    .line 8
    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    sub-int/2addr v2, p1

    int-to-float v2, v2

    div-float v2, v1, v2

    cmpg-float v1, v2, v0

    if-gez v1, :cond_5

    move v2, v0

    .line 9
    :cond_5
    iput v2, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    .line 10
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    .line 11
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    int-to-float v0, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    mul-float/2addr v0, v2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    int-to-float v0, v1

    div-float/2addr v3, v0

    .line 12
    iput v3, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/c;->x()V

    return p1
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/c;->q:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x7

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 4
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/d;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v1, -0x16

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x14

    int-to-float v5, v3

    add-int/lit8 v1, v1, -0x12

    int-to-float v6, v1

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    int-to-float v7, v2

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/c;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v1, -0xc

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x14

    int-to-float v5, v3

    add-int/lit8 v1, v1, -0x8

    int-to-float v6, v1

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    int-to-float v7, v2

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/c;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v1, 0x8

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x14

    int-to-float v5, v3

    add-int/lit8 v1, v1, 0xc

    int-to-float v6, v1

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    int-to-float v7, v2

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/c;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v1, 0x12

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x14

    int-to-float v5, v3

    add-int/lit8 v1, v1, 0x16

    int-to-float v6, v1

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    int-to-float v7, v2

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/c;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/c;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v3, 0x5

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    add-int/lit8 v3, v3, 0x2d

    int-to-float v3, v3

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    invoke-direct {v0, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 16
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/c;->t:Z

    if-eqz v0, :cond_2

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v3, 0x5

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v2, 0x28

    int-to-float v5, v5

    add-int/lit8 v3, v3, 0x2d

    int-to-float v3, v3

    add-int/lit8 v2, v2, 0x50

    int-to-float v2, v2

    invoke-direct {v0, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 19
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 20
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/c;->u:Z

    if-eqz v0, :cond_3

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v3, 0x5

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v2, 0x50

    int-to-float v5, v5

    add-int/lit8 v3, v3, 0x2d

    int-to-float v3, v3

    add-int/lit8 v2, v2, 0x78

    int-to-float v2, v2

    invoke-direct {v0, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 22
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->y:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/c;->q:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    return v0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->d:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    return v0
.end method

.method public l()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public m(II)Z
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0x23

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v2, v2, 0x23

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v3, -0x23

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, -0x7

    add-int/lit8 v3, v3, 0x23

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->q:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(II)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0x23

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v2, v2, 0x23

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->q:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public p(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->j:I

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->r:Z

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->q:Z

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->v:Z

    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->t:Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/c;->u:Z

    return-void
.end method

.method public w(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    return-void
.end method

.method protected x()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    .line 4
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClipLdata mCompletedLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mClipHeadPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mClipEndPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mScaleRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EntryShow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public y(F)V
    .locals 6

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    iget v3, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float/2addr v3, v4

    iget v5, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v4, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScaleRatio mTempLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EntryShow"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_0

    .line 5
    iget p1, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    int-to-float p1, p1

    div-float p1, v2, p1

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    .line 6
    iput v4, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->f:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 8
    :cond_0
    iput v3, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    .line 9
    iput p1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    .line 10
    :goto_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr p1, v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    .line 11
    iget p1, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    .line 12
    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateScaleRatio mTimeLineScaleRatio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "; mScaleRatio ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";mCompletedLength = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mClipHeadPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mClipEndPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mLength = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->m:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
