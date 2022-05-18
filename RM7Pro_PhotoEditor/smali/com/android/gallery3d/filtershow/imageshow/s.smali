.class public Lcom/android/gallery3d/filtershow/imageshow/s;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/s$a;
    }
.end annotation


# instance fields
.field private O:Landroid/graphics/Paint;

.field private P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

.field private Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

.field private R:Z

.field S:Lcom/android/gallery3d/filtershow/filters/y;

.field T:Lcom/android/gallery3d/filtershow/editors/s;

.field private U:F

.field private V:F

.field private W:Z

.field private a0:Landroid/graphics/RectF;

.field private b0:Landroid/graphics/RectF;

.field private c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

.field private d0:I

.field private e0:F

.field private f0:F

.field private g0:F

.field private h0:F

.field private i0:F

.field private j0:F

.field private k0:F

.field private l0:F

.field private m0:Landroid/graphics/RectF;

.field private n0:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/s$a;->a:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->R:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->U:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->W:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->a0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->b0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->d0:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->i0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->j0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->k0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->l0:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/s;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private static G(FF)F
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

.method private H()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private I()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/s;->getCurrentTouchAngle()F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->U:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->n0:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->T:Lcom/android/gallery3d/filtershow/editors/s;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/s;->S(F)V

    :cond_1
    return-void
.end method

.method private J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/imageshow/h$b;)V
    .locals 7

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object p4, p4, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/imageshow/h;->v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z

    move-result p4

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    int-to-float p4, p3

    int-to-float v5, v0

    invoke-virtual {v3, v4, v4, p4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    int-to-float v5, p3

    invoke-virtual {v3, v4, v4, p4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    int-to-float p4, v0

    int-to-float p3, p3

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-static {p4, p3, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h;->z(FFFF)F

    move-result p3

    const p4, 0x3f666666    # 0.9f

    mul-float/2addr p3, p4

    invoke-static {v3, p3}, Lcom/android/gallery3d/filtershow/imageshow/h;->A(Landroid/graphics/RectF;F)V

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    sub-float/2addr v0, p4

    div-float/2addr v1, p3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    sub-float/2addr v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->reset()V

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, 0x40400000    # 3.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {p1, v3}, Lcom/android/gallery3d/filtershow/crop/b;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    sget-object p3, Lcom/android/gallery3d/filtershow/imageshow/s$a;->b:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    if-ne p2, p3, :cond_1

    invoke-static {p1, v3}, Lcom/android/gallery3d/filtershow/crop/b;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v3}, Lcom/android/gallery3d/filtershow/crop/b;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :goto_1
    return-void
.end method

.method public static K(Landroid/graphics/RectF;F)V
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

.method private L(I)V
    .locals 0

    return-void
.end method

.method private M()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->W:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->a0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->W:Z

    :cond_0
    return-void
.end method

.method private T(Landroid/graphics/Matrix;Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/RectF;IIII)V
    .locals 5

    int-to-float v0, p5

    int-to-float v1, p4

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

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

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->k0:F

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->l0:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    invoke-static {p3, v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->K(Landroid/graphics/RectF;F)V

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->i0:F

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->j0:F

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

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    invoke-static {p1, p4, p5}, Lcom/android/gallery3d/filtershow/filters/j;->k0(Landroid/graphics/RectF;II)V

    return-void
.end method

.method private getCurrentTouchAngle()F
    .locals 4

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->e0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->g0:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->f0:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->h0:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->h0:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->f0:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/s;->G(FF)F

    move-result v1

    invoke-static {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/s;->G(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method private getScale()F
    .locals 4

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->k0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->l0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->i0:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->j0:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    const v0, 0x7f060040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    const v0, 0x7f060042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    const v0, 0x7f060044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    return-void
.end method


# virtual methods
.method public N()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->l0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->m0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public P()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->R:Z

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/y;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->U:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->W:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->a0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->b0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->i0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->j0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->k0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->l0:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    return-void
.end method

.method public Q()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->setAngle(F)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    return v0
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->t0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public S()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->u0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->v()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/t;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/t;->q0(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->m()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/n;->u0(Z)V

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->d0:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->L(I)V

    return-void
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    return v0
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

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/y;->A0(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->m0:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/y;->x0(Landroid/graphics/RectF;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mocalrep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoEditor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public j()V
    .locals 3

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->v()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/t;->q0(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->m()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/n;->u0(Z)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->R:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iput v2, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-static {v3, v1, v2, v11, v12}, Lcom/android/gallery3d/filtershow/imageshow/h;->n(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->b0:Landroid/graphics/RectF;

    move-object v3, p0

    move v7, v1

    move v8, v2

    move v9, v11

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/android/gallery3d/filtershow/imageshow/s;->T(Landroid/graphics/Matrix;Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/RectF;IIII)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iput v4, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageRoatateStraighten onDraw Rotate: rotate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " straignten:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "matrix"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/s;->getScale()F

    move-result v8

    move v4, v1

    move v5, v2

    move v6, v11

    move v7, v12

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/h;->o(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIIIF)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/s;->M()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->O:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/s;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/imageshow/h$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/s;->H()V

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
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/s$a;->b:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    if-ne p1, v3, :cond_3

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->e0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->f0:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/s;->I()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/s$a;->b:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    if-ne p1, v3, :cond_3

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/s$a;->a:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->e0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->f0:F

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->W:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/s;->L(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/s$a;->a:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    if-ne p1, v3, :cond_3

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->g0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->h0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->e0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->f0:F

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/s$a;->b:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->Q:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->U:F

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public setAngle(F)V
    .locals 1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iput p1, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/y;->A0(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/s;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->T:Lcom/android/gallery3d/filtershow/editors/s;

    return-void
.end method

.method public setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/y;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/y;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->c0:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iput v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->R:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->S:Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->r0()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->V:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->U:F

    return-void
.end method

.method public setWheelAdjusterBar(Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/s;->n0:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;

    return-void
.end method
