.class public Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;
    }
.end annotation


# instance fields
.field private O:Lcom/android/gallery3d/filtershow/filters/e0;

.field private P:Lcom/android/gallery3d/filtershow/editors/w;

.field private Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

.field private R:I

.field private S:Landroid/graphics/RectF;

.field private T:Z

.field U:Lcom/android/gallery3d/filtershow/imageshow/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-direct {p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->R:I

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->T:Z

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/g;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->T:Z

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

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

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

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iput v7, v1, Landroid/graphics/RectF;->top:F

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public G()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->O:Lcom/android/gallery3d/filtershow/filters/e0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->c(Landroid/graphics/Matrix;Landroid/graphics/Matrix;II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->q()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->k()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/g;->j(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->r()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/g;->k(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->P:Lcom/android/gallery3d/filtershow/editors/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->O:Lcom/android/gallery3d/filtershow/filters/e0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->T:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->H()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->g(FF)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v2, v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->o(FF)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/g;->j(FF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    invoke-virtual {v1, v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/g;->k(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->T:Z

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/g;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->G()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->R:I

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

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/g;->f(FF)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->R:I

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->R:I

    if-ne v1, v2, :cond_4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->R:I

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->S:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/g;->l(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->R:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v0, v2, v1, p1, v4}, Lcom/android/gallery3d/filtershow/imageshow/g;->b(IFFLcom/android/gallery3d/filtershow/imageshow/z;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->O:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/e0;)V

    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->U:Lcom/android/gallery3d/filtershow/imageshow/g;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/gallery3d/filtershow/imageshow/g;->a(FFLcom/android/gallery3d/filtershow/imageshow/z;)V

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->G()V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/w;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->P:Lcom/android/gallery3d/filtershow/editors/w;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->T:Z

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/e0;)V
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->O:Lcom/android/gallery3d/filtershow/filters/e0;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->Q:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->b(Lcom/android/gallery3d/filtershow/imageshow/z;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->G()V

    return-void
.end method
