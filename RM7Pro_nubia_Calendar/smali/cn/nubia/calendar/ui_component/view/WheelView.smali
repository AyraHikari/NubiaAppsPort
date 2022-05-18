.class public Lcn/nubia/calendar/ui_component/view/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/view/WheelView$TwoDigitFormatter;,
        Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;,
        Lcn/nubia/calendar/ui_component/view/WheelView$OnScrollListener;,
        Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x1

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x4

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x9

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final sTwoDigitFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$TwoDigitFormatter;


# instance fields
.field private final EDGE_ALPHA:I

.field private final ENHANCED_ALPHA:I

.field private final MIDDLE_ALPHA:I

.field private final mAdjustDrawPos:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mCurrentAlpha:I

.field private mCurrentLocationX:F

.field private mCurrentLocationY:F

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMaxValue:I

.field private mMaximumFlingVelocity:I

.field private mMiddleBottom:I

.field private mMiddleBottomEnd:I

.field private mMiddleTop:I

.field private mMiddleTopEnd:I

.field private mMiddleY:F

.field private mMinValue:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnScrollListener;

.field private mOnValueChangeListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedWheelPaint:Landroid/graphics/Paint;

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapHeightNotWrap:I

.field private mTextBound:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextShowRect:Landroid/graphics/Rect;

.field private mTextSize:I

