.class public Lcn/nubia/commonui/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/WheelView$TwoDigitFormatter;,
        Lcn/nubia/commonui/widget/WheelView$Formatter;,
        Lcn/nubia/commonui/widget/WheelView$OnScrollListener;,
        Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final LAYER_FLAGS:I = 0xd

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x4

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x9

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final sTwoDigitFormatter:Lcn/nubia/commonui/widget/WheelView$TwoDigitFormatter;


# instance fields
.field private final DISHANCED_ALPHA:I

.field private final EDGE_ALPHA:I

.field private final ENHANCED_ALPHA:I

.field private final MIDDLE_ALPHA:I

.field private disableselectedWheelPaintColor:I

.field private final mAdjustDrawPos:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mCurrentAlpha:I

.field private mCurrentLocationX:F

.field private mCurrentLocationY:F

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcn/nubia/commonui/widget/WheelView$Formatter;

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

.field private mOnScrollListener:Lcn/nubia/commonui/widget/WheelView$OnScrollListener;

.field private mOnValueChangeListener:Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;

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
    .line 695
    new-instance v0, Lcn/nubia/commonui/widget/WheelView$TwoDigitFormatter;

    invoke-direct {v0}, Lcn/nubia/commonui/widget/WheelView$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcn/nubia/commonui/widget/WheelView;->sTwoDigitFormatter:Lcn/nubia/commonui/widget/WheelView$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
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

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    .line 39
    const/16 v3, 0xe1

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->ENHANCED_ALPHA:I

    .line 40
    const/16 v3, 0x74

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->DISHANCED_ALPHA:I

    .line 41
    iput v5, p0, Lcn/nubia/commonui/widget/WheelView;->EDGE_ALPHA:I

    .line 42
    const/16 v3, 0x96

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->MIDDLE_ALPHA:I

    .line 48
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 49
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    .line 50
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    .line 55
    new-array v3, v4, [I

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    .line 57
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 62
    const/high16 v3, -0x80000000

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    .line 83
    iput v5, p0, Lcn/nubia/commonui/widget/WheelView;->mScrollState:I

    .line 88
    new-array v3, v4, [F

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    .line 89
    new-array v3, v4, [F

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsSize:[F

    .line 90
    new-array v3, v4, [F

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsLocation:[F

    .line 98
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 99
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 101
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$color;->nubia_wheelview_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 105
    .local v1, "selectedWheelPaintColor":I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$color;->nubia_disabled_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->disableselectedWheelPaintColor:I

    .line 106
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$color;->nubia_wheelview_middle_zone_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 108
    .local v2, "textMaskPaintColor":I
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_wheel_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    .line 114
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_wheel_adjust_pos:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustDrawPos:I

    .line 116
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 117
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->mTouchSlop:I

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMinimumFlingVelocity:I

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMaximumFlingVelocity:I

    .line 121
    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 422
    :cond_0
    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    .line 423
    if-eqz p1, :cond_1

    .line 424
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 431
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 446
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 447
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 446
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 449
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 450
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 451
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    .line 453
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 454
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 455
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 247
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 252
    :cond_1
    const-string v2, ""

    .line 261
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 255
    iget v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    sub-int v1, p1, v3

    .line 256
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 257
    goto :goto_1

    .line 258
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/WheelView;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 325
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 326
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 327
    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    .line 328
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 329
    if-lez v4, :cond_2

    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 333
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 334
    const/4 v1, 0x1

    .line 336
    :cond_1
    return v1

    .line 329
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 490
    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    .line 491
    if-lez p1, :cond_0

    .line 492
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 499
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

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
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFormatter:Lcn/nubia/commonui/widget/WheelView$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFormatter:Lcn/nubia/commonui/widget/WheelView$Formatter;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/widget/WheelView$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lcn/nubia/commonui/widget/WheelView;->sTwoDigitFormatter:Lcn/nubia/commonui/widget/WheelView$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 222
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 223
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 229
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 225
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 226
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v3, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

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
    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 435
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 438
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 439
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    .line 441
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 442
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 443
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 627
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->setVerticalFadingEdgeEnabled(Z)V

    .line 628
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->setFadingEdgeLength(I)V

    .line 629
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 598
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 599
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    .line 600
    .local v0, "selectorIndices":[I
    array-length v4, v0

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    mul-int v3, v4, v5

    .line 601
    .local v3, "totalTextHeight":I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 602
    .local v2, "totalTextGapHeight":F
    array-length v4, v0

    int-to-float v1, v4

    .line 603
    .local v1, "textGapCount":F
    div-float v4, v2, v1

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeight:I

    .line 605
    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    mul-int/lit8 v3, v4, 0x5

    .line 606
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 607
    const/high16 v4, 0x40a00000    # 5.0f

    div-float v4, v2, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeightNotWrap:I

    .line 609
    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    .line 610
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    .line 611
    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    .line 612
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleTop:I

    .line 613
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleBottom:I

    .line 614
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getDrawTextAttri()V

    .line 615
    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleTop:I

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleBottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleY:F

    .line 616
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 265
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 266
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    .line 267
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    .line 268
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 269
    add-int/lit8 v4, v1, -0x4

    add-int v2, v0, v4

    .line 270
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 271
    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 273
    :cond_0
    aput v2, v3, v1

    .line 274
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
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

    .line 398
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 399
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 400
    .local v0, "amountToScroll":I
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 402
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 403
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 404
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 405
    if-lez v2, :cond_1

    .line 406
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 411
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 412
    invoke-virtual {p0, v4, v0}, Lcn/nubia/commonui/widget/WheelView;->scrollBy(II)V

    .line 415
    :goto_1
    return v3

    .line 408
    :cond_1
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 415
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mOnValueChangeListener:Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mOnValueChangeListener:Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;

    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;->onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V

    .line 461
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 204
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/WheelView;->mScrollState:I

    .line 208
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mOnScrollListener:Lcn/nubia/commonui/widget/WheelView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mOnScrollListener:Lcn/nubia/commonui/widget/WheelView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcn/nubia/commonui/widget/WheelView$OnScrollListener;->onScrollStateChange(Lcn/nubia/commonui/widget/WheelView;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->onScrollStateChange(I)V

    .line 201
    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 468
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    if-ne v1, p1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 472
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 477
    :goto_1
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    .line 478
    .local v0, "previous":I
    iput p1, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    .line 479
    if-eqz p2, :cond_1

    .line 480
    invoke-direct {p0, v0, p1}, Lcn/nubia/commonui/widget/WheelView;->notifyChange(II)V

    .line 482
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 483
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 474
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 475
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 130
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v1, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 132
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 137
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 138
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    .line 141
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcn/nubia/commonui/widget/WheelView;->scrollBy(II)V

    .line 142
    iput v0, p0, Lcn/nubia/commonui/widget/WheelView;->mPreviousScrollerY:I

    .line 143
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/WheelView;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDrawTextAttri()V
    .locals 18

    .prologue
    .line 502
    const/4 v5, 0x0

    .line 503
    .local v5, "mRadianY":F
    const v6, 0x3ec90fdb

    .line 504
    .local v6, "mSelectRadian":F
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v6

    float-to-double v12, v12

    sub-double/2addr v10, v12

    double-to-float v7, v10

    .line 506
    .local v7, "mStartRadian":F
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x8

    int-to-float v4, v10

    .line 508
    .local v4, "mMappingViewHeight":F
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v3, v10

    .line 510
    .local v3, "mHalfViewHeight":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    .line 511
    .local v8, "selectorIndices":[I
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    int-to-float v9, v10

    .line 512
    .local v9, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 513
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    sub-float v11, v9, v11

    mul-float/2addr v10, v11

    div-float/2addr v10, v4

    add-float v5, v7, v10

    .line 516
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsSize:[F

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    int-to-double v12, v11

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 517
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsSize:[F

    aget v10, v10, v2

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsSize:[F

    const/4 v11, 0x0

    aput v11, v10, v2

    .line 520
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsLocation:[F

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    float-to-double v12, v11

    float-to-double v14, v5

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v14, v14, v16

    .line 521
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsSize:[F

    aget v11, v11, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    float-to-double v14, v11

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/commonui/widget/WheelView;->mAdjustDrawPos:I

    int-to-double v14, v11

    sub-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 523
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

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

    iget v12, v0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/widget/WheelView;->mTextsSize:[F

    aget v13, v13, v2

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    aput v11, v10, v2

    .line 525
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 527
    :cond_1
    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    return v0
.end method

.method public getMiddleBottom()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleBottom:I

    return v0
.end method

.method public getMiddleTop()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleTop:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 531
    iget-object v3, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    .line 532
    .local v3, "selectorIndices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 533
    aget v2, v3, v0

    .line 534
    .local v2, "selectorIndex":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 535
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsLocation:[F

    aget v4, v4, v0

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    .line 536
    const/high16 v4, 0x43960000    # 300.0f

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    iget v6, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleY:F

    sub-float/2addr v5, v6

    .line 537
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    rsub-int v4, v4, 0x96

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentAlpha:I

    .line 538
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 539
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 541
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 540
    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 542
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 549
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v4, v4, v0

    div-float v4, v9, v4

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 550
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationX:F

    .line 551
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsLocation:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    .line 552
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationX:F

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 553
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 554
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationX:F

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 555
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 557
    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleTop:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleBottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 561
    const/4 v4, 0x0

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleTop:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    .line 562
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcn/nubia/commonui/widget/WheelView;->mMiddleBottom:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/WheelView;->mTextsScaleX:[F

    aget v8, v8, v0

    mul-float/2addr v7, v8

    .line 561
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 563
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 564
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 v5, 0xe1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 570
    :goto_2
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mTextSize:I

    add-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 571
    iget v4, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 574
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 545
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->disableselectedWheelPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 567
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 v5, 0x74

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 576
    .end local v1    # "scrollSelectorValue":Ljava/lang/String;
    .end local v2    # "selectorIndex":I
    :cond_3
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
    .line 589
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheel()V

    .line 592
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeFadingEdges()V

    .line 595
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 580
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_wheel_hight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 582
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    .line 583
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 582
    invoke-super {p0, p1, v1}, Landroid/view/View;->onMeasure(II)V

    .line 584
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 341
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v8

    .line 344
    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    .line 345
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 347
    :cond_2
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcn/nubia/commonui/widget/WheelView;->mLastDownEventY:F

    iput v5, p0, Lcn/nubia/commonui/widget/WheelView;->mLastDownOrMoveEventY:F

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/commonui/widget/WheelView;->mLastDownEventTime:J

    .line 352
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 353
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 354
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 355
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 356
    invoke-direct {p0, v9}, Lcn/nubia/commonui/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 359
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 365
    .local v0, "currentMoveY":F
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mScrollState:I

    if-eq v5, v8, :cond_5

    .line 366
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 367
    .local v1, "deltaDownY":I
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mTouchSlop:I

    if-le v1, v5, :cond_4

    .line 368
    invoke-direct {p0, v8}, Lcn/nubia/commonui/widget/WheelView;->onScrollStateChange(I)V

    .line 375
    .end local v1    # "deltaDownY":I
    :cond_4
    :goto_1
    iput v0, p0, Lcn/nubia/commonui/widget/WheelView;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 371
    :cond_5
    iget v5, p0, Lcn/nubia/commonui/widget/WheelView;->mLastDownOrMoveEventY:F

    sub-float v5, v0, v5

    float-to-int v2, v5

    .line 372
    .local v2, "deltaMoveY":I
    invoke-virtual {p0, v9, v2}, Lcn/nubia/commonui/widget/WheelView;->scrollBy(II)V

    .line 373
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto :goto_1

    .line 379
    .end local v0    # "currentMoveY":F
    .end local v2    # "deltaMoveY":I
    :pswitch_2
    iget-object v4, p0, Lcn/nubia/commonui/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 380
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Lcn/nubia/commonui/widget/WheelView;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 381
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 382
    .local v3, "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcn/nubia/commonui/widget/WheelView;->mMinimumFlingVelocity:I

    if-le v5, v6, :cond_6

    .line 383
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/WheelView;->fling(I)V

    .line 389
    :goto_2
    iget-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 390
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/nubia/commonui/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 385
    :cond_6
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 386
    invoke-direct {p0, v9}, Lcn/nubia/commonui/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_2

    .line 348
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

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    .line 153
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 155
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    .line 191
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 160
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_0

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-le v1, v2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 167
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeightNotWrap:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeight:I

    .line 170
    :cond_3
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    .line 171
    :cond_4
    :goto_1
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 173
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    .line 174
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->decrementSelectorIndices([I)V

    .line 175
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lcn/nubia/commonui/widget/WheelView;->setValueInternal(IZ)V

    .line 176
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 178
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_1

    .line 181
    :cond_5
    :goto_2
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_6

    .line 182
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    .line 183
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->incrementSelectorIndices([I)V

    .line 184
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lcn/nubia/commonui/widget/WheelView;->setValueInternal(IZ)V

    .line 185
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 187
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->getDrawTextAttri()V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 637
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    .line 641
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcn/nubia/commonui/widget/WheelView$Formatter;

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView;->mFormatter:Lcn/nubia/commonui/widget/WheelView$Formatter;

    if-ne p1, v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/WheelView;->mFormatter:Lcn/nubia/commonui/widget/WheelView$Formatter;

    .line 237
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 296
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 299
    :cond_0
    if-gez p1, :cond_1

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    .line 303
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    if-ge v1, v2, :cond_2

    .line 304
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    .line 306
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 307
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 308
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 309
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 306
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 279
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 282
    :cond_0
    if-gez p1, :cond_1

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    .line 286
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    if-le v1, v2, :cond_2

    .line 287
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    iput v1, p0, Lcn/nubia/commonui/widget/WheelView;->mValue:I

    .line 289
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 290
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 291
    invoke-direct {p0}, Lcn/nubia/commonui/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 292
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 289
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;

    .prologue
    .line 633
    iput-object p1, p0, Lcn/nubia/commonui/widget/WheelView;->mOnValueChangeListener:Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;

    .line 634
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/WheelView;->setValueInternal(IZ)V

    .line 465
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 214
    iget v1, p0, Lcn/nubia/commonui/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lcn/nubia/commonui/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 215
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 217
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/WheelView;->mWrapSelectorWheel:Z

    .line 219
    :cond_1
    return-void

    .line 214
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
