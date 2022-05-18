.class public Lcom/zte/mifavor/widget/NumberPickerZTE;
.super Landroid/widget/LinearLayout;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$CustomEditText;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final ITEM_CNT_LANDSCAPE:I = 0x3

.field private static final ITEM_CNT_PORTRAIT:I = 0x5

.field private static final MAX_HEIGHT_LANDSCAPE:I = 0x78

.field private static final MAX_HEIGHT_PORTRAIT:I = 0xc0

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "NumberPickerZTE"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.0f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;


# instance fields
.field private INPUT_DISABLE_FLAG:I

.field private displayYear:I

.field private mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputSize:F

.field private final mInputText:Landroid/widget/EditText;

.field private mInputTextColor:I

.field mIsMonkey:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMfvInputTypeface:Landroid/graphics/Typeface;

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

.field private mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

.field private mOriginInputTypeface:Landroid/graphics/Typeface;

.field private final mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedSize:F

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private mSelectorEvenWhellPaintColor:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorMiddleItemIndex:I

.field private mSelectorOddWhellPaintColor:I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelItemCount:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mdividerWith:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    sget v0, Lcom/zte/extres/R$layout;->number_picker:I

    sput v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 143
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->sTwoDigitFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;

    const/16 v0, 0x28

    .line 147
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 434
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 p2, 0x5

    .line 235
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    .line 239
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    const/4 p3, 0x2

    div-int/2addr p2, p3

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    .line 247
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    const/4 p2, 0x0

    .line 249
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/high16 v0, 0x42000000    # 32.0f

    .line 251
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    const/high16 v0, -0x76000000

    .line 252
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    const v0, 0x8ed3

    .line 253
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    .line 260
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    const-wide/16 v0, 0x12c

    .line 296
    iput-wide v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    const/high16 v0, -0x80000000

    .line 304
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 361
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    const-string v1, "sans-serif-medium"

    .line 400
    invoke-static {v1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    .line 405
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIsMonkey:Z

    .line 441
    sget v1, Lcom/zte/extres/R$layout;->number_picker:I

    const/4 v2, 0x1

    .line 457
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    .line 459
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$color;->mfv_common_date_time_txt_fc:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    .line 460
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$color;->mfv_common_tf_txt_watermark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    .line 461
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$color;->mfv_common_pop_secondary_txt:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    .line 465
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSolidColor:I

    .line 469
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->number_picker_divider_zte:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 471
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 472
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$color;->mfv_common_divl:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 481
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    .line 491
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x42400000    # 48.0f

    .line 490
    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    .line 498
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    .line 501
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x43400000    # 192.0f

    .line 500
    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    .line 502
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    if-eq v3, v0, :cond_1

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    if-eq v3, v0, :cond_1

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/high16 v3, 0x42a00000    # 80.0f

    .line 514
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 513
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    .line 515
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    .line 517
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    if-eq v3, v0, :cond_3

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    if-eq v3, v0, :cond_3

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    if-gt v3, v4, :cond_2

    goto :goto_1

    .line 519
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 522
    :cond_3
    :goto_1
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    if-ne v3, v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_2
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mComputeMaxWidth:Z

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 530
    new-instance v3, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    .line 537
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWillNotDraw(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    .line 540
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 541
    invoke-virtual {v3, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 543
    new-instance v1, Lcom/zte/mifavor/widget/NumberPickerZTE$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$1;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 555
    new-instance v3, Lcom/zte/mifavor/widget/NumberPickerZTE$2;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$2;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 569
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v4, :cond_5

    .line 570
    sget v4, Lcom/zte/extres/R$id;->increment:I

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    .line 571
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 574
    :cond_5
    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    .line 578
    :goto_3
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v4, :cond_6

    .line 579
    sget v4, Lcom/zte/extres/R$id;->decrement:I

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    .line 580
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 583
    :cond_6
    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    .line 587
    :goto_4
    sget v1, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 588
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    new-instance v3, Lcom/zte/mifavor/widget/NumberPickerZTE$3;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$3;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 595
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 596
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;

    invoke-direct {v4, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    aput-object v4, v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 597
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setAccessibilityLiveRegion(I)V

    .line 599
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 600
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 601
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    iget p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 604
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTouchSlop:I

    .line 606
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinimumFlingVelocity:I

    .line 607
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaximumFlingVelocity:I

    .line 609
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    .line 612
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 613
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 614
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 615
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 616
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 617
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 618
    sget-object p3, Lcom/zte/mifavor/widget/NumberPickerZTE;->ENABLED_STATE_SET:[I

    sget v1, Lcom/zte/extres/R$color;->white:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 619
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 620
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 p1, 0x14

    .line 622
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    const/16 p1, 0x10

    .line 623
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 626
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    .line 627
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    .line 630
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    .line 631
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 632
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 635
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 636
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setImportantForAccessibility(I)V

    .line 640
    :cond_7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_8

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getFocusable()I

    move-result p2

    if-ne p2, p1, :cond_8

    .line 641
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFocusable(I)V

    .line 642
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFocusableInTouchMode(Z)V

    .line 645
    :cond_8
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorWheelItemCount(Landroid/content/res/Configuration;)V

    .line 647
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIsMonkey:Z

    const-string p1, "NumberPickerZTE"

    .line 648
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsMonkey="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIsMonkey:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1600(Lcom/zte/mifavor/widget/NumberPickerZTE;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V

    return-void
.end method

.method static synthetic access$1802(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    return p0
.end method

.method static synthetic access$2800(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/zte/mifavor/widget/NumberPickerZTE;I)I
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/NumberPickerZTE;ZJ)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    return p0
.end method

.method static synthetic access$3100(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 97
    sget-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1888
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1889
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1890
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1893
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1895
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1898
    :cond_1
    iget-object v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1901
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1904
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_1

    .line 1906
    :cond_3
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 2034
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 2035
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2037
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2038
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 2039
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 2041
    aput v0, p1, v1

    .line 2042
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 2

    .line 2050
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2051
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 2055
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 2058
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2059
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int v1, p1, v1

    .line 2060
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    .line 2062
    :cond_2
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 2065
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2307
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2309
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 2310
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    if-lez v0, :cond_0

    .line 2311
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    :cond_1
    move v5, v0

    .line 2314
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2316
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1986
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1989
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    .line 1990
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1992
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1996
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    invoke-interface {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2070
    :cond_0
    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 4

    .line 659
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3

    .line 2259
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2261
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2266
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2269
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2270
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2279
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 2285
    :catch_0
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    return p0
.end method

.method public static final getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;
    .locals 1

    .line 655
    sget-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->sTwoDigitFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 2003
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2004
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, p0

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 2006
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 2007
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr p1, p0

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1191
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 1194
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1196
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1197
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 2018
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2019
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 2021
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2022
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 2023
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    .line 2025
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 2026
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1950
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVerticalFadingEdgeEnabled(Z)V

    .line 1951
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1930
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1931
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1932
    array-length v1, v0

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1933
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1934
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1936
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    .line 1937
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    .line 1941
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 1942
    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1943
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 1945
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1946
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelInDialog()V
    .locals 4

    .line 1912
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1913
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1914
    array-length v1, v0

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1915
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1916
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1918
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    .line 1919
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    .line 1921
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 1922
    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1923
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 1925
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1822
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1823
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1824
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1825
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1826
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1827
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1828
    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1830
    :cond_0
    aput v3, v0, v2

    .line 1831
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1782
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1783
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1793
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1791
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1788
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 5

    const/4 v0, 0x1

    .line 742
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 743
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 744
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 746
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 748
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    if-lez v2, :cond_0

    .line 750
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 752
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 756
    invoke-virtual {p0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 2186
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 2187
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;->onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1973
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1976
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    .line 1977
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;->onScrollStateChange(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1958
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1959
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureScrollWheelAdjusted()Z

    .line 1960
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    const/4 p1, 0x0

    .line 1961
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_0

    .line 1963
    :cond_0
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1964
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2221
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2222
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2226
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    .line 2227
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 2226
    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 2198
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2199
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2203
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2204
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2

    .line 2293
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2294
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    .line 2296
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->post(II)V

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2243
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2247
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->cancel()V

    .line 2249
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2252
    :cond_2
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1810
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1811
    invoke-static {p0, p3, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setSelectorWheelItemCount(II)V
    .locals 1

    .line 663
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    .line 664
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    .line 665
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 666
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    int-to-float p1, p2

    .line 669
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    .line 668
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    .line 670
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private setSelectorWheelItemCount(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1872
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1873
    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "split-screen-primary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    const/16 v0, 0xc0

    .line 1876
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorWheelItemCount(II)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    const/16 v0, 0x78

    .line 1874
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorWheelItemCount(II)V

    .line 1878
    :goto_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelInDialog()V

    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 3

    .line 1842
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1846
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1847
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1849
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1850
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1852
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1853
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1855
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1856
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    :cond_2
    if-eqz p2, :cond_3

    .line 1859
    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->notifyChange(II)V

    .line 1861
    :cond_3
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1862
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1176
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 1179
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1183
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1206
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    .line 1213
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 1214
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1220
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1223
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    .line 1227
    :cond_4
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1229
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1230
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1236
    :goto_3
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 1237
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1238
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1239
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1240
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    goto :goto_4

    .line 1242
    :cond_7
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    .line 1244
    :goto_4
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 6

    .line 2143
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    if-le v0, v2, :cond_0

    .line 2144
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 2149
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2150
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 2151
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2152
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2153
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 2159
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIsMonkey:Z

    if-nez v4, :cond_2

    const/16 v4, 0x10

    .line 2161
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 2163
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2164
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2165
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2166
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2168
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 2169
    invoke-virtual {v4, p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2171
    invoke-virtual {p0, p0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    const-string p0, "NumberPickerZTE"

    const-string v0, "updateInputTextView, requestSendAccessibilityEvent, TYPE_VIEW_TEXT_CHANGED"

    .line 2172
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 2074
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2075
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    goto :goto_0

    .line 2080
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 2081
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1017
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    .line 1018
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1020
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1024
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1025
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1026
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1027
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1029
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->scrollBy(II)V

    .line 1030
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1031
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1032
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1034
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 1100
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 1090
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1095
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 958
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 959
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 963
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 966
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 968
    :cond_1
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 973
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 974
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1002
    :pswitch_0
    invoke-virtual {v1, v0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1005
    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 977
    :pswitch_1
    invoke-virtual {v1, v0, v7}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 980
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    .line 981
    invoke-virtual {v1, v0, v6, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 986
    :cond_3
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v3, :cond_4

    .line 988
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 991
    invoke-virtual {v1, v0, v7}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 994
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    .line 995
    invoke-virtual {v1, v0, v6, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 906
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 914
    :pswitch_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    goto :goto_3

    .line 917
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 932
    :pswitch_1
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    .line 933
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    return v2

    .line 919
    :pswitch_2
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    .line 920
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 922
    :goto_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestFocus()Z

    .line 923
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    .line 924
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 925
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    if-ne v0, v3, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 926
    :goto_2
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    :cond_4
    return v2

    .line 910
    :cond_5
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 939
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 901
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 953
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1502
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1504
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1762
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1763
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1766
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    .line 1768
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1436
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputText()Landroid/widget/EditText;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1397
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1359
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    return p0
.end method

.method public getSolidColor()I
    .locals 0

    .line 1105
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSolidColor:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1304
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1256
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    return p0
.end method

.method public getYearValue()I
    .locals 3

    .line 1345
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "NumberPickerZTE"

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getYearValue, mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMinValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1350
    :cond_0
    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    return p0
.end method

.method public isNoYear(I)Z
    .locals 2

    .line 1148
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1513
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1515
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1516
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1867
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1868
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorWheelItemCount(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1496
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1497
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1522
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1523
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1526
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1527
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    int-to-float v1, v1

    .line 1530
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-nez v2, :cond_2

    .line 1532
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    if-eqz v2, :cond_1

    .line 1533
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/zte/mifavor/widget/NumberPickerZTE;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1534
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1536
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1538
    :cond_1
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    if-eqz v2, :cond_2

    .line 1539
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/zte/mifavor/widget/NumberPickerZTE;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1540
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    .line 1541
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v6

    .line 1540
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1542
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1547
    :cond_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1549
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v4, :cond_8

    move v4, v1

    move v1, v3

    .line 1550
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_18

    .line 1551
    aget v8, v2, v1

    .line 1552
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1553
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1560
    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    if-eq v1, v9, :cond_6

    .line 1561
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1562
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1563
    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v9, v6, :cond_3

    .line 1564
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1566
    :cond_3
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_4

    .line 1567
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1569
    :cond_4
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    if-le v1, v7, :cond_5

    move v9, v4

    goto :goto_2

    :cond_5
    sub-float v9, v4, v5

    .line 1572
    :goto_2
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1575
    :cond_6
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_7

    .line 1576
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1577
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1578
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1579
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1582
    :cond_7
    :goto_3
    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const-string v4, "NumberPickerZTE"

    .line 1585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDraw, mValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", displayYear="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    const/4 v9, 0x5

    if-le v4, v8, :cond_b

    .line 1588
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1589
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1590
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v2, v9, :cond_9

    .line 1591
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1592
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1593
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1594
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1596
    :cond_9
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1597
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1598
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1599
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1600
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1601
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1602
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1603
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v2, "--"

    .line 1604
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1606
    :cond_a
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1607
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1608
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1609
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1610
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1611
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1612
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v2, v9, :cond_18

    .line 1613
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1614
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1615
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1616
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1618
    :cond_b
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    if-ne v4, v8, :cond_e

    .line 1620
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1621
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1622
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v2, v9, :cond_c

    .line 1623
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1624
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1625
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1626
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1628
    :cond_c
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1629
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1630
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1631
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1633
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1634
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1635
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1636
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1637
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1638
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1640
    :cond_d
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1641
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1642
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1643
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v2, "--"

    .line 1644
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1645
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v2, v9, :cond_18

    .line 1646
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1647
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1648
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1649
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1651
    :cond_e
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-ne v4, v8, :cond_11

    .line 1652
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1653
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1655
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v2, v9, :cond_f

    .line 1656
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1657
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1658
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1659
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1661
    :cond_f
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v2, "--"

    .line 1662
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1663
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1665
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1666
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_10

    .line 1667
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1668
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1669
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1670
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1672
    :cond_10
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1673
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1674
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1675
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1676
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1677
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1679
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v2, v9, :cond_18

    .line 1680
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1681
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1682
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1683
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_11
    move v4, v1

    move v1, v3

    .line 1686
    :goto_4
    array-length v8, v2

    if-ge v1, v8, :cond_18

    .line 1687
    aget v8, v2, v1

    .line 1688
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1689
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1699
    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    if-eq v1, v9, :cond_16

    .line 1700
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOriginInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1701
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1702
    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelItemCount:I

    if-ne v9, v6, :cond_12

    .line 1703
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 1705
    :cond_12
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_13

    .line 1706
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 1708
    :cond_13
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1711
    :goto_5
    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_14

    const-string v8, "--"

    :cond_14
    if-le v1, v7, :cond_15

    move v9, v4

    goto :goto_6

    :cond_15
    sub-float v9, v4, v5

    .line 1714
    :goto_6
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 1716
    :cond_16
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_17

    .line 1717
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMfvInputTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1718
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1719
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1720
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1723
    :cond_17
    :goto_7
    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1732
    :cond_18
    :goto_8
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 1734
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    .line 1735
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    add-int/2addr v1, v0

    .line 1737
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1739
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1742
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    .line 1743
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    sub-int v1, v0, v1

    .line 1745
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1747
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_19
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1753
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1754
    const-class v0, Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1755
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1756
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1757
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 764
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 767
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 770
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 771
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventTime:J

    .line 774
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    .line 775
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 777
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_2

    .line 778
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-nez p1, :cond_3

    .line 779
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v2, 0x2

    .line 780
    invoke-virtual {p1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 782
    :cond_2
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 783
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-nez p1, :cond_3

    .line 784
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    .line 785
    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonPressDelayed(I)V

    .line 789
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 790
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 791
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 792
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 793
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_1

    .line 794
    :cond_4
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 795
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 796
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 797
    :cond_5
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    .line 799
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    .line 798
    invoke-direct {p0, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 800
    :cond_6
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    .line 802
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 801
    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 804
    :cond_7
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 805
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 683
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 684
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredWidth()I

    move-result p2

    .line 688
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredHeight()I

    move-result p3

    .line 691
    iget-object p4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 692
    iget-object p5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 693
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 694
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 697
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheel()V

    .line 702
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeFadingEdges()V

    .line 703
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    .line 704
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    .line 706
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 713
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 714
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 718
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->makeMeasureSpec(II)I

    move-result v0

    .line 720
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->makeMeasureSpec(II)I

    move-result v1

    .line 722
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 725
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    .line 726
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredWidth()I

    move-result v1

    .line 725
    invoke-direct {p0, v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 727
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    .line 728
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredHeight()I

    move-result v1

    .line 727
    invoke-direct {p0, v0, v1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 815
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 819
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 825
    :pswitch_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 828
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 829
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-eq v0, v2, :cond_3

    .line 830
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 831
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTouchSlop:I

    if-le v0, v1, :cond_4

    .line 832
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 833
    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_0

    .line 836
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 837
    invoke-virtual {p0, v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->scrollBy(II)V

    .line 838
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    .line 840
    :cond_4
    :goto_0
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 844
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeBeginSoftInputCommand()V

    .line 845
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeChangeCurrentByOneFromLongPress()V

    .line 846
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 847
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    .line 848
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 849
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 850
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinimumFlingVelocity:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_5

    .line 851
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->fling(I)V

    .line 852
    invoke-direct {p0, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_2

    .line 854
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v3, v0

    .line 855
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventTime:J

    sub-long/2addr v6, v8

    .line 857
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTouchSlop:I

    if-gt v3, p1, :cond_8

    .line 858
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_8

    .line 859
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_6

    .line 860
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 861
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V

    goto :goto_1

    .line 863
    :cond_6
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_7

    .line 866
    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    .line 867
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    .line 868
    invoke-virtual {p1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_7
    if-gez v0, :cond_9

    .line 870
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    .line 871
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    .line 872
    invoke-virtual {p1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 876
    :cond_8
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureScrollWheelAdjusted()Z

    .line 878
    :cond_9
    :goto_1
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 880
    :goto_2
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 881
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v2

    :cond_a
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 1153
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1154
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0

    .line 1155
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1163
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1164
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result p0

    return p0

    .line 1165
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1166
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V

    .line 1167
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1052
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1053
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1054
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    aget v1, p1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 1056
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    return-void

    .line 1059
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    aget v1, p1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 1061
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    return-void

    .line 1064
    :cond_1
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1065
    :cond_2
    :goto_0
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le p2, v1, :cond_3

    .line 1066
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1067
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->decrementSelectorIndices([I)V

    .line 1068
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1069
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-gt p2, v1, :cond_2

    .line 1071
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1074
    :cond_3
    :goto_1
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge p2, v1, :cond_4

    .line 1075
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1076
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->incrementSelectorIndices([I)V

    .line 1077
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1078
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-lt p2, v1, :cond_3

    .line 1080
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1083
    :cond_4
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    if-eq v0, p1, :cond_5

    .line 1084
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollChanged(IIII)V

    :cond_5
    return-void
.end method

.method public setColor(II)V
    .locals 1

    .line 2106
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    .line 2107
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    .line 2108
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2109
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setColor(III)V
    .locals 0

    .line 2113
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorEvenWhellPaintColor:I

    .line 2114
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    .line 2115
    iput p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorOddWhellPaintColor:I

    .line 2116
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setDisableInput(I)V
    .locals 3

    const/4 v0, 0x1

    .line 2096
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    .line 2097
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2099
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    add-int/2addr p1, v0

    .line 2100
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 2101
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    .line 2102
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1456
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    .line 1457
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1459
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1462
    :cond_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1464
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1465
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1466
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .line 2120
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1041
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1044
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1047
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1142
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    .line 1143
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1144
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    return-void
.end method

.method public setInputSize(I)V
    .locals 2

    .line 2124
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2125
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1411
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1417
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    .line 1418
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1419
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1421
    :cond_1
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1422
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 1423
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1424
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1425
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    .line 1426
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    return-void

    .line 1415
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1373
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1379
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    .line 1380
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-le p1, v0, :cond_1

    .line 1381
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1383
    :cond_1
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1384
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 1385
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1386
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1387
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    .line 1388
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    return-void

    .line 1377
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1295
    iput-wide p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    return-void
.end method

.method public setSelectorSize(I)V
    .locals 2

    .line 2129
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    int-to-float p1, p1

    const/4 v1, 0x1

    .line 2130
    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2131
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    .line 2132
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1336
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1337
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    const-string p1, "NumberPickerZTE"

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValue,  setValueInternal, mMaxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1341
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1277
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 1278
    :cond_1
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1280
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