.field private mTextsLocation:[F

.field private mTextsScaleX:[F

.field private mTextsSize:[F

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 720
    new-instance v0, Lcn/nubia/calendar/ui_component/view/WheelView$TwoDigitFormatter;

    invoke-direct {v0}, Lcn/nubia/calendar/ui_component/view/WheelView$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcn/nubia/calendar/ui_component/view/WheelView;->sTwoDigitFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    .line 39
    const/16 v3, 0xe1

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->ENHANCED_ALPHA:I

    .line 40
    iput v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->EDGE_ALPHA:I

    .line 41
    const/16 v3, 0x96

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->MIDDLE_ALPHA:I

    .line 47
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 48
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    .line 49
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    .line 54
    new-array v3, v4, [I

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    .line 56
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 61
    const/high16 v3, -0x80000000

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    .line 81
    iput v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mScrollState:I

    .line 86
    new-array v3, v4, [F

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    .line 87
    new-array v3, v4, [F

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsSize:[F

    .line 88
    new-array v3, v4, [F

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsLocation:[F

    .line 96
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 97
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 99
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextPaint:Landroid/graphics/Paint;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 103
    .local v1, "selectedWheelPaintColor":I
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 105
    .local v2, "textMaskPaintColor":I
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    .line 111
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090242

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustDrawPos:I

    .line 113
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTouchSlop:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinimumFlingVelocity:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    div-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaximumFlingVelocity:I

    .line 118
    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 442
    :cond_0
    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    .line 443
    if-eqz p1, :cond_1

    .line 444
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 450
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    .line 451
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 466
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 467
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 466
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 469
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 470
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 471
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    .line 473
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 474
    invoke-direct {p0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 475
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 5
    .param p1, "selectorIndex"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 247
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 263
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 252
    :cond_1
    const-string v2, ""

    .line 262
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int v3, p1, v3

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 256
    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int v1, p1, v3

    .line 257
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 258
    goto :goto_1

    .line 259
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/view/WheelView;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 348
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 349
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 350
    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    .line 351
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 352
    if-lez v4, :cond_2

    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 356
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    .line 357
    const/4 v1, 0x1

    .line 359
    :cond_1
    return v1

    .line 352
    :cond_2
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 510
    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    .line 511
    if-lez p1, :cond_0

    .line 512
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 513
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    .line 520
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    invoke-interface {v0, p1}, Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;
    .locals 1

    .prologue
    .line 726
    sget-object v0, Lcn/nubia/calendar/ui_component/view/WheelView;->sTwoDigitFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 217
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 219
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 220
    const/16 p1, 0xb

    .line 229
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 222
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 225
    :cond_2
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 226
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 455
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 458
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 459
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    .line 461
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 462
    invoke-direct {p0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 463
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setVerticalFadingEdgeEnabled(Z)V

    .line 646
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setFadingEdgeLength(I)V

    .line 647
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 616
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    .line 617
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    .line 618
    .local v0, "selectorIndices":[I
    array-length v4, v0

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    mul-int v3, v4, v5

    .line 619
    .local v3, "totalTextHeight":I
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 620
    .local v2, "totalTextGapHeight":F
    array-length v4, v0

    int-to-float v1, v4

    .line 621
    .local v1, "textGapCount":F
    div-float v4, v2, v1

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeight:I

    .line 623
    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    mul-int/lit8 v3, v4, 0x5

    .line 624
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 625
    const/high16 v4, 0x40a00000    # 5.0f

    div-float v4, v2, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeightNotWrap:I

    .line 627
    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    .line 628
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    .line 629
    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    .line 630
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleTop:I

    .line 631
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleBottom:I

    .line 632
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDrawTextAttri()V

    .line 633
    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleTop:I

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleBottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleY:F

    .line 634
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 266
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 267
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    .line 268
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v0

    .line 269
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 270
    add-int/lit8 v4, v1, -0x4

    add-int v2, v0, v4

    .line 271
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 272
    invoke-direct {p0, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 274
    :cond_0
    aput v2, v3, v1

    .line 275
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 418
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 419
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 420
    .local v0, "amountToScroll":I
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 422
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 423
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 424
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 425
    if-lez v2, :cond_1

    .line 426
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 431
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 432
    invoke-virtual {p0, v4, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->scrollBy(II)V

    .line 435
    :goto_1
    return v3

    .line 428
    :cond_1
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 435
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mOnValueChangeListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mOnValueChangeListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;->onValueChange(Lcn/nubia/calendar/ui_component/view/WheelView;II)V

    .line 481
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 199
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mScrollState:I

    .line 203
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mOnScrollListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mOnScrollListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcn/nubia/calendar/ui_component/view/WheelView$OnScrollListener;->onScrollStateChange(Lcn/nubia/calendar/ui_component/view/WheelView;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->ensureScrollWheelAdjusted()Z

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->onScrollStateChange(I)V

    .line 196
    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 488
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    if-ne v1, p1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 492
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 497
    :goto_1
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    .line 498
    .local v0, "previous":I
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    .line 499
    if-eqz p2, :cond_1

    .line 500
    invoke-direct {p0, v0, p1}, Lcn/nubia/calendar/ui_component/view/WheelView;->notifyChange(II)V

    .line 502
    :cond_1
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    .line 503
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    goto :goto_0

    .line 494
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 495
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 127
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 129
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 134
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 135
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    .line 138
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcn/nubia/calendar/ui_component/view/WheelView;->scrollBy(II)V

    .line 139
    iput v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mPreviousScrollerY:I

    .line 140
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-direct {p0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDrawTextAttri()V
    .locals 18

    .prologue
    .line 523
    const/4 v5, 0x0

    .line 524
    .local v5, "mRadianY":F
    const v6, 0x3ec90fdb

    .line 525
    .local v6, "mSelectRadian":F
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v6

    float-to-double v12, v12

    sub-double/2addr v10, v12

    double-to-float v7, v10

    .line 527
    .local v7, "mStartRadian":F
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x8

    int-to-float v4, v10

    .line 529
    .local v4, "mMappingViewHeight":F
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v3, v10

    .line 531
    .local v3, "mHalfViewHeight":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    .line 532
    .local v8, "selectorIndices":[I
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    int-to-float v9, v10

    .line 533
    .local v9, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 534
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    sub-float v11, v9, v11

    mul-float/2addr v10, v11

    div-float/2addr v10, v4

    add-float v5, v7, v10

    .line 537
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsSize:[F

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    int-to-double v12, v11

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 538
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsSize:[F

    aget v10, v10, v2

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 539
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsSize:[F

    const/4 v11, 0x0

    aput v11, v10, v2

    .line 541
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsLocation:[F

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    float-to-double v12, v11

    float-to-double v14, v5

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v14, v14, v16

    .line 542
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsSize:[F

    aget v11, v11, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    float-to-double v14, v11

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustDrawPos:I

    int-to-double v14, v11

    sub-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 544
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    const-wide v12, 0x3fe999999999999aL    # 0.8

    const-wide v14, 0x3fc999999999999aL    # 0.2

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsSize:[F

    aget v13, v13, v2

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    aput v11, v10, v2

    .line 546
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 548
    :cond_1
    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    return v0
.end method

.method public getMiddleBottom()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleBottom:I

    return v0
.end method

.method public getMiddleTop()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleTop:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    return v0
.end method

.method public getSelectorIndexToStringCache()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 552
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    .line 553
    .local v3, "selectorIndices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 554
    aget v2, v3, v0

    .line 555
    .local v2, "selectorIndex":I
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 556
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsLocation:[F

    aget v4, v4, v0

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    .line 557
    const/high16 v4, 0x43960000    # 300.0f

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    iget v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleY:F

    sub-float/2addr v5, v6

    .line 559
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    rsub-int v4, v4, 0x96

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentAlpha:I

    .line 560
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 561
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 562
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 564
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 563
    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 566
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v4, v4, v0

    div-float v4, v9, v4

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 567
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 568
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationX:F

    .line 570
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsLocation:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    .line 572
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationX:F

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 573
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 575
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationX:F

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 576
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 579
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleTop:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleBottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 581
    const/4 v4, 0x0

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleTop:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    .line 582
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMiddleBottom:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextsScaleX:[F

    aget v8, v8, v0

    mul-float/2addr v7, v8

    .line 581
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 584
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 v5, 0xe1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 585
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTextSize:I

    add-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 586
    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 592
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 589
    :cond_0
    iget v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 594
    .end local v1    # "scrollSelectorValue":Ljava/lang/String;
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 607
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheel()V

    .line 610
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeFadingEdges()V

    .line 613
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 598
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 600
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    .line 601
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 600
    invoke-super {p0, p1, v1}, Landroid/view/View;->onMeasure(II)V

    .line 602
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 364
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 365
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 367
    :cond_0
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 414
    :cond_1
    :goto_0
    return v8

    .line 370
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mLastDownEventY:F

    iput v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mLastDownOrMoveEventY:F

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mLastDownEventTime:J

    .line 372
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 373
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 374
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 375
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 376
    invoke-direct {p0, v9}, Lcn/nubia/calendar/ui_component/view/WheelView;->onScrollStateChange(I)V

    goto :goto_0

    .line 377
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 378
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 379
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 385
    .local v0, "currentMoveY":F
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mScrollState:I

    if-eq v5, v8, :cond_4

    .line 386
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 387
    .local v1, "deltaDownY":I
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mTouchSlop:I

    if-le v1, v5, :cond_3

    .line 388
    invoke-direct {p0, v8}, Lcn/nubia/calendar/ui_component/view/WheelView;->onScrollStateChange(I)V

    .line 395
    .end local v1    # "deltaDownY":I
    :cond_3
    :goto_1
    iput v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 391
    :cond_4
    iget v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mLastDownOrMoveEventY:F

    sub-float v5, v0, v5

    float-to-int v2, v5

    .line 392
    .local v2, "deltaMoveY":I
    invoke-virtual {p0, v9, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->scrollBy(II)V

    .line 393
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    goto :goto_1

    .line 399
    .end local v0    # "currentMoveY":F
    .end local v2    # "deltaMoveY":I
    :pswitch_2
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 400
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 401
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 402
    .local v3, "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinimumFlingVelocity:I

    if-le v5, v6, :cond_5

    .line 403
    invoke-direct {p0, v3}, Lcn/nubia/calendar/ui_component/view/WheelView;->fling(I)V

    .line 409
    :goto_2
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 410
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 405
    :cond_5
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->ensureScrollWheelAdjusted()Z

    .line 406
    invoke-direct {p0, v9}, Lcn/nubia/calendar/ui_component/view/WheelView;->onScrollStateChange(I)V

    goto :goto_2

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 149
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    .line 150
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 152
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    .line 186
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 157
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    goto :goto_0

    .line 160
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-le v1, v2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 163
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeightNotWrap:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeight:I

    .line 165
    :cond_3
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    .line 166
    :cond_4
    :goto_1
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 168
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    .line 169
    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->decrementSelectorIndices([I)V

    .line 170
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValueInternal(IZ)V

    .line 171
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 173
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    goto :goto_1

    .line 176
    :cond_5
    :goto_2
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_6

    .line 177
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    .line 178
    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->incrementSelectorIndices([I)V

    .line 179
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValueInternal(IZ)V

    .line 180
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 182
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mCurrentScrollOffset:I

    goto :goto_2

    .line 185
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDrawTextAttri()V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 655
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    .line 659
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setDisplayedValuesAndMaxValue([Ljava/lang/String;I)V
    .locals 3
    .param p1, "displayedValues"    # [Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-ne v1, p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-eq v1, p2, :cond_0

    .line 321
    if-gez p2, :cond_2

    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_2
    iput p2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    .line 325
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    if-ge v1, v2, :cond_3

    .line 326
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    .line 328
    :cond_3
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    .line 329
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setWrapSelectorWheel(Z)V

    .line 330
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mDisplayedValues:[Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    .line 332
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    goto :goto_0

    .line 328
    .end local v0    # "wrapSelectorWheel":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFormatter(Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    if-ne p1, v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mFormatter:Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    .line 237
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 297
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    if-gez p1, :cond_1

    .line 301
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    .line 304
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    if-ge v1, v2, :cond_2

    .line 305
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    .line 307
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 308
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setWrapSelectorWheel(Z)V

    .line 309
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    .line 310
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    goto :goto_0

    .line 307
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 280
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    if-gez p1, :cond_1

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    .line 287
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    if-le v1, v2, :cond_2

    .line 288
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mValue:I

    .line 290
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 291
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setWrapSelectorWheel(Z)V

    .line 292
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->initializeSelectorWheelIndices()V

    .line 293
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    goto :goto_0

    .line 290
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnValueChangedListener(Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;

    .prologue
    .line 651
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mOnValueChangeListener:Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;

    .line 652
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValueInternal(IZ)V

    .line 485
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 209
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 210
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 212
    iput-boolean p1, p0, Lcn/nubia/calendar/ui_component/view/WheelView;->mWrapSelectorWheel:Z

    .line 214
    :cond_1
    return-void

    .line 209
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
