.class public Lcn/nubia/camera/zoom/arc/VideoZoomView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/zoom/arc/VideoZoomView$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:Z

.field private C:F

.field private D:Z

.field private E:Z

.field private F:F

.field private G:Z

.field private H:Landroid/os/Handler;

.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Path;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/RectF;

.field private t:Lcn/nubia/camera/zoom/arc/VideoZoomView$a;

.field private u:Z

.field private v:J

.field private w:F

.field private x:J

.field private y:Landroid/view/animation/DecelerateInterpolator;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x96

    .line 35
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->f:I

    const/16 p1, 0x32

    .line 36
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->g:I

    .line 37
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->h:I

    const/16 p1, 0x2d

    .line 38
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->i:I

    const/16 p1, 0x258

    .line 39
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    const/4 p1, 0x6

    .line 40
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k:I

    const/16 p1, 0xa

    .line 41
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    const/16 p1, 0x23

    .line 42
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    const/16 p1, 0x1e

    .line 44
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->n:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    const/16 p2, 0x258

    const/4 v0, 0x2

    .line 47
    div-int/2addr p2, v0

    const/16 v1, 0x32

    div-int/2addr v1, v0

    sub-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->p:F

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    const-wide/16 v1, -0x1

    .line 54
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->v:J

    .line 55
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->w:F

    const-wide/16 v1, 0xc8

    .line 56
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->x:J

    .line 57
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->y:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->z:F

    .line 61
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->A:F

    .line 274
    iput-boolean p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 275
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    .line 276
    iput-boolean p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    .line 277
    iput-boolean p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    const/high16 v1, 0x40a00000    # 5.0f

    .line 278
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->F:F

    .line 373
    iput-boolean p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->G:Z

    .line 406
    new-instance v1, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;-><init>(Lcn/nubia/camera/zoom/arc/VideoZoomView;)V

    iput-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d:I

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-static {v2, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, p1, p1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private a(F)F
    .locals 2

    .line 347
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->p:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    neg-float p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/VideoZoomView;J)J
    .locals 0

    .line 25
    iput-wide p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->v:J

    return-wide p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v0

    iget v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v2

    iget v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 191
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v6, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    sub-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v8, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    add-int/2addr v8, v7

    int-to-float v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x0

    .line 193
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v3, 0x2e

    const/16 v4, 0x79

    invoke-static {v1, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 199
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    neg-int v0, v0

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v3, v1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v4, v1

    .line 201
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    add-float v5, v0, v1

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    .line 200
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/VideoZoomView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)F
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(F)F

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->v:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->v:J

    .line 357
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    iput v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->w:F

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    .line 359
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private b(F)V
    .locals 0

    .line 363
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->A:F

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/VideoZoomView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->x:J

    return-wide v0
.end method

.method private c()V
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->G:Z

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->t:Lcn/nubia/camera/zoom/arc/VideoZoomView$a;

    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0}, Lcn/nubia/camera/zoom/arc/VideoZoomView$a;->a()V

    :cond_1
    return-void
.end method

