.class public Lcn/nubia/camera/zoom/arc/ArcZoomView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/zoom/arc/ArcZoomView$c;,
        Lcn/nubia/camera/zoom/arc/ArcZoomView$b;,
        Lcn/nubia/camera/zoom/arc/ArcZoomView$a;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

.field private B:F

.field private C:Landroid/view/animation/AccelerateInterpolator;

.field private D:[I

.field private E:Lcn/nubia/camera/d/a;

.field private F:Lcn/nubia/camera/af/a;

.field private G:Z

.field private H:F

.field private I:D

.field private J:Z

.field private K:Lcn/nubia/camera/zoom/arc/ArcZoomView$b;

.field private L:Lcn/nubia/camera/zoom/arc/ArcZoomView$c;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

.field private p:I

.field private q:I

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/RectF;

.field private t:I

.field private u:I

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 37
    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->f:F

    .line 53
    new-instance v0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v1, v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;-><init>(Lcn/nubia/camera/zoom/arc/ArcZoomView;FIF)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    const/16 v0, 0x1e

    .line 58
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->q:I

    .line 63
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->t:I

    const/16 v0, 0x32

    .line 64
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->u:I

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    const-wide/16 v3, -0x1

    .line 72
    iput-wide v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->w:J

    .line 73
    iput-wide v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->x:J

    const-wide/16 v3, 0x64

    .line 74
    iput-wide v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->y:J

    const-wide/16 v3, 0xc8

    .line 75
    iput-wide v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->z:J

    .line 77
    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    .line 78
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->C:Landroid/view/animation/AccelerateInterpolator;

    const/4 p2, 0x2

    new-array v1, p2, [I

    .line 79
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->D:[I

    .line 83
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->G:Z

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 451
    iput-wide v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    .line 494
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->J:Z

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p2, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 88
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v0, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070051

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->h:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070052

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07004f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->p:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070050

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->e:F

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->j:I

    .line 99
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->G:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a(FF)D
    .locals 9

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 469
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p2, v0

    .line 470
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    const/4 v4, 0x0

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    cmpg-float p1, p2, v4

    if-gez p1, :cond_0

    add-double/2addr v0, v2

    goto :goto_2

    :cond_0
    :goto_0
    sub-double v0, v2, v0

    goto :goto_2

    :cond_1
    cmpl-float p1, p2, v4

    const-wide v2, 0x4076800000000000L    # 360.0

    if-lez p1, :cond_2

    .line 475
    iget-wide v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    const-wide v7, 0x4070e00000000000L    # 270.0

    cmpl-double p1, v5, v7

    if-lez p1, :cond_2

    cmpg-double p1, v5, v2

    if-gtz p1, :cond_2

    sub-double/2addr v5, v2

    .line 476
    iput-wide v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    goto :goto_1

    :cond_2
    cmpg-float p1, p2, v4

    if-gez p1, :cond_3

    .line 477
    iget-wide v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    const-wide v7, 0x4056800000000000L    # 90.0

    cmpg-double p1, v5, v7

    if-gez p1, :cond_3

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-ltz p1, :cond_3

    add-double/2addr v5, v2

    .line 478
    iput-wide v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    :cond_3
    :goto_1
    cmpg-float p1, p2, v4

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-wide v0
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;FLandroid/graphics/RectF;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    .line 372
    iget v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->h:I

    int-to-float v1, v1

    sub-float v8, p2, v1

    .line 373
    iget v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    int-to-float v1, v1

    sub-float v9, p2, v1

    .line 375
    new-instance v10, Landroid/graphics/RectF;

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v10, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 385
    iget-object v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 387
    iget-object v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    iget v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    const/high16 v12, 0x42980000    # 76.0f

    mul-float/2addr v2, v12

    float-to-int v2, v2

    const/16 v3, 0xcc

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->m:F

    iget v4, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->k:F

    iget-object v6, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 391
    iget-object v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    iget v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    mul-float/2addr v2, v12

    float-to-int v2, v2

    const/4 v12, 0x0

    invoke-static {v2, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->m:F

    iget v4, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->k:F

    iget-object v6, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 395
    iget v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->m:F

    :goto_0
    iget v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->n:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_5

    .line 396
    iget v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->l:F

    sub-float/2addr v2, v1

    iget-object v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    .line 397
    invoke-direct {v0, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c(F)I

    move-result v6

    if-ltz v6, :cond_4

    .line 399
    iget-object v7, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 400
    iget-object v7, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    float-to-double v13, v7

    float-to-double v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v4

    sub-double/2addr v13, v15

    double-to-float v7, v13

    .line 401
    iget-object v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v4, v15

    sub-double/2addr v13, v4

    double-to-float v4, v13

    float-to-double v13, v7

    .line 402
    iget v5, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->j:I

    int-to-double v11, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v11, v15

    add-double/2addr v13, v11

    double-to-float v5, v13

    float-to-double v11, v4

    .line 403
    iget v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->j:I

    int-to-double v13, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v13, v2

    add-double/2addr v11, v13

    double-to-float v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    .line 406
    iget-object v11, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v2

    iget v12, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->e:F

    cmpg-float v11, v11, v12

    const/4 v12, 0x0

    if-gtz v11, :cond_0

    .line 407
    iget-object v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    iget v11, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->e:F

    div-float/2addr v3, v11

    cmpg-float v11, v3, v12

    if-gez v11, :cond_0

    move v3, v12

    .line 412
    :cond_0
    iget-object v11, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 413
    invoke-direct {v0, v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(F)Z

    move-result v11

    const/16 v12, 0xff

    if-eqz v11, :cond_1

    .line 416
    iget-object v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 417
    iget-object v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/high16 v14, 0x436f0000    # 239.0f

    mul-float/2addr v14, v3

    iget v15, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v14, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 419
    :cond_1
    iget-object v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/high16 v14, 0x40200000    # 2.5f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 420
    iget-object v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/high16 v14, 0x42de0000    # 111.0f

    mul-float/2addr v14, v3

    iget v15, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v14, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    :goto_1
    iget-object v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v7

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    move-object/from16 v20, v13

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_3

    .line 429
    iget-object v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    iget v4, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    iget-object v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 431
    iget-object v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    iget v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->t:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 433
    rem-int/lit8 v2, v2, 0xa

    const-string v3, "X"

    if-nez v2, :cond_2

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 436
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v12, v2

    .line 438
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 439
    iget-object v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v12, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 440
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    float-to-double v6, v9

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v2, v2

    .line 441
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 443
    iget-object v3, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a()F

    move-result v3

    sub-float v3, v1, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    invoke-virtual {v13, v10, v3, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 444
    iget-object v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_4

    :cond_4
    move v5, v12

    move v2, v11

    :goto_4
    add-float/2addr v1, v2

    move v11, v2

    move v12, v5

    goto/16 :goto_0

    .line 448
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float v2, v0, v1

    rem-float/2addr v2, v1

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    const-string v2, "X"

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 347
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 350
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->q:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(F)Z
    .locals 2

    .line 578
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/ArcZoomView;F)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(F)Z

    move-result p0

    return p0
.end method

.method private b(F)Lcn/nubia/camera/zoom/arc/ArcZoomView$a;
    .locals 4

    .line 588
    new-instance v0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;-><init>(Lcn/nubia/camera/zoom/arc/ArcZoomView;)V

    const/4 v1, 0x0

    .line 589
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 590
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 591
    invoke-static {v0, v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F

    .line 592
    invoke-static {v0, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;I)I

    .line 593
    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    .line 595
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    .line 596
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F

    .line 597
    invoke-static {v0, v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;I)I

    .line 598
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 358
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 359
    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->i:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    const/high16 v1, 0x41c80000    # 25.0f

    add-float/2addr p2, v1

    .line 360
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 361
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 364
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->G:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/arc/ArcZoomView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->f:F

    return p0
.end method

.method private c(F)I
    .locals 2

    .line 608
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->l:F

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(FZ)V
    .locals 3

    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result p2

    const-string v0, "ArcZoomView"

    if-nez p2, :cond_1

    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(F)Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    move-result-object p1

    .line 196
    new-instance p2, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-direct {p2, p0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;-><init>(Lcn/nubia/camera/zoom/arc/ArcZoomView;Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)V

    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->A:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    .line 197
    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)I

    move-result p2

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr p2, v1

    iget-wide v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->z:J

    long-to-float v1, v1

    div-float/2addr p2, v1

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->H:F

    const/4 p2, 0x3

    .line 198
    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->w:J

    .line 200
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->x:J

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSwitchAngleOffsetStep: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->H:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "centerZoom: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 202
    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mCenterZoom: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {p2}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCenterZoom return. visibility: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(F)Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    const/4 p1, 0x0

    .line 205
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->H:F

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->invalidate()V

    :cond_3
    return-void
.end method

.method public a(Lcn/nubia/camera/d/a;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->E:Lcn/nubia/camera/d/a;

    .line 104
    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->F:Lcn/nubia/camera/af/a;

    .line 107
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne p2, p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 108
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->f:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 110
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->f:F

    :goto_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    .line 116
    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 120
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 144
    invoke-virtual {p0, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getLocationInWindow([I)V

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 124
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 496
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->isClickable()Z

    move-result v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 497
    iget-wide v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    cmpl-double p1, v5, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 498
    :goto_0
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    return v3

    .line 502
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->D:[I

    aget v5, v5, v4

    int-to-float v5, v5

    sub-float/2addr v0, v5

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->D:[I

    aget v6, v6, v3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v6, 0x0

    if-eq p1, v3, :cond_b

    const/4 v7, 0x2

    if-eq p1, v7, :cond_2

    goto :goto_1

    .line 516
    :cond_2
    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    cmpl-double p1, v7, v1

    if-nez p1, :cond_4

    .line 517
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 519
    invoke-direct {p0, v0, v5}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FF)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    .line 520
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 521
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1, v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F

    .line 522
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1, v4}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;Z)Z

    goto/16 :goto_5

    :cond_3
    :goto_1
    move v3, v4

    goto/16 :goto_5

    .line 527
    :cond_4
    invoke-direct {p0, v0, v5}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FF)D

    move-result-wide v1

    .line 528
    iget-wide v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    sub-double/2addr v6, v1

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "angle: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, "; lastAngle: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v8, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "ArcZoomView"

    invoke-static {v8, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    const-wide/16 v1, 0x0

    cmpl-double p1, v6, v1

    if-nez p1, :cond_5

    goto/16 :goto_5

    .line 535
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_7

    .line 536
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float p1, v0, p1

    iget-object v9, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v0, v9

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, v5, v0

    iget-object v9, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sub-float/2addr v5, v9

    mul-float/2addr v0, v5

    add-float/2addr p1, v0

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    .line 537
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v0, v5

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v0, v5

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float/2addr v5, v11

    mul-float/2addr v0, v5

    add-float/2addr p1, v0

    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    cmpl-double p1, v9, v1

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v1, v9

    .line 541
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "distanceScale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; distance: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F

    move-result p1

    .line 544
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    mul-double/2addr v6, v1

    invoke-virtual {v0, v6, v7, v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(DZ)Z

    .line 547
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->J:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 548
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1, v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;Z)Z

    goto :goto_3

    .line 550
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v0, v4}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;Z)Z

    .line 552
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    neg-float p1, p1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2, v4}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(DZ)Z

    .line 554
    :cond_9
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(F)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->J:Z

    .line 557
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skipKeep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->J:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mCenterZoom.mKeep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->K:Lcn/nubia/camera/zoom/arc/ArcZoomView$b;

    if-eqz p1, :cond_a

    .line 560
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b()F

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$b;->a(F)V

    .line 562
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->invalidate()V

    goto :goto_5

    .line 507
    :cond_b
    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    cmpl-double p1, v7, v1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    move v3, v4

    .line 508
    :goto_4
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    .line 509
    iput-boolean v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->J:Z

    .line 510
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 511
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1, v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F

    .line 512
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-static {p1, v4}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;Z)Z

    goto :goto_5

    .line 566
    :cond_d
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 567
    invoke-direct {p0, v0, v5}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FF)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->I:D

    :cond_e
    :goto_5
    return v3
.end method

.method public c()Z
    .locals 2

    .line 128
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 132
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .locals 2

    .line 136
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 2

    .line 151
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setVisibility(I)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->w:J

    const/4 v0, 0x1

    .line 154
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    .line 155
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->invalidate()V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->L:Lcn/nubia/camera/zoom/arc/ArcZoomView$c;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$c;->a()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 167
    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    if-nez v0, :cond_1

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->w:J

    const/4 v0, 0x2

    .line 169
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    .line 170
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->invalidate()V

    .line 172
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->L:Lcn/nubia/camera/zoom/arc/ArcZoomView$c;

    if-eqz v0, :cond_2

    .line 173
    invoke-interface {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$c;->b()V

    :cond_2
    return-void
.end method

.method public getScaleStep()F
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->G:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x3fc00000    # -3.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b()F

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 613
    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->E:Lcn/nubia/camera/d/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 262
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 270
    iget v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_3

    :cond_1
    iget-wide v8, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->w:J

    sub-long v10, v0, v8

    iget-wide v12, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->y:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    if-ne v2, v5, :cond_2

    .line 272
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->C:Landroid/view/animation/AccelerateInterpolator;

    sub-long v8, v0, v8

    long-to-float v3, v8

    long-to-float v5, v12

    div-float/2addr v3, v5

    sub-float v3, v7, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 273
    iget v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v3, v3

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    sub-float/2addr v7, v2

    .line 274
    iput v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    goto :goto_0

    .line 276
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->C:Landroid/view/animation/AccelerateInterpolator;

    sub-long v8, v0, v8

    long-to-float v3, v8

    long-to-float v5, v12

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 277
    iget v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v3, v3

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    sub-float/2addr v7, v2

    .line 278
    iput v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    .line 281
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 282
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v3

    iget-object v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 283
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v7, v3

    iget-object v8, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 284
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    add-float/2addr v8, v3

    invoke-direct {v2, v4, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_3
    if-ne v2, v3, :cond_5

    .line 287
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->K:Lcn/nubia/camera/zoom/arc/ArcZoomView$b;

    if-eqz v2, :cond_4

    .line 288
    invoke-interface {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView$b;->b()V

    .line 290
    :cond_4
    iget v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    .line 291
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 292
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v3

    iget-object v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 293
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v7, v3

    iget-object v8, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 294
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    add-float/2addr v8, v3

    invoke-direct {v2, v4, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    .line 295
    iput v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    .line 296
    iput v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    goto :goto_1

    :cond_5
    if-ne v2, v5, :cond_7

    .line 298
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->K:Lcn/nubia/camera/zoom/arc/ArcZoomView$b;

    if-eqz v2, :cond_6

    .line 299
    invoke-interface {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView$b;->a()V

    .line 301
    :cond_6
    iget v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v3, v2

    .line 302
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 303
    iput v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    .line 304
    iput v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    goto :goto_1

    .line 306
    :cond_7
    iget v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v3, v2

    .line 307
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 308
    iput v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->B:F

    .line 312
    :goto_1
    iget v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 313
    iget-wide v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->w:J

    sub-long v7, v0, v4

    iget-wide v9, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->z:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_8

    .line 314
    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    iget v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->H:F

    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->x:J

    sub-long v7, v0, v7

    long-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-double v7, v5

    invoke-virtual {v4, v7, v8, v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(DZ)Z

    .line 315
    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->x:J

    goto :goto_3

    .line 317
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->A:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    if-eqz v0, :cond_9

    .line 318
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->A:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    goto :goto_2

    .line 321
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->H:F

    add-long/2addr v4, v9

    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->x:J

    sub-long/2addr v4, v7

    long-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5, v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a(DZ)Z

    .line 323
    :goto_2
    iput v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    .line 325
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->K:Lcn/nubia/camera/zoom/arc/ArcZoomView$b;

    if-eqz v0, :cond_a

    .line 326
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->o:Lcn/nubia/camera/zoom/arc/ArcZoomView$a;

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b()F

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$b;->a(F)V

    .line 330
    :cond_a
    invoke-direct {p0, p1, v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 331
    invoke-direct {p0, p1, v3, v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Landroid/graphics/Canvas;FLandroid/graphics/RectF;)V

    .line 332
    invoke-direct {p0, p1, v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 334
    iget p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    if-eqz p1, :cond_b

    .line 335
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->postInvalidate()V

    :cond_b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 219
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getPaddingStart()I

    move-result v1

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getPaddingEnd()I

    move-result v2

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getPaddingTop()I

    move-result v3

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getPaddingBottom()I

    move-result v4

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    iget v4, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->p:I

    sub-int/2addr v5, v4

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    mul-int v2, v4, v4

    mul-int v6, v5, v5

    add-int/2addr v2, v6

    mul-int/lit8 v6, v5, 0x2

    .line 229
    div-int/2addr v2, v6

    iput v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-double v6, v4

    int-to-double v8, v2

    div-double/2addr v6, v8

    .line 231
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v2, v6

    iput v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->k:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v2, v7

    float-to-double v10, v2

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    mul-double/2addr v10, v8

    double-to-float v2, v10

    iput v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->k:F

    const/high16 v7, 0x43870000    # 270.0f

    .line 234
    iput v7, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->l:F

    div-float v8, v2, v6

    sub-float v8, v7, v8

    .line 235
    iput v8, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->m:F

    div-float/2addr v2, v6

    add-float/2addr v7, v2

    .line 236
    iput v7, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->n:F

    .line 238
    new-instance v2, Landroid/graphics/RectF;

    add-int v6, v1, v4

    iget v7, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    sub-int v8, v6, v7

    int-to-float v8, v8

    iget v9, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->p:I

    add-int v10, v3, v9

    int-to-float v10, v10

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int/2addr v9, v3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v9, v7

    int-to-float v7, v9

    invoke-direct {v2, v8, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    .line 245
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v2, v1

    iget v6, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->p:I

    add-int v7, v3, v6

    int-to-float v7, v7

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-direct {v14, v2, v7, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v14, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    .line 254
    iget-object v11, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->L:Lcn/nubia/camera/zoom/arc/ArcZoomView$c;

    if-eqz v11, :cond_0

    .line 255
    iget v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v12, v1

    iget v13, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->k:F

    iget-object v15, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    iget v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->n:F

    const/high16 v17, 0x40400000    # 3.0f

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Lcn/nubia/camera/zoom/arc/ArcZoomView$c;->a(FFLandroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    .line 257
    :cond_0
    iget-object v1, v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->D:[I

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getLocationInWindow([I)V

    return-void
.end method

.method public setListerer(Lcn/nubia/camera/zoom/arc/ArcZoomView$b;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->K:Lcn/nubia/camera/zoom/arc/ArcZoomView$b;

    return-void
.end method

.method public setViewChangeListener(Lcn/nubia/camera/zoom/arc/ArcZoomView$c;)V
    .locals 8

    .line 728
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->L:Lcn/nubia/camera/zoom/arc/ArcZoomView$c;

    if-eqz p1, :cond_0

    .line 730
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g:I

    int-to-float v2, v0

    iget v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->k:F

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->r:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->s:Landroid/graphics/RectF;

    iget v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->n:F

    const/high16 v7, 0x40400000    # 3.0f

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcn/nubia/camera/zoom/arc/ArcZoomView$c;->a(FFLandroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->v:I

    .line 183
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView;->L:Lcn/nubia/camera/zoom/arc/ArcZoomView$c;

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView$c;->a(I)V

    :cond_1
    return-void
.end method
