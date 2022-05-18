.class public Lcom/android/gallery3d/filtershow/imageshow/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static q:I = 0x50


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:[F

.field private f:[F

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->a:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->b:F

    const/high16 p1, 0x43480000    # 200.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->c:F

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->d:F

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->e:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->f:[F

    const/16 p1, 0x28

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->h:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->g:I

    return-void
.end method


# virtual methods
.method public a(FFLcom/android/gallery3d/filtershow/imageshow/z;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p2, v0, v1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->i:F

    aget p1, v0, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->j:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/z;->q()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->k:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/z;->k()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->l:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/z;->a()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->m:F

    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/z;->r()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->n:F

    return-void
.end method

.method public b(IFFLcom/android/gallery3d/filtershow/imageshow/z;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p3, v0, v1

    aget v2, v0, p2

    const/4 v3, 0x0

    aput v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-wide p1, 0x4046800000000000L    # 45.0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->m:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->n:F

    add-float/2addr p2, v0

    mul-float/2addr p2, p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->i:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->j:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->l:F

    sub-float/2addr v1, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    sub-float/2addr v0, p2

    invoke-interface {p4}, Lcom/android/gallery3d/filtershow/imageshow/z;->a()F

    move-result p2

    invoke-interface {p4}, Lcom/android/gallery3d/filtershow/imageshow/z;->r()F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, p1

    invoke-interface {p4}, Lcom/android/gallery3d/filtershow/imageshow/z;->q()F

    move-result p1

    sub-float/2addr p3, p1

    invoke-interface {p4}, Lcom/android/gallery3d/filtershow/imageshow/z;->k()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    add-float/2addr p1, p3

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p2, p1

    div-float/2addr p2, v3

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, p3

    mul-float p2, p1, v0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float p2, p1, p3

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p3

    mul-float/2addr p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p3

    mul-float v1, p1, v0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p3

    cmpl-float p1, v1, p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float v1, p1, p3

    :cond_3
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-interface {p4, p1, p1}, Lcom/android/gallery3d/filtershow/imageshow/z;->o(FF)V

    goto :goto_0

    :pswitch_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->i:F

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->k:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->j:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->l:F

    sub-float/2addr p2, v0

    sub-float/2addr p3, p1

    sub-float/2addr v2, p2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p3, p2

    if-gez v0, :cond_4

    move p3, p2

    :cond_4
    iget p2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, p2

    if-lez v0, :cond_5

    move p3, p2

    :cond_5
    iget p2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v2, p2

    if-gez v0, :cond_6

    move v2, p2

    :cond_6
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, v2, p1

    if-lez p2, :cond_7

    move v2, p1

    :cond_7
    invoke-interface {p4, p3, v2}, Lcom/android/gallery3d/filtershow/imageshow/z;->g(FF)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 12

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->a:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->b:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->c:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->d:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/a;->h(Landroid/graphics/Canvas;FFFF)V

    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->a:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->b:F

    iget v10, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->c:F

    iget v11, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->d:F

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/filtershow/imageshow/a;->d(Landroid/graphics/Canvas;FFFF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->a:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->b:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/a;->g(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;FFFF)V
    .locals 8

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->e:[F

    const/4 v0, 0x0

    aput p2, p1, v0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->f:[F

    aput p3, p1, v0

    const/4 p1, 0x1

    move v1, p1

    :goto_0
    const/16 v2, 0x168

    if-ge v0, v2, :cond_0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v2

    float-to-double v2, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float/2addr v2, p2

    float-to-double v6, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v6, v3

    double-to-float v3, v6

    add-float/2addr v3, p3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->e:[F

    aput v2, v4, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->f:[F

    aput v3, v2, v1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x2d

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(FF)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v0

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->e:[F

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget v5, v5, v3

    sub-float/2addr v5, p1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->f:[F

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
    sget v3, Lcom/android/gallery3d/filtershow/imageshow/a;->q:I

    mul-int/2addr v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return v4

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->e:[F

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget v2, v2, v0

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->f:[F

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

.method public f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V
    .locals 12

    move-object v0, p2

    move-object v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0x2d

    move v10, v1

    :goto_0
    const/16 v1, 0x169

    if-ge v10, v1, :cond_0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    int-to-double v3, v10

    mul-double/2addr v3, v1

    const-wide v1, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v1

    float-to-double v1, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-float v1, v1

    add-float v1, p4, v1

    float-to-double v5, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    double-to-float v2, v5

    add-float v2, p5, v2

    const/high16 v3, 0x41000000    # 8.0f

    sub-float v4, v1, v3

    sub-float v5, v2, v3

    add-float v6, v1, v3

    add-float v11, v2, v3

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v11

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x5a

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v1, p4, v8

    iput v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p5, v9

    iput v1, v0, Landroid/graphics/RectF;->top:F

    add-float v1, p4, v8

    iput v1, v0, Landroid/graphics/RectF;->right:F

    add-float v1, p5, v9

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public g(Landroid/graphics/Canvas;FF)V
    .locals 10

    const/high16 v0, 0x7fc00000    # Float.NaN

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x4

    new-array v6, v1, [I

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->g:I

    const/4 v3, 0x0

    aput v2, v6, v3

    const/4 v4, 0x1

    aput v2, v6, v4

    const/4 v2, 0x2

    const/high16 v4, 0x66000000

    aput v4, v6, v2

    const/4 v2, 0x3

    aput v3, v6, v2

    new-instance v9, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->h:I

    int-to-float v5, v2

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v9

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->h:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e9eb852    # 0.31f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method h(Landroid/graphics/Canvas;FFFF)V
    .locals 10

    const/high16 v0, 0x7fc00000    # Float.NaN

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    sub-float v1, p2, p4

    sub-float v2, p3, p5

    add-float v3, p2, p4

    add-float v4, p3, p5

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v4, v0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/a;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/a;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void
.end method

.method public i(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->a:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->b:F

    return-void
.end method

.method public j(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->c:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->d:F

    return-void
.end method

.method public k(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->o:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/a;->p:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method
