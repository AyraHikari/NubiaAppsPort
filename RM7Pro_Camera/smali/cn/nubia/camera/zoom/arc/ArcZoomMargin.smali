.class public Lcn/nubia/camera/zoom/arc/ArcZoomMargin;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/ArcZoomView$c;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:J

.field private d:J

.field private e:Landroid/view/animation/AccelerateInterpolator;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    const-wide/16 p1, -0x1

    .line 25
    iput-wide p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->c:J

    const-wide/16 p1, 0x64

    .line 26
    iput-wide p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->d:J

    .line 27
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->e:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLandroid/graphics/RectF;F)V
    .locals 8

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x42980000    # 76.0f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    const/4 v1, 0x0

    invoke-static {p4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget p4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    if-eqz p4, :cond_0

    .line 142
    iget p4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->g:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    float-to-double v1, p4

    iget-object p4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->j:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, v3

    div-float/2addr p4, p2

    float-to-double v3, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float p2, v1

    .line 143
    iget p4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->h:F

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->i:F

    sub-float/2addr p4, v1

    sub-float v4, p4, p2

    const/high16 p4, 0x43b40000    # 360.0f

    iget v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->g:F

    sub-float/2addr p4, v2

    mul-float/2addr v1, v0

    add-float/2addr p4, v1

    mul-float/2addr p2, v0

    add-float v5, p4, p2

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ArcZoomMargin"

    const-string v1, "show"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->setVisibility(I)V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->c:J

    .line 56
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(FFLandroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->f:F

    .line 42
    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->g:F

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->j:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p4, Landroid/graphics/RectF;->left:F

    iget v0, p4, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget v1, p4, Landroid/graphics/RectF;->right:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p3

    invoke-direct {p1, p2, v0, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 45
    iput p5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->h:F

    .line 46
    iput p6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->i:F

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ArcZoomMargin"

    const-string v1, "hide"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 67
    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 68
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->c:J

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    iget v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v2, v5, :cond_0

    if-ne v2, v3, :cond_2

    :cond_0
    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->c:J

    sub-long/2addr v0, v7

    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->d:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_2

    if-ne v2, v5, :cond_1

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->e:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->c:J

    sub-long/2addr v1, v7

    long-to-float v1, v1

    iget-wide v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->d:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 99
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->f:F

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->e:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->c:J

    sub-long/2addr v1, v7

    long-to-float v1, v1

    iget-wide v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->d:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 103
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->f:F

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    :goto_0
    div-float/2addr v2, v4

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    sub-float/2addr v6, v0

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 108
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 109
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v4, v1

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 110
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    if-ne v2, v3, :cond_3

    .line 112
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->f:F

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 113
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 114
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 115
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v1

    iget-object v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 116
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    add-float/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    .line 118
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    :goto_1
    move-object v0, v2

    goto :goto_2

    :cond_3
    if-ne v2, v5, :cond_4

    .line 120
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->f:F

    .line 121
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 123
    iput v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    goto :goto_1

    .line 125
    :cond_4
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->f:F

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->k:Landroid/graphics/RectF;

    .line 129
    :goto_2
    invoke-direct {p0, p1, v1, v0, v6}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->a(Landroid/graphics/Canvas;FLandroid/graphics/RectF;F)V

    .line 131
    iget p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->b:I

    if-eqz p1, :cond_5

    .line 132
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->invalidate()V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method