.method private c(F)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->t:Lcn/nubia/camera/zoom/arc/VideoZoomView$a;

    if-eqz v0, :cond_1

    .line 368
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->p:F

    div-float/2addr p1, v0

    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->t:Lcn/nubia/camera/zoom/arc/VideoZoomView$a;

    invoke-interface {v0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView$a;->a(F)V

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 10

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->h:I

    .line 220
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 221
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 222
    new-instance v3, Landroid/graphics/RectF;

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    add-float/2addr v4, v5

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget v6, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    int-to-float v7, v6

    sub-float/2addr v4, v7

    iget v7, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    sub-int/2addr v7, v0

    sub-int/2addr v7, v6

    int-to-float v6, v7

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    add-float/2addr v7, v8

    add-float/2addr v7, v5

    iget v8, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    int-to-float v9, v8

    add-float/2addr v7, v9

    iget v9, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    add-int/2addr v9, v0

    add-int/2addr v9, v8

    int-to-float v0, v9

    invoke-direct {v3, v4, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 222
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 227
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 228
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 238
    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->z:F

    invoke-direct {p0, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d(F)Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 240
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(F)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->w:F

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->y:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method private d(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float v1, p1, v0

    rem-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    const-string v1, "X"

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->G:Z

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->t:Lcn/nubia/camera/zoom/arc/VideoZoomView$a;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0}, Lcn/nubia/camera/zoom/arc/VideoZoomView$a;->b()V

    :cond_0
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 11

    .line 246
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    if-eqz v0, :cond_4

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 249
    iget-wide v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->v:J

    sub-long v7, v3, v5

    iget-wide v9, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->x:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-long/2addr v3, v5

    long-to-float v3, v3

    long-to-float v4, v9

    div-float/2addr v3, v4

    sub-float/2addr v8, v3

    mul-float/2addr v8, v7

    float-to-int v3, v8

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v3, 0xa

    if-gt v0, v3, :cond_3

    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7f

    div-int/lit16 v4, v4, 0xff

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v3, v1, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 266
    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->z:F

    invoke-direct {p0, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d(F)Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 269
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    iget v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->w:F

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/zoom/arc/VideoZoomView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    return p0
.end method

.method static synthetic k(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->q:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->A:F

    return p0
.end method

.method static synthetic m(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->r:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->p:F

    return p0
.end method

.method static synthetic o(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->s:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/zoom/arc/VideoZoomView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 281
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_1

    goto/16 :goto_5

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->F:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iput-boolean v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    .line 322
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    if-eqz v0, :cond_2

    .line 323
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c()V

    .line 327
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    if-eqz v0, :cond_5

    .line 328
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    if-nez v0, :cond_4

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->F:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    .line 332
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    if-eqz v0, :cond_5

    .line 333
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c()V

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(F)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    .line 335
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->invalidate()V

    .line 336
    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(F)V

    .line 337
    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(F)V

    .line 340
    :cond_5
    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_6

    goto/16 :goto_4

    :cond_6
    move v4, v5

    goto/16 :goto_4

    .line 302
    :cond_7
    iget-boolean p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_8

    .line 303
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b()V

    goto :goto_1

    .line 305
    :cond_8
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d()V

    .line 307
    :goto_1
    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_9

    goto :goto_2

    :cond_9
    move v4, v5

    .line 308
    :goto_2
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    .line 309
    iget-boolean p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    if-eqz p1, :cond_a

    .line 310
    iput-boolean v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    .line 311
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->invalidate()V

    .line 313
    :cond_a
    iput-boolean v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    .line 314
    iput-boolean v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    .line 315
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4

    .line 287
    :cond_b
    iput-boolean v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->G:Z

    .line 288
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->s:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->r:Landroid/graphics/RectF;

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->q:Landroid/graphics/RectF;

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 292
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    .line 293
    iput-boolean v4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    .line 294
    iput-boolean v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    .line 295
    iput v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    .line 296
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->q:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    .line 297
    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_d

    goto :goto_3

    :cond_d
    move v4, v5

    .line 298
    :goto_3
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_4
    move v5, v4

    :cond_e
    :goto_5
    return v5
.end method

.method public isFocused()Z
    .locals 2

    .line 89
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 171
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Landroid/graphics/Canvas;)V

    .line 175
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(Landroid/graphics/Canvas;)V

    .line 176
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(Landroid/graphics/Canvas;)V

    .line 177
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 118
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getHeight()I

    move-result p1

    iget p2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d:I

    sub-int/2addr p1, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    .line 121
    iget p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->i:I

    div-int/lit8 p1, p1, 0x2

    .line 123
    sget-boolean p2, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result p2

    iget p3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    .line 125
    iget p3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    .line 126
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result p5

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    iget p5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    add-int/2addr p4, p5

    add-int/2addr p4, p1

    .line 127
    iget p5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result p3

    iget p4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iget p3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 130
    iget p3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result p4

    iget p5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j:I

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    sub-int/2addr p4, p5

    sub-int/2addr p4, p1

    .line 132
    iget p5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    .line 135
    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    int-to-float v1, p2

    int-to-float v2, p3

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    neg-int v1, p1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    int-to-float v3, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 145
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c:Landroid/graphics/Path;

    sub-int v1, p4, p1

    int-to-float v3, v1

    int-to-float v4, p5

    .line 146
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c:Landroid/graphics/Path;

    iget v3, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->i:I

    int-to-float v3, v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 150
    new-instance v2, Landroid/graphics/RectF;

    .line 151
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->h:I

    int-to-float v5, v4

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    iget v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    int-to-float v6, v5

    sub-float/2addr v3, v6

    iget v6, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v6, v6

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v6, v4

    int-to-float v4, v5

    sub-float/2addr v6, v4

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->h:I

    int-to-float v7, v5

    mul-float/2addr v7, v0

    add-float/2addr v4, v7

    iget v7, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l:I

    int-to-float v8, v7

    add-float/2addr v4, v8

    iget v8, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e:I

    int-to-float v8, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v8, v5

    int-to-float v0, v7

    add-float/2addr v8, v0

    invoke-direct {v2, v3, v6, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->q:Landroid/graphics/RectF;

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-int v3, p5, p1

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-int/2addr p4, p1

    div-int/lit8 v4, v2, 0x2

    add-int/2addr p4, v4

    int-to-float p4, p4

    add-int/2addr p5, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p5, v2

    int-to-float p5, p5

    invoke-direct {v0, v1, v3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->r:Landroid/graphics/RectF;

    .line 161
    new-instance p4, Landroid/graphics/RectF;

    sub-int p5, p2, p1

    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p5, v1

    int-to-float p5, p5

    sub-int v1, p3, p1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/2addr p2, p1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr p2, v2

    int-to-float p2, p2

    add-int/2addr p3, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    int-to-float p1, p3

    invoke-direct {p4, p5, v1, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->s:Landroid/graphics/RectF;

    return-void
.end method

.method public setCenterText(F)V
    .locals 1

    .line 78
    iget v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->z:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 79
    iput p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->z:F

    .line 80
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setRatioChangeListener(Lcn/nubia/camera/zoom/arc/VideoZoomView$a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->t:Lcn/nubia/camera/zoom/arc/VideoZoomView$a;

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->u:Z

    const-wide/16 v1, -0x1

    .line 96
    iput-wide v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->v:J

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o:F

    .line 98
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->w:F

    .line 99
    iput v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->A:F

    .line 101
    iget v1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d()V

    .line 103
    iput v2, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->C:F

    .line 104
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    .line 105
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->E:Z

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->B:Z

    .line 107
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->D:Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView;->H:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
