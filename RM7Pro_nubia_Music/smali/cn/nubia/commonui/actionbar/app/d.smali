.class abstract Lcn/nubia/commonui/actionbar/app/d;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# static fields
.field private static final b:F


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:Z

.field private final i:Landroid/graphics/Path;

.field private final j:I

.field private k:Z

.field private l:F

.field private m:F

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/commonui/actionbar/app/d;->b:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    .line 57
    iput-boolean v6, p0, Lcn/nubia/commonui/actionbar/app/d;->k:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle:[I

    sget v3, Lcn/nubia/commonui/R$attr;->drawerArrowStyle:I

    sget v4, Lcn/nubia/commonui/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    .line 70
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->j:I

    .line 77
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_barSize:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->e:F

    .line 79
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_topBottomBarArrowSize:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->d:F

    .line 81
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_thickness:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->c:F

    .line 83
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->g:F

    .line 85
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/d;->h:Z

    .line 86
    sget v1, Lcn/nubia/commonui/R$styleable;->DrawerArrowToggle_middleBarArrowSize:I

    .line 87
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->f:F

    .line 88
    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/app/d;->c:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/commonui/actionbar/app/d;->g:F

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 89
    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->n:F

    .line 90
    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->n:F

    float-to-double v2, v1

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->c:F

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->g:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/d;->n:F

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/d;->c:F

    div-float/2addr v0, v8

    float-to-double v0, v0

    sget v2, Lcn/nubia/commonui/actionbar/app/d;->b:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/app/d;->m:F

    .line 99
    return-void
.end method

.method private static a(FFF)F
    .locals 1

    .prologue
    .line 205
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/app/d;->k:Z

    .line 108
    return-void
.end method

.method abstract a()Z
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    .line 198
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/d;->invalidateSelf()V

    .line 199
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 112
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 113
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/d;->a()Z

    move-result v3

    .line 115
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/d;->e:F

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->d:F

    iget v4, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    invoke-static {v0, v1, v4}, Lcn/nubia/commonui/actionbar/app/d;->a(FFF)F

    move-result v4

    .line 116
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/d;->e:F

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->f:F

    iget v5, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    invoke-static {v0, v1, v5}, Lcn/nubia/commonui/actionbar/app/d;->a(FFF)F

    move-result v5

    .line 118
    const/4 v0, 0x0

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/d;->m:F

    iget v6, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    invoke-static {v0, v1, v6}, Lcn/nubia/commonui/actionbar/app/d;->a(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v6, v0

    .line 120
    const/4 v0, 0x0

    sget v1, Lcn/nubia/commonui/actionbar/app/d;->b:F

    iget v7, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    invoke-static {v0, v1, v7}, Lcn/nubia/commonui/actionbar/app/d;->a(FFF)F

    move-result v7

    .line 123
    if-eqz v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v3, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    :goto_1
    iget v8, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    invoke-static {v1, v0, v8}, Lcn/nubia/commonui/actionbar/app/d;->a(FFF)F

    move-result v1

    .line 124
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v0, v8

    .line 125
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v4, v8

    .line 128
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 129
    iget v7, p0, Lcn/nubia/commonui/actionbar/app/d;->g:F

    iget v8, p0, Lcn/nubia/commonui/actionbar/app/d;->c:F

    add-float/2addr v7, v8

    iget v8, p0, Lcn/nubia/commonui/actionbar/app/d;->m:F

    neg-float v8, v8

    iget v9, p0, Lcn/nubia/commonui/actionbar/app/d;->l:F

    invoke-static {v7, v8, v9}, Lcn/nubia/commonui/actionbar/app/d;->a(FFF)F

    move-result v7

    .line 132
    neg-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 134
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    add-float v10, v8, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 138
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 139
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 142
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    neg-float v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/commonui/actionbar/app/d;->n:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/d;->h:Z

    if-eqz v0, :cond_4

    .line 152
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/d;->k:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 156
    :cond_0
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    return-void

    .line 123
    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 152
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 153
    :cond_4
    if-eqz v3, :cond_0

    .line 154
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/d;->j:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/d;->j:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, -0x3

    return v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 175
    return-void
.end method
