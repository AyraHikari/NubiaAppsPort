.class public Lcn/nubia/calendar/DayOfMonthDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DayOfMonthDrawable.java"


# static fields
.field private static mTextSize:F


# instance fields
.field private mDayOfMonth:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/high16 v0, 0x41600000    # 14.0f

    sput v0, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    const-string v0, "1"

    iput-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextSize:F

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    iget-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    iget-object v2, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    iget-object v2, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 57
    .local v1, "textHeight":I
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 58
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 70
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthDrawable;->invalidateSelf()V

    .line 80
    return-void
.end method
