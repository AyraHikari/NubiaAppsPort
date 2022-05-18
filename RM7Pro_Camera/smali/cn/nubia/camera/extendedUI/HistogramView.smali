.class public Lcn/nubia/camera/extendedUI/HistogramView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:[I

.field private i:D

.field private j:Z

.field private k:I

.field private l:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->b:Landroid/graphics/Paint;

    const/16 p1, 0xff

    const/16 p2, 0xcc

    .line 18
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->c:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 19
    iput p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->d:F

    const/16 p1, 0x300

    new-array p1, p1, [I

    .line 24
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const-wide/16 p1, 0x0

    .line 25
    iput-wide p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->i:D

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->j:Z

    const/4 p1, -0x1

    .line 130
    iput p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->k:I

    .line 31
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 32
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(FFFD)F
    .locals 4

    .line 121
    iget-wide v0, p0, Lcn/nubia/camera/extendedUI/HistogramView;->i:D

    cmpl-double p3, v0, p4

    if-eqz p3, :cond_0

    .line 123
    iget-wide v0, p0, Lcn/nubia/camera/extendedUI/HistogramView;->l:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p2, p1

    float-to-double p1, p2

    div-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->d:F

    .line 124
    iput-wide p4, p0, Lcn/nubia/camera/extendedUI/HistogramView;->i:D

    .line 127
    :cond_0
    iget p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->d:F

    return p1
.end method

.method private a(Landroid/graphics/Canvas;[IIIFFF)V
    .locals 8

    .line 87
    iget-object p2, p0, Lcn/nubia/camera/extendedUI/HistogramView;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x43800000    # 256.0f

    div-float p2, p5, p2

    .line 93
    iget-wide v4, p0, Lcn/nubia/camera/extendedUI/HistogramView;->l:D

    move-object v0, p0

    move v1, p2

    move v2, p5

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/extendedUI/HistogramView;->a(FFFD)F

    const/4 p4, 0x0

    :goto_0
    const/16 p5, 0x100

    if-ge p4, p5, :cond_1

    .line 95
    iget-object p5, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    add-int v0, p3, p4

    aget p5, p5, v0

    int-to-float p5, p5

    iget v0, p0, Lcn/nubia/camera/extendedUI/HistogramView;->d:F

    div-float/2addr p5, v0

    mul-float/2addr p5, p6

    iput p5, p0, Lcn/nubia/camera/extendedUI/HistogramView;->g:F

    cmpl-float p5, p5, p6

    if-ltz p5, :cond_0

    .line 97
    iput p6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->g:F

    :cond_0
    add-int/lit8 p5, p4, 0x0

    add-int/lit8 v0, p5, 0x1

    int-to-float v0, v0

    const/4 v1, 0x0

    mul-float/2addr v1, v0

    int-to-float p5, p5

    mul-float/2addr p5, p2

    add-float/2addr v1, p5

    add-float v3, v1, p7

    add-float v4, p6, p7

    add-float v5, v3, p2

    .line 101
    iget p5, p0, Lcn/nubia/camera/extendedUI/HistogramView;->g:F

    sub-float v6, v4, p5

    .line 102
    iget-object v7, p0, Lcn/nubia/camera/extendedUI/HistogramView;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a([IID)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput p2, p0, Lcn/nubia/camera/extendedUI/HistogramView;->k:I

    .line 141
    iput-wide p3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->l:D

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->j:Z

    .line 144
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HistogramView;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 45
    iget-boolean v1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->j:Z

    if-nez v1, :cond_0

    const-string v0, "HistogramView"

    const-string v1, "returning as histogram is off "

    .line 46
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    iget v1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->f:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v9, v1, v2

    .line 52
    iget v1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->e:F

    sub-float v10, v1, v2

    const/high16 v7, 0x40a00000    # 5.0f

    div-float v8, v10, v7

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v1, 0x1c

    .line 57
    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 58
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/camera/extendedUI/HistogramView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40a00000    # 5.0f

    add-float v11, v10, v7

    const/high16 v5, 0x40a00000    # 5.0f

    .line 59
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v12, v9, v7

    .line 60
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move v3, v12

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 61
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move v2, v11

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v4, v8, v7

    .line 63
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v8

    add-float v4, v1, v7

    .line 64
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v8

    add-float v4, v1, v7

    .line 65
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v8, v1

    add-float v4, v8, v7

    .line 66
    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HistogramView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    iget-object v11, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    monitor-enter v11

    .line 69
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/extendedUI/HistogramView;->k:I

    if-nez v1, :cond_1

    .line 70
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 72
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/4 v4, 0x0

    const/high16 v5, -0x10000

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    .line 73
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/16 v4, 0x100

    const v5, -0xff0100

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    .line 74
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/16 v4, 0x200

    const v5, -0xffff01

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 76
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/4 v4, 0x0

    const/high16 v5, -0x10000

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 78
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/16 v4, 0x100

    const v5, -0xff0100

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 80
    iget-object v3, p0, Lcn/nubia/camera/extendedUI/HistogramView;->h:[I

    const/16 v4, 0x200

    const v5, -0xffff01

    const/high16 v8, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/extendedUI/HistogramView;->a(Landroid/graphics/Canvas;[IIIFFF)V

    .line 82
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    int-to-float v0, p1

    .line 38
    iput v0, p0, Lcn/nubia/camera/extendedUI/HistogramView;->e:F

    int-to-float v0, p2

    .line 39
    iput v0, p0, Lcn/nubia/camera/extendedUI/HistogramView;->f:F

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
