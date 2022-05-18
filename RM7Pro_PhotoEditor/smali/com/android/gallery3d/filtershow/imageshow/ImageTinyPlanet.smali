.class public Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# instance fields
.field private O:F

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:Lcom/android/gallery3d/filtershow/filters/c0;

.field private W:Lcom/android/gallery3d/filtershow/editors/v;

.field private a0:Landroid/view/ScaleGestureDetector;

.field b0:Z

.field c0:Landroid/graphics/RectF;

.field d0:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->O:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->P:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->Q:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->R:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->S:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->T:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->U:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->a0:Landroid/view/ScaleGestureDetector;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->b0:Z

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->c0:Landroid/graphics/RectF;

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->d0:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->d0:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->a0:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic G(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/c0;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->V:Lcom/android/gallery3d/filtershow/filters/c0;

    return-object p0
.end method

.method static synthetic H(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/editors/v;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->W:Lcom/android/gallery3d/filtershow/editors/v;

    return-object p0
.end method

.method protected static I(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private J(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v3

    mul-float v5, v1, v2

    cmpl-float v6, v4, v5

    if-lez v6, :cond_0

    div-float/2addr v5, v3

    move v4, v1

    goto :goto_0

    :cond_0
    div-float/2addr v4, v2

    move v5, v0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->c0:Landroid/graphics/RectF;

    sub-float v3, v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    sub-float v4, v1, v4

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected getCurrentTouchAngle()F
    .locals 5

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->Q:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->O:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->R:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->P:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->S:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->P:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->T:F

    sub-float/2addr v3, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->R:F

    sub-float/2addr v2, v4

    invoke-static {v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->I(FF)F

    move-result v1

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->I(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->v()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->J(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->Q:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->R:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->S:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->T:F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->a0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->b0:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->V:Lcom/android/gallery3d/filtershow/filters/c0;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->U:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getCurrentTouchAngle()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/c0;->u0(F)V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->O:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->P:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->V:Lcom/android/gallery3d/filtershow/filters/c0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/c0;->s0()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->U:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->W:Lcom/android/gallery3d/filtershow/editors/v;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return v4
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/a;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/v;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->W:Lcom/android/gallery3d/filtershow/editors/v;

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->V:Lcom/android/gallery3d/filtershow/filters/c0;

    return-void
.end method
