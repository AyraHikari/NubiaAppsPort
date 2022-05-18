.class public Lcn/nubia/camera/composition/CompositionView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:[Lcn/nubia/algorithm/camera/CompositionInfo;

.field private b:Lcn/nubia/algorithm/camera/CompositionInfo;

.field private c:Lcn/nubia/algorithm/camera/CompositionInfo;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Z

.field private k:Landroid/animation/ValueAnimator;

.field private l:F

.field private m:Z

.field private n:Landroid/animation/ValueAnimator;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Canvas;

.field private q:F

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->a:[Lcn/nubia/algorithm/camera/CompositionInfo;

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->b:Lcn/nubia/algorithm/camera/CompositionInfo;

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->d:Landroid/graphics/Paint;

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->f:Landroid/graphics/Paint;

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcn/nubia/camera/composition/CompositionView;->j:Z

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcn/nubia/camera/composition/CompositionView;->l:F

    .line 59
    iput-boolean p2, p0, Lcn/nubia/camera/composition/CompositionView;->m:Z

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->n:Landroid/animation/ValueAnimator;

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->o:Landroid/graphics/Bitmap;

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    .line 66
    iput v0, p0, Lcn/nubia/camera/composition/CompositionView;->q:F

    .line 67
    iput-boolean p2, p0, Lcn/nubia/camera/composition/CompositionView;->r:Z

    .line 69
    iput-boolean p2, p0, Lcn/nubia/camera/composition/CompositionView;->s:Z

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->b()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/composition/CompositionView;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcn/nubia/camera/composition/CompositionView;->l:F

    return p1
.end method

.method private a(Landroid/graphics/Paint$Style;IFLandroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;
    .locals 2

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/composition/CompositionView;)Landroid/graphics/Paint;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    return-object p0
.end method

.method private a(II)V
    .locals 7

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    int-to-float p2, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, p2, v6

    int-to-float p1, p1

    iget-object v5, p0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move v2, v4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    div-float v4, p1, v6

    iget-object v6, p0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v2, v4

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(III)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 217
    rem-int/lit16 v3, v3, 0xb4

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40400000    # 3.0f

    if-nez v3, :cond_0

    .line 218
    iget-object v6, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    int-to-float v1, v1

    div-float v9, v1, v5

    const/4 v8, 0x0

    int-to-float v14, v2

    iget-object v11, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    move v7, v9

    move v10, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget-object v10, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    mul-float/2addr v1, v4

    div-float v13, v1, v5

    const/4 v12, 0x0

    iget-object v15, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v3, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    const/16 v17, 0x0

    int-to-float v2, v2

    div-float v20, v2, v5

    int-to-float v9, v1

    iget-object v1, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    move-object/from16 v16, v3

    move/from16 v18, v20

    move/from16 v19, v9

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 222
    iget-object v6, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    mul-float/2addr v2, v4

    div-float v10, v2, v5

    iget-object v11, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x427c0000    # 63.0f

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IFFI)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p5, 0x3

    if-eq p2, p5, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->getHeight()I

    move-result p5

    invoke-direct {p0, p2, p5}, Lcn/nubia/camera/composition/CompositionView;->b(II)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v0, p5}, Lcn/nubia/camera/composition/CompositionView;->a(III)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->getHeight()I

    move-result p5

    invoke-direct {p0, p2, p5}, Lcn/nubia/camera/composition/CompositionView;->a(II)V

    .line 207
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    iget p5, p0, Lcn/nubia/camera/composition/CompositionView;->q:F

    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    iget-object p2, p0, Lcn/nubia/camera/composition/CompositionView;->o:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/composition/CompositionView;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcn/nubia/camera/composition/CompositionView;->q:F

    return p1
.end method

.method private b()V
    .locals 5

    .line 132
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const v1, -0x7f000100

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Paint$Style;IFLandroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->d:Landroid/graphics/Paint;

    .line 133
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const v4, -0x7f000001

    invoke-direct {p0, v0, v4, v2, v3}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Paint$Style;IFLandroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    .line 134
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Paint$Style;IFLandroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->f:Landroid/graphics/Paint;

    .line 135
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Paint$Style;IFLandroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    .line 136
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Paint$Style;IFLandroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    return-void
.end method

