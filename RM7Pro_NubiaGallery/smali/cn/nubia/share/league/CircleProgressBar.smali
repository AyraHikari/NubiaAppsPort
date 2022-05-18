.class public Lcn/nubia/share/league/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/share/league/CircleProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final COLOR_FF04AFFA:Ljava/lang/String; = "#ff04affa"

.field private static final COLOR_FFD3D3D5:Ljava/lang/String; = "#ffe3e3e5"

.field private static final COLOR_FFEAEAEA:Ljava/lang/String; = "#ffeaeaea"

.field private static final COLOR_FFF2A670:Ljava/lang/String; = "#fff2a670"

.field private static final DEFAULT_LINE_COUNT:I = 0x2d

.field private static final DEFAULT_LINE_WIDTH:F = 4.0f

.field private static final DEFAULT_MAX:I = 0x64

.field private static final DEFAULT_PROGRESS_STROKE_WIDTH:F = 1.0f

.field private static final DEFAULT_START_DEGREE:I = -0x5a

.field private static final LINE:I = 0x0

.field private static final LINEAR:I = 0x0

.field private static final LINEAR_START_DEGREE:F = 90.0f

.field private static final MAX_DEGREE:F = 360.0f

.field private static final RADIAL:I = 0x1

.field private static final SOLID:I = 0x1

.field private static final SOLID_LINE:I = 0x2

.field private static final SWEEP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CircleProgressBar"


# instance fields
.field private mCap:Landroid/graphics/Paint$Cap;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawBackgroundOutsideProgress:Z

.field private mLineCount:I

.field private mLineWidth:F

.field private mMax:I

.field private mProgress:I

.field private mProgressBackgroundColor:I

.field private final mProgressBackgroundPaint:Landroid/graphics/Paint;

.field private mProgressEndColor:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRectF:Landroid/graphics/RectF;

.field private mProgressStartColor:I

.field private mProgressStrokeWidth:F

.field private mRadius:F

.field private mShader:I

