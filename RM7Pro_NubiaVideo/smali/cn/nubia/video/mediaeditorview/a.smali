.class public Lcn/nubia/video/mediaeditorview/a;
.super Lcn/nubia/video/mediaeditorview/c;
.source "SourceFile"


# instance fields
.field private B:Landroid/graphics/Paint;

.field public C:I

.field private D:I

.field private E:Landroid/graphics/Bitmap;

.field private F:Landroid/graphics/Rect;


# virtual methods
.method public a(I)I
    .locals 3

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
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    .line 4
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    return p1
.end method

.method public b(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    add-int v1, p1, v0

    add-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    if-le v1, v2, :cond_1

    sub-int/2addr v2, v0

    add-int/lit16 p1, v2, -0x3e8

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    add-int v1, v0, p1

    if-gez v1, :cond_1

    neg-int p1, v0

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/c;->g:I

    .line 4
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcn/nubia/video/mediaeditorview/c;->j:I

    .line 5
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/video/mediaeditorview/c;->i:I

    return p1
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on draw mAudioSrcRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioTrackShow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/a;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 5
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 6
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 8
    iget v0, p0, Lcn/nubia/video/mediaeditorview/a;->D:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/a;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/a;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/a;->E:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x1a

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/a;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/a;->E:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x1a

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/a;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 14
    invoke-super {p0, p1}, Lcn/nubia/video/mediaeditorview/c;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public y(F)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScaleRatio mBeforeEmptyRectCounts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/a;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioTrackShow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/a;->C:I

    mul-int/lit8 v2, v2, 0x50

    sub-int/2addr v1, v2

    sget v2, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/a;->C:I

    mul-int/lit8 v2, v2, 0x50

    add-int/2addr v1, v2

    sget v2, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    invoke-super {p0, p1}, Lcn/nubia/video/mediaeditorview/c;->y(F)V

    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