.method private b(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 227
    iget-object v1, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    move/from16 v2, p2

    int-to-float v8, v2

    const/high16 v9, 0x40400000    # 3.0f

    div-float v5, v8, v9

    move/from16 v2, p1

    int-to-float v7, v2

    iget-object v6, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v3, v5

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    iget-object v10, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v8, v1

    div-float v14, v2, v9

    iget-object v15, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move v12, v14

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget-object v2, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    div-float v5, v7, v9

    iget-object v10, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move v3, v5

    move v6, v8

    move v11, v7

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget-object v2, v0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    mul-float v7, v11, v1

    div-float v5, v7, v9

    iget-object v7, v0, Lcn/nubia/camera/composition/CompositionView;->g:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x427c0000    # 63.0f

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget v0, p0, Lcn/nubia/camera/composition/CompositionView;->l:F

    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x427c0000    # 63.0f

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c()Z
    .locals 11

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->b:Lcn/nubia/algorithm/camera/CompositionInfo;

    .line 150
    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->a:[Lcn/nubia/algorithm/camera/CompositionInfo;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 152
    iget v5, v4, Lcn/nubia/algorithm/camera/CompositionInfo;->type:I

    if-nez v5, :cond_0

    .line 153
    iput-object v4, p0, Lcn/nubia/camera/composition/CompositionView;->b:Lcn/nubia/algorithm/camera/CompositionInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->b:Lcn/nubia/algorithm/camera/CompositionInfo;

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->a:[Lcn/nubia/algorithm/camera/CompositionInfo;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 160
    iget v5, v4, Lcn/nubia/algorithm/camera/CompositionInfo;->type:I

    if-eqz v5, :cond_2

    .line 161
    iget-object v5, p0, Lcn/nubia/camera/composition/CompositionView;->b:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v5, v5, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    iget v6, v4, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v9, p0, Lcn/nubia/camera/composition/CompositionView;->b:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v9, v9, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    iget v10, v4, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v7, 0x403f800000000000L    # 31.5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 163
    iput-object v4, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private d()V
    .locals 5

    .line 234
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->j:Z

    .line 236
    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    const v1, -0x7f000001

    .line 237
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    add-int/lit8 v1, v1, -0x19

    aput v1, v3, v0

    .line 238
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1f4

    .line 239
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/camera/composition/CompositionView$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/composition/CompositionView$1;-><init>(Lcn/nubia/camera/composition/CompositionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->j:Z

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const v0, -0x7f000001

    .line 260
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->m:Z

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 268
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/camera/composition/CompositionView$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/composition/CompositionView$2;-><init>(Lcn/nubia/camera/composition/CompositionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x422ccccd    # 43.2f
        0x42580000    # 54.0f
    .end array-data
.end method

.method private g()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->m:Z

    .line 286
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lcn/nubia/camera/composition/CompositionView;->l:F

    return-void
.end method

.method private h()V
    .locals 5

    .line 292
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->r:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->r:Z

    .line 294
    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->n:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 295
    iget-object v3, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v2, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/camera/composition/CompositionView$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/composition/CompositionView$3;-><init>(Lcn/nubia/camera/composition/CompositionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 310
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->r:Z

    .line 312
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/composition/CompositionView;->q:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->s:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->a:[Lcn/nubia/algorithm/camera/CompositionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 101
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcn/nubia/camera/composition/CompositionView;->s:Z

    .line 103
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->e()V

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v0, v0, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    iget-object v1, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v1, v1, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/composition/CompositionView;->c(Landroid/graphics/Canvas;FF)V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v3, v0, Lcn/nubia/algorithm/camera/CompositionInfo;->type:I

    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v4, v0, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v5, v0, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->c:Lcn/nubia/algorithm/camera/CompositionInfo;

    iget v6, v0, Lcn/nubia/algorithm/camera/CompositionInfo;->deviceOrientation:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Canvas;IFFI)V

    .line 107
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->f()V

    .line 108
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->h()V

    goto :goto_2

    .line 110
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/camera/composition/CompositionView;->s:Z

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->g()V

    .line 112
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->i()V

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView;->a:[Lcn/nubia/algorithm/camera/CompositionInfo;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 115
    iget v4, v3, Lcn/nubia/algorithm/camera/CompositionInfo;->type:I

    if-nez v4, :cond_1

    .line 116
    iget v4, v3, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    iget v3, v3, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    invoke-direct {p0, p1, v4, v3}, Lcn/nubia/camera/composition/CompositionView;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    .line 118
    :cond_1
    iget v4, v3, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    iget v3, v3, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    invoke-direct {p0, p1, v4, v3}, Lcn/nubia/camera/composition/CompositionView;->b(Landroid/graphics/Canvas;FF)V

    .line 119
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->d()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/camera/composition/CompositionView;->s:Z

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->e()V

    .line 126
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->g()V

    .line 127
    invoke-direct {p0}, Lcn/nubia/camera/composition/CompositionView;->i()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 93
    iget-object p3, p0, Lcn/nubia/camera/composition/CompositionView;->h:Landroid/graphics/Paint;

    mul-int p4, p1, p1

    mul-int v0, p2, p2

    add-int/2addr p4, v0

    int-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p4, v0

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->o:Landroid/graphics/Bitmap;

    .line 95
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcn/nubia/camera/composition/CompositionView;->o:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->p:Landroid/graphics/Canvas;

    return-void
.end method

.method public setCompositionInfoArray([Lcn/nubia/algorithm/camera/CompositionInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView;->a:[Lcn/nubia/algorithm/camera/CompositionInfo;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/camera/composition/CompositionView;->postInvalidate()V

    return-void
.end method