.field private mStartDegree:I

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcn/nubia/share/league/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    .line 65
    iput p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mMax:I

    .line 103
    invoke-direct {p0}, Lcn/nubia/share/league/CircleProgressBar;->initFromAttributes()V

    .line 104
    invoke-direct {p0}, Lcn/nubia/share/league/CircleProgressBar;->initPaint()V

    return-void
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawLineProgress(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 218
    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mLineCount:I

    int-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 219
    iget v3, v0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    .line 220
    iget v4, v0, Lcn/nubia/share/league/CircleProgressBar;->mLineWidth:F

    sub-float v4, v3, v4

    .line 222
    iget v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    int-to-float v5, v5

    iget v6, v0, Lcn/nubia/share/league/CircleProgressBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v1, v1

    mul-float/2addr v5, v1

    float-to-int v1, v5

    const/4 v5, 0x0

    .line 224
    :goto_0
    iget v6, v0, Lcn/nubia/share/league/CircleProgressBar;->mLineCount:I

    if-ge v5, v6, :cond_3

    int-to-float v6, v5

    neg-float v7, v2

    mul-float/2addr v6, v7

    .line 227
    iget v7, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v4

    add-float/2addr v6, v7

    .line 228
    iget v7, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v4

    sub-float/2addr v7, v10

    .line 230
    iget v10, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v3

    add-float v16, v10, v11

    .line 231
    iget v10, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v8, v10, v8

    .line 233
    iget-boolean v9, v0, Lcn/nubia/share/league/CircleProgressBar;->mDrawBackgroundOutsideProgress:Z

    if-eqz v9, :cond_0

    if-lt v5, v1, :cond_1

    .line 235
    iget-object v15, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 238
    :cond_0
    iget-object v15, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_2

    .line 242
    iget-object v15, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 2

    .line 200
    iget v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcn/nubia/share/league/CircleProgressBar;->drawLineProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/share/league/CircleProgressBar;->drawSolidLineProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/share/league/CircleProgressBar;->drawSolidProgress(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawSolidLineProgress(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 259
    iget-boolean v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mDrawBackgroundOutsideProgress:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_0

    .line 260
    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, v0, Lcn/nubia/share/league/CircleProgressBar;->mMax:I

    int-to-float v3, v3

    div-float v6, v1, v3

    sub-float v7, v2, v6

    .line 262
    iget-object v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    iget-object v9, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v11, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x0

    iget-object v15, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 266
    :goto_0
    iget-object v4, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, v0, Lcn/nubia/share/league/CircleProgressBar;->mMax:I

    int-to-float v2, v2

    div-float v6, v1, v2

    const/4 v7, 0x0

    iget-object v8, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSolidProgress(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 248
    iget-boolean v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mDrawBackgroundOutsideProgress:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_0

    .line 249
    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, v0, Lcn/nubia/share/league/CircleProgressBar;->mMax:I

    int-to-float v3, v3

    div-float v6, v1, v3

    sub-float v7, v2, v6

    .line 251
    iget-object v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v8, 0x1

    iget-object v9, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v11, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x1

    iget-object v15, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 255
    :goto_0
    iget-object v4, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, v0, Lcn/nubia/share/league/CircleProgressBar;->mMax:I

    int-to-float v2, v2

    div-float v6, v1, v2

    const/4 v7, 0x1

    iget-object v8, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private initFromAttributes()V
    .locals 3

    const/16 v0, 0x2d

    .line 108
    iput v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mLineCount:I

    const/4 v0, 0x2

    .line 109
    iput v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mStyle:I

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mShader:I

    .line 112
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    .line 114
    invoke-virtual {p0}, Lcn/nubia/share/league/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcn/nubia/share/league/CircleProgressBar;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mLineWidth:F

    .line 115
    invoke-virtual {p0}, Lcn/nubia/share/league/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcn/nubia/share/league/CircleProgressBar;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStrokeWidth:F

    const-string v1, "#ff04affa"

    .line 117
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    .line 118
    iput v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressEndColor:I

    const-string v1, "#ffeaeaea"

    .line 120
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundColor:I

    const/16 v1, -0x5a

    .line 122
    iput v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mStartDegree:I

    .line 123
    iput-boolean v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mDrawBackgroundOutsideProgress:Z

    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/share/league/CircleProgressBar;->mStyle:I

    if-ne v3, v2, :cond_1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/share/league/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private updateProgressShader()V
    .locals 21

    move-object/from16 v0, p0

    .line 148
    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    iget v2, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressEndColor:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    .line 150
    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mShader:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_1

    .line 167
    :cond_0
    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStrokeWidth:F

    float-to-double v5, v1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    iget v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    float-to-double v7, v1

    div-double/2addr v5, v7

    double-to-float v1, v5

    .line 168
    iget-object v3, v0, Lcn/nubia/share/league/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v3, v5, :cond_1

    iget v3, v0, Lcn/nubia/share/league/CircleProgressBar;->mStyle:I

    if-ne v3, v4, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_1
    float-to-double v5, v1

    .line 169
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    :goto_0
    neg-double v5, v5

    double-to-float v1, v5

    .line 171
    new-instance v3, Landroid/graphics/SweepGradient;

    iget v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget v6, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    new-array v7, v4, [I

    const/4 v8, 0x0

    iget v9, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    aput v9, v7, v8

    iget v8, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressEndColor:I

    aput v8, v7, v2

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 173
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    iget v4, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    invoke-virtual {v2, v1, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 175
    invoke-virtual {v3, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 161
    :cond_2
    new-instance v3, Landroid/graphics/RadialGradient;

    iget v7, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget v8, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    iget v9, v0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    iget v10, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    iget v11, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressEndColor:I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 152
    :cond_3
    new-instance v3, Landroid/graphics/LinearGradient;

    iget-object v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v14, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v15, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    iget v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressEndColor:I

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v3

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 155
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 156
    iget v4, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget v5, v0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 157
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 182
    :goto_1
    iget-object v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 184
    :cond_4
    iget-object v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 185
    iget-object v1, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStartColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 191
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    iget v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mStartDegree:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 195
    invoke-direct {p0, p1}, Lcn/nubia/share/league/CircleProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 337
    check-cast p1, Lcn/nubia/share/league/CircleProgressBar$SavedState;

    .line 338
    invoke-virtual {p1}, Lcn/nubia/share/league/CircleProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    iget p1, p1, Lcn/nubia/share/league/CircleProgressBar$SavedState;->progress:I

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/CircleProgressBar;->setProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 327
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 328
    new-instance v1, Lcn/nubia/share/league/CircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcn/nubia/share/league/CircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 330
    iget v0, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    iput v0, v1, Lcn/nubia/share/league/CircleProgressBar$SavedState;->progress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 275
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    .line 276
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    .line 278
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    .line 279
    iget-object p2, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    sub-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 280
    iget-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterY:F

    iget p3, p0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 281
    iget-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget p3, p0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 282
    iget-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/share/league/CircleProgressBar;->mCenterX:F

    iget p3, p0, Lcn/nubia/share/league/CircleProgressBar;->mRadius:F

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 284
    invoke-direct {p0}, Lcn/nubia/share/league/CircleProgressBar;->updateProgressShader()V

    .line 287
    iget-object p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgressStrokeWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p2, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p4, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcn/nubia/share/league/CircleProgressBar;->mProgress:I

    .line 292
    invoke-virtual {p0}, Lcn/nubia/share/league/CircleProgressBar;->invalidate()V

    return-void
.end method
