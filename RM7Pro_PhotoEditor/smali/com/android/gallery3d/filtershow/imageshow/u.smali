.class public Lcom/android/gallery3d/filtershow/imageshow/u;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/u$b;
    }
.end annotation


# instance fields
.field private O:F

.field private P:F

.field private Q:F

.field private R:Z

.field private S:Lcom/android/gallery3d/filtershow/filters/b0;

.field private T:Landroid/graphics/RectF;

.field private U:Landroid/graphics/RectF;

.field private V:Landroid/graphics/Path;

.field private W:Lcom/android/gallery3d/filtershow/imageshow/h$b;

.field private a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

.field private b0:Landroid/animation/ValueAnimator;

.field private c0:I

.field private d0:F

.field private e0:I

.field private f0:I

.field private g0:F

.field private h0:F

.field private i0:F

.field private j0:F

.field private k0:Landroid/graphics/RectF;

.field private final l0:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/imageshow/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->O:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->Q:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->R:Z

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/b0;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->S:Lcom/android/gallery3d/filtershow/filters/b0;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->T:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->U:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->V:Landroid/graphics/Path;

    new-instance p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->W:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/u$b;->a:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->b0:Landroid/animation/ValueAnimator;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->c0:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->d0:F

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->e0:I

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->f0:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->k0:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic G(Lcom/android/gallery3d/filtershow/imageshow/u;F)F
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->d0:F

    return p1
.end method

.method private static H(FF)F
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

.method private I()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/u;->getCurrentTouchAngle()F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->O:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    return-void
.end method

.method public static J(Landroid/graphics/RectF;F)V
    .locals 14

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    neg-float p1, p1

    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-double v6, p1

    mul-double v8, v6, v6

    mul-double v10, v4, v2

    mul-double v12, v6, v0

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    mul-double v10, v6, v4

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    div-double/2addr v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double v2, v0, v4

    div-double/2addr v2, v6

    sub-double/2addr v4, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v8

    double-to-float p1, v4

    sub-double/2addr v6, v0

    mul-double/2addr v6, v8

    double-to-float v4, v6

    float-to-double v5, p1

    add-double/2addr v5, v2

    double-to-float v2, v5

    float-to-double v5, v4

    add-double/2addr v5, v0

    double-to-float v0, v5

    invoke-virtual {p0, p1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private K(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->b0:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->b0:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->f0:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->b0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/u$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/u$a;-><init>(Lcom/android/gallery3d/filtershow/imageshow/u;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private L(Landroid/graphics/Matrix;Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/RectF;IIII)V
    .locals 5

    int-to-float v0, p5

    int-to-float v1, p4

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p2, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/h;->v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move v1, p4

    move v0, p5

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move v0, p4

    move v1, p5

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v3, p6

    int-to-float v4, p7

    invoke-static {v0, v1, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/h;->z(FFFF)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    invoke-static {p3, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->A(Landroid/graphics/RectF;F)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    invoke-static {p3, v0}, Lcom/android/gallery3d/filtershow/imageshow/u;->J(Landroid/graphics/RectF;F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v3, v1

    div-float/2addr v4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-virtual {p3, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    iput v2, p2, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-static {p2, p4, p5, p6, p7}, Lcom/android/gallery3d/filtershow/imageshow/h;->n(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->k0:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->k0:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->k0:Landroid/graphics/RectF;

    invoke-static {p1, p4, p5}, Lcom/android/gallery3d/filtershow/filters/j;->k0(Landroid/graphics/RectF;II)V

    return-void
.end method

.method private getCurrentTouchAngle()F
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->g0:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->i0:F

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->h0:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->j0:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-float/2addr v3, v0

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->j0:F

    sub-float/2addr v4, v2

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->h0:F

    sub-float/2addr v0, v2

    invoke-static {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/u;->H(FF)F

    move-result v2

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/u;->H(FF)F

    move-result v0

    sub-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->d0:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->e0:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/u;->K(I)V

    return-void
.end method

.method public getFinalRepresentation()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->S:Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->Q:F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->S:Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/b0;->l0()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->k0:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/filters/j;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->g0()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->W:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->S:Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->W:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    iput v2, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->W:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-static {v3, v7, v8, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->n(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    const/4 v13, -0x1

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->W:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->U:Landroid/graphics/RectF;

    move-object v3, p0

    move v9, v1

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/gallery3d/filtershow/imageshow/u;->L(Landroid/graphics/Matrix;Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/RectF;IIII)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->T:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->k0:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->S:Lcom/android/gallery3d/filtershow/filters/b0;

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/b0;->n0(F)V

    iput-boolean v12, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->R:Z

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->U:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/crop/b;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/u$b;->b:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->d0:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->U:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x10

    div-int/2addr v0, v3

    int-to-float v0, v0

    :goto_0
    if-ge v11, v3, :cond_4

    int-to-float v4, v11

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->c0:I

    int-to-float v6, v5

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->d0:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-nez v6, :cond_3

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    sget-object v8, Lcom/android/gallery3d/filtershow/imageshow/u$b;->b:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    if-ne v7, v8, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v7, 0x0

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v4

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    int-to-float v8, v1

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    move v7, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->V:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->V:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->U:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->V:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->l0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/u$b;->b:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    if-ne p1, v3, :cond_3

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->g0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->h0:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/u;->I()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/u$b;->b:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    if-ne p1, v3, :cond_3

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/u$b;->a:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->g0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->h0:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/u;->I()V

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->R:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/u;->K(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/u$b;->a:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    if-ne p1, v3, :cond_3

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->i0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->j0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->g0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->h0:F

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/u$b;->b:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->a0:Lcom/android/gallery3d/filtershow/imageshow/u$b;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->O:F

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/u;)V
    .locals 0

    return-void
.end method

.method public setFilterStraightenRepresentation(Lcom/android/gallery3d/filtershow/filters/b0;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/b0;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->S:Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/b0;->l0()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->P:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->O:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u;->Q:F

    return-void
.end method
