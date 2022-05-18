.class public Lcom/android/gallery3d/filtershow/imageshow/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:[F

.field private g:[F

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Matrix;

.field q:Landroid/graphics/Paint;

.field r:Landroid/graphics/DashPathEffect;

.field private s:[I

.field private t:[I

.field private u:[F

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->b:F

    const/high16 v1, 0x43480000    # 200.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->c:F

    const/high16 v1, 0x43960000    # 300.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->d:F

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->e:I

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->f:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->g:[F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-direct {v2, v4, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->r:Landroid/graphics/DashPathEffect;

    const/4 v0, 0x4

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->u:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060066

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->h:I

    const v2, 0x7f060067

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->e:I

    const v2, 0x7f050044

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v4, 0x7f050045

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x7f050048

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f050049

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f05004b

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v8, 0x7f05004a

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    new-array v9, v0, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v5, 0x1

    aput v6, v9, v5

    aput v7, v9, v3

    aput v8, v9, v1

    iput-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->s:[I

    new-array v0, v0, [I

    aput v2, v0, v10

    aput v4, v0, v5

    aput v7, v0, v3

    aput v8, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->t:[I

    const v0, 0x7f050046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->v:I

    const v0, 0x7f050047

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->w:I

    return-void

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e9eb852    # 0.31f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(FFFF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->o:Landroid/graphics/Rect;

    add-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    float-to-int p1, p1

    add-float/2addr p2, p4

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public a(FFLcom/android/gallery3d/filtershow/imageshow/w;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->p:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p2, v0, v1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->i:F

    aget p1, v0, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->j:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/w;->t()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->k:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/w;->c()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->l:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/w;->e()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->m:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/w;->s()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->n:F

    return-void
.end method

.method public b(IFFLcom/android/gallery3d/filtershow/imageshow/w;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->p:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p3, v1, v2

    aget v3, v1, p2

    const/4 v4, 0x0

    aput v4, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, p2

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->p:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v1, v1, v2

    cmpl-float v1, v1, v4

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->i:F

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->j:F

    sub-float/2addr v3, v1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->k:F

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->l:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->m:F

    add-float/2addr v0, p3

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->n:F

    add-float/2addr v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/i;->c(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->k:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->l:F

    add-float/2addr p2, v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->m:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->n:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/i;->c(FFFF)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->k:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->l:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/w;->v(FF)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->k:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->l:F

    add-float/2addr p2, v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->m:F

    add-float/2addr v0, p3

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->n:F

    add-float/2addr v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/i;->c(FFFF)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->k:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->l:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/w;->v(FF)V

    :cond_5
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->m:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->n:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/w;->f(FF)V

    :goto_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 12

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->b:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->c:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->d:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/i;->i(Landroid/graphics/Canvas;FFFF)V

    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->b:F

    iget v10, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->c:F

    iget v11, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->d:F

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/filtershow/imageshow/i;->e(Landroid/graphics/Canvas;FFFF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->c:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->d:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/i;->k(Landroid/graphics/Canvas;FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->b:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/i;->k(Landroid/graphics/Canvas;FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->c:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->b:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->d:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/i;->k(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;FFFF)V
    .locals 3

    add-float p1, p2, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float v1, p3, p5

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->f:[F

    const/4 v2, 0x0

    aput p1, v0, v2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->g:[F

    aput v1, p1, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    aput p3, p1, v1

    const/4 p2, 0x2

    aput p4, v0, p2

    aput p5, p1, p2

    return-void
.end method

.method public f(FF)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v0

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->f:[F

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget v5, v5, v3

    sub-float/2addr v5, p1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->g:[F

    aget v6, v6, v3

    sub-float/2addr v6, p2

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    move v4, v3

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->e:I

    mul-int/2addr v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return v4

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->f:[F

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget v2, v2, v0

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->g:[F

    aget v3, v3, v0

    sub-float/2addr v3, p2

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/graphics/Canvas;FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->h:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->t:[I

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->u:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->h:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method i(Landroid/graphics/Canvas;FFFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->r:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/i;->j(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->r:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->q:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/i;->j(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    return-void
.end method

.method public j(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V
    .locals 13

    move-object v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v0, p3, p5

    sub-float v1, p4, p6

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x45000000    # 2048.0f

    div-float/2addr v3, v2

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    add-float v3, p3, v1

    sub-float v4, p4, v0

    sub-float v5, p3, v1

    add-float v6, p4, v0

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v8, p5, v1

    sub-float v9, p6, v0

    sub-float v10, p5, v1

    add-float v11, p6, v0

    move-object v7, p1

    move-object v12, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public k(Landroid/graphics/Canvas;FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->h:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->s:[I

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->u:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->h:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public l(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->a:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->b:F

    return-void
.end method

.method public m(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->c:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->d:F

    return-void
.end method

.method public n(Landroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->p:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/i;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public o(Z)V
    .locals 0

    return-void
.end method
