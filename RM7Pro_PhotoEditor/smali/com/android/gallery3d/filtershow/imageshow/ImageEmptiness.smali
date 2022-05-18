.class public Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# instance fields
.field private O:Lcom/android/gallery3d/filtershow/filters/o;

.field private P:Lcom/android/gallery3d/filtershow/editors/k;

.field private Q:I

.field private R:Landroid/graphics/RectF;

.field private S:Z

.field T:Lcom/android/gallery3d/filtershow/imageshow/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->Q:I

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->S:Z

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/a;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->S:Z

    return-void
.end method

.method private H()V
    .locals 8

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    int-to-float v5, v0

    int-to-float v6, v2

    div-float/2addr v5, v6

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    int-to-float v4, v1

    int-to-float v6, v3

    div-float/2addr v4, v6

    :cond_2
    cmpl-float v6, v5, v4

    const/4 v7, 0x0

    if-lez v6, :cond_3

    int-to-float v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    iput v7, v1, Landroid/graphics/RectF;->left:F

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    move v3, v0

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iput v7, v1, Landroid/graphics/RectF;->top:F

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/a;->k(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 9

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x2

    new-array v3, v1, [F

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/o;->q()F

    move-result v4

    aput v4, v3, v0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/o;->k()F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v4, v4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v1

    int-to-float v1, v6

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v8, v4, v1}, Lcom/android/gallery3d/filtershow/filters/o;->g(FF)V

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v8, v6, v6}, Lcom/android/gallery3d/filtershow/filters/o;->o(FF)V

    aput v4, v3, v0

    aput v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    aget v2, v3, v0

    aget v4, v3, v5

    invoke-virtual {v1, v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/a;->i(FF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    aget v0, v3, v0

    mul-float/2addr v0, v7

    aget v2, v3, v5

    mul-float/2addr v2, v7

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/a;->j(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    aget v0, v3, v0

    aget v3, v3, v5

    invoke-virtual {v1, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/a;->i(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/o;->a()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/o;->r()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/a;->j(FF)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->P:Lcom/android/gallery3d/filtershow/editors/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->S:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->H()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->R:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [F

    aput v1, v9, v6

    const/4 v10, 0x1

    aput v3, v9, v10

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-array v8, v8, [F

    aput v0, v8, v6

    aput v4, v8, v10

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v0, v8, v6

    aget v4, v8, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v5

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    aget v5, v9, v6

    aget v7, v9, v10

    invoke-virtual {v4, v5, v7}, Lcom/android/gallery3d/filtershow/filters/o;->g(FF)V

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v4, v0, v0}, Lcom/android/gallery3d/filtershow/filters/o;->o(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/a;->i(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/filtershow/imageshow/a;->j(FF)V

    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->S:Z

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/a;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->G()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->Q:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/a;->e(FF)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->Q:I

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->Q:I

    if-ne v1, v2, :cond_4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->Q:I

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->Q:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v0, v2, v1, p1, v4}, Lcom/android/gallery3d/filtershow/imageshow/a;->b(IFFLcom/android/gallery3d/filtershow/imageshow/z;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/o;)V

    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->T:Lcom/android/gallery3d/filtershow/imageshow/a;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/gallery3d/filtershow/imageshow/a;->a(FFLcom/android/gallery3d/filtershow/imageshow/z;)V

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->G()V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/k;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->P:Lcom/android/gallery3d/filtershow/editors/k;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->S:Z

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/o;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->O:Lcom/android/gallery3d/filtershow/filters/o;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->G()V

    return-void
.end method
