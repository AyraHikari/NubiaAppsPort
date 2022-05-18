.class public Lcn/nubia/music/ui/MyTextView;
.super Landroid/widget/TextView;
.source "MyTextView.java"


# static fields
.field public static LEFT_VIEW:I = 0x0

.field public static MIDDLE_VIEW:I = 0x0

.field public static RIGTH_VIEW:I = 0x0

.field private static mPaintWidth:F = 0.0f

.field private static final mRx:I = 0x14


# instance fields
.field private mFocused:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mType:I

.field private mpPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/ui/MyTextView;->LEFT_VIEW:I

    .line 17
    const/4 v0, 0x1

    sput v0, Lcn/nubia/music/ui/MyTextView;->MIDDLE_VIEW:I

    .line 18
    const/4 v0, 0x2

    sput v0, Lcn/nubia/music/ui/MyTextView;->RIGTH_VIEW:I

    .line 21
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    .line 49
    const v0, 0x7f0d0136

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    .line 50
    invoke-direct {p0}, Lcn/nubia/music/ui/MyTextView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    .line 42
    const v0, 0x7f0d0136

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    .line 43
    invoke-direct {p0}, Lcn/nubia/music/ui/MyTextView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    .line 35
    const v0, 0x7f0d0136

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    .line 36
    invoke-direct {p0}, Lcn/nubia/music/ui/MyTextView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    .line 28
    const v0, 0x7f0d0136

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    .line 29
    invoke-direct {p0}, Lcn/nubia/music/ui/MyTextView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, 0x41a00000    # 20.0f

    .line 110
    iget-boolean v0, p0, Lcn/nubia/music/ui/MyTextView;->mFocused:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    :goto_0
    sget v0, Lcn/nubia/music/ui/MyTextView;->MIDDLE_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 123
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 117
    :cond_2
    sget v0, Lcn/nubia/music/ui/MyTextView;->RIGTH_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_3

    .line 118
    sget v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float v1, v0, v3

    const/4 v2, 0x0

    sget v0, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float v3, v0, v3

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 120
    :cond_3
    sget v0, Lcn/nubia/music/ui/MyTextView;->LEFT_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 91
    if-eq p1, p3, :cond_2

    .line 92
    sget v0, Lcn/nubia/music/ui/MyTextView;->LEFT_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v1, v6

    sget v2, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    .line 94
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    .line 96
    :cond_0
    sget v0, Lcn/nubia/music/ui/MyTextView;->RIGTH_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_1

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3e600000    # -20.0f

    sget v2, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 98
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    .line 100
    :cond_1
    sget v0, Lcn/nubia/music/ui/MyTextView;->MIDDLE_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_2

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v1, v6

    sget v2, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    .line 102
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    .line 105
    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->invalidate()V

    .line 64
    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcn/nubia/music/ui/MyTextView;->mFocused:Z

    .line 84
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->invalidate()V

    .line 85
    return-void
.end method

.method public setType(I)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 67
    iput p1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    .line 68
    sget v0, Lcn/nubia/music/ui/MyTextView;->LEFT_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v1, v6

    sget v2, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    .line 70
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    .line 72
    :cond_0
    sget v0, Lcn/nubia/music/ui/MyTextView;->RIGTH_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_1

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3e600000    # -20.0f

    sget v2, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 74
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    .line 76
    :cond_1
    sget v0, Lcn/nubia/music/ui/MyTextView;->MIDDLE_VIEW:I

    iget v1, p0, Lcn/nubia/music/ui/MyTextView;->mType:I

    if-ne v0, v1, :cond_2

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v1, v6

    sget v2, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    .line 78
    invoke-virtual {p0}, Lcn/nubia/music/ui/MyTextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcn/nubia/music/ui/MyTextView;->mPaintWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/MyTextView;->mRectF:Landroid/graphics/RectF;

    .line 80
    :cond_2
    return-void
.end method
