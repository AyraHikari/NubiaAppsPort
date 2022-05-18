.class public Lcom/zte/mifavor/widget/PagerSecond;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSecond.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/PagerSecond$TabContainer;,
        Lcom/zte/mifavor/widget/PagerSecond$MyTab;,
        Lcom/zte/mifavor/widget/PagerSecond$PageListener;,
        Lcom/zte/mifavor/widget/PagerSecond$SavedState;,
        Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final DBG:Z = false

.field private static final RESET_INTERPOLATOR:I = 0x1

.field private static final SMOOTH_SCROLL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PagerSecond"


# instance fields
.field private TabWidthMax:I

.field private currentPosition:I

.field private currentPositionOffset:F

.field private currentTabBoldPos:I

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorHeight:I

.field private interpolator:Ljava/lang/reflect/Field;

.field private lastScrollX:I

.field private mAtStartSide:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentTabRect:I

.field private mCutOffTab:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndicatorColor:I

.field private mInterpolatorInstance:Landroid/view/animation/Interpolator;

.field private mIsMainTab:Z

.field private mTabTextColor:Landroid/content/res/ColorStateList;

.field private mTabTextSize:F

.field private mTextAllCaps:Z

.field private mWithMenu:Z

.field private final pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private reallyTab:Landroid/view/View;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private srcollerInstance:Landroid/widget/Scroller;

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabShadowHeight:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textPadding:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/PagerSecond;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 146
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/PagerSecond;->isMainTab(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/zte/extres/R$attr;->mfvTabStyle:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/zte/extres/R$attr;->mfvSubTabStyle:I

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 150
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/PagerSecond;->isMainTab(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/zte/extres/R$style;->PagerSecondStyle:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/zte/extres/R$style;->PagerSecondStyle_Sub:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerSecond;Lcom/zte/mifavor/widget/PagerSecond$1;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    const/4 v2, 0x0

    .line 79
    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    .line 80
    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentTabBoldPos:I

    .line 81
    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mCurrentTabRect:I

    const/high16 v2, 0x1a000000

    .line 85
    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 86
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 87
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTextAllCaps:Z

    const/16 v2, 0x34

    .line 88
    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    const/4 v2, 0x2

    .line 89
    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    const/4 v3, 0x4

    .line 90
    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    const/16 v3, 0xc

    .line 91
    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    const/16 v3, 0xe

    .line 92
    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 93
    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    const/4 v2, 0x1

    .line 94
    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    .line 99
    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    .line 110
    iput-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->reallyTab:Landroid/view/View;

    .line 111
    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/PagerSecond$1;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/PagerSecond;->setFillViewport(Z)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/PagerSecond;->setWillNotDraw(Z)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/PagerSecond;->setHorizontalFadingEdgeEnabled(Z)V

    .line 160
    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/PagerSecond$2;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;-><init>(Lcom/zte/mifavor/widget/PagerSecond;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    .line 169
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 170
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 175
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 177
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/zte/extres/R$dimen;->mfvc_line_normal_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 179
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 181
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 183
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 185
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    .line 187
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    .line 189
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    .line 192
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/zte/extres/R$color;->tab_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 193
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/zte/extres/R$color;->mfv_common_actb_ab:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    .line 195
    sget-object v1, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_mfvIsMainTab:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    .line 198
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_android_textSize:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextSize:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextSize:F

    .line 199
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 200
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 202
    :cond_0
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    .line 204
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 205
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 207
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 210
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 213
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 216
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 219
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabShadowHeight:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    .line 222
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_1

    .line 223
    sget p2, Lcom/zte/extres/R$drawable;->item_background_borderless_material:I

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 224
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    goto :goto_0

    .line 228
    :cond_1
    sget p2, Lcom/zte/extres/R$drawable;->item_background_transparent:I

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 229
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 233
    :goto_0
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 234
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 236
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 237
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 240
    sget p2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_android_textAllCaps:I

    iget-boolean p3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTextAllCaps:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTextAllCaps:Z

    .line 243
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    .line 246
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    .line 250
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/PagerSecond;)Ljava/lang/reflect/Field;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->interpolator:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/zte/mifavor/widget/PagerSecond;F)F
    .locals 0

    .line 61
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/zte/mifavor/widget/PagerSecond;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mCurrentTabRect:I

    return p1
.end method

.method static synthetic access$1400(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method static synthetic access$1500(Lcom/zte/mifavor/widget/PagerSecond;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mCutOffTab:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/zte/mifavor/widget/PagerSecond;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->TabWidthMax:I

    return p0
.end method

.method static synthetic access$1602(Lcom/zte/mifavor/widget/PagerSecond;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->TabWidthMax:I

    return p1
.end method

.method static synthetic access$1700(Lcom/zte/mifavor/widget/PagerSecond;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mAtStartSide:Z

    return p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/Scroller;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->srcollerInstance:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mInterpolatorInstance:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/PagerSecond;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/zte/mifavor/widget/PagerSecond;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$602(Lcom/zte/mifavor/widget/PagerSecond;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentTabBoldPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/PagerSecond;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addIconTab(II)V
    .locals 2

    .line 480
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 5

    .line 488
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 490
    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond$4;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$4;-><init>(Lcom/zte/mifavor/widget/PagerSecond;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mAtStartSide:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v1, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 513
    :cond_1
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 517
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/PagerSecond;->setShouldExpand(Z)V

    .line 518
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const/16 v3, 0x17

    if-nez p1, :cond_4

    .line 520
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    .line 521
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v0, :cond_2

    .line 522
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$style;->mfvc_tab_focused_font:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    .line 524
    :cond_2
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$style;->mfvc_subtab_focused_font:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    .line 527
    :cond_3
    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 528
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 531
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    .line 532
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v0, :cond_5

    .line 533
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7

    .line 534
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$style;->mfvc_tab_normal_font:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    .line 537
    :cond_5
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$style;->mfvc_subtab_normal_font:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    .line 540
    :cond_6
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 541
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 546
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 547
    :goto_3
    invoke-virtual {v0, p2, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextTab(ILjava/lang/CharSequence;)V
    .locals 2

    .line 466
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$MyTab;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/widget/PagerSecond$MyTab;-><init>(Lcom/zte/mifavor/widget/PagerSecond;Landroid/content/Context;)V

    .line 467
    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/PagerSecond$MyTab;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 468
    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/PagerSecond$MyTab;->setGravity(I)V

    .line 469
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond$MyTab;->setSingleLine()V

    .line 472
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/PagerSecond$MyTab;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 473
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->isTextAllCaps()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/PagerSecond$MyTab;->setAllCaps(Z)V

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private getScreenWidth()I
    .locals 2

    .line 312
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 314
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private static isMainTab(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 6

    const-string v0, "PagerSecond"

    const-string v1, "isMainTab"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v0, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 264
    sget v0, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_android_layout_height:I

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 269
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_mfvIsMainTab:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 270
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_mfvIsMainTab:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    .line 273
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_1

    return v4

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_appbar_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/zte/extres/R$dimen;->mfvc_subtab_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v4, 0x2

    .line 282
    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 285
    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/2addr p1, v2

    div-int/2addr p1, v4

    if-le v0, p1, :cond_3

    :cond_2
    move v1, v3

    .line 288
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    nop

    :array_0
    .array-data 4
        0x82
        0x26
    .end array-data
.end method

.method private scrollToChild(II)V
    .locals 6

    .line 589
    iget p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 595
    iget-object p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    .line 596
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 597
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 598
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    .line 617
    div-int/2addr v1, v5

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    sub-int/2addr v0, v1

    goto :goto_1

    :pswitch_0
    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    move v0, p2

    goto :goto_1

    :pswitch_1
    if-ne p1, v3, :cond_2

    .line 604
    div-int/2addr v1, v5

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    :pswitch_2
    move v0, v4

    :goto_1
    if-nez p1, :cond_3

    move p2, v4

    goto :goto_2

    .line 624
    :cond_3
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    .line 629
    :goto_2
    iget p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    if-eq p2, p1, :cond_5

    .line 630
    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    .line 632
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTabStyles()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 552
    :goto_0
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-ge v1, v2, :cond_4

    .line 554
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 558
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 559
    check-cast v2, Lcom/zte/mifavor/widget/TextViewZTE;

    .line 560
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentTabBoldPos:I

    if-ne v3, v1, :cond_1

    .line 562
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v3, :cond_0

    .line 563
    sget v3, Lcom/zte/extres/R$style;->mfvc_tab_focused_font:I

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextAppearance(I)V

    goto :goto_1

    .line 565
    :cond_0
    sget v3, Lcom/zte/extres/R$style;->mfvc_subtab_focused_font:I

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextAppearance(I)V

    .line 567
    :goto_1
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, -0x1

    .line 568
    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setMarqueeRepeatLimit(I)V

    goto :goto_3

    .line 571
    :cond_1
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v3, :cond_2

    .line 572
    sget v3, Lcom/zte/extres/R$style;->mfvc_tab_normal_font:I

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextAppearance(I)V

    goto :goto_2

    .line 574
    :cond_2
    sget v3, Lcom/zte/extres/R$style;->mfvc_subtab_normal_font:I

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextAppearance(I)V

    .line 576
    :goto_2
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_3
    const/4 v3, 0x5

    .line 578
    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextFontScale(I)V

    .line 579
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextSize:F

    invoke-virtual {v2, v0, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextSize(IF)V

    .line 581
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTextAllCaps:Z

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TextViewZTE;->setAllCaps(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getAtStartSide()Z
    .locals 0

    .line 890
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mAtStartSide:Z

    return p0
.end method

.method public getDividerColor()I
    .locals 0

    .line 785
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    return p0
.end method

.method public getDividerPadding()I
    .locals 0

    .line 803
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    return p0
.end method

.method public getIndicatorColor()I
    .locals 0

    .line 741
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    return p0
.end method

.method public getIndicatorHeight()I
    .locals 0

    .line 771
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    return p0
.end method

.method public getScrollOffset()I
    .locals 0

    .line 812
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    return p0
.end method

.method public getShouldExpand()Z
    .locals 0

    .line 821
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    return p0
.end method

.method public getTabBackground()I
    .locals 0

    .line 869
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    return p0
.end method

.method public getTabPaddingLeftRight()I
    .locals 0

    .line 877
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    return p0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTextSize()F
    .locals 0

    .line 839
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextSize:F

    return p0
.end method

.method public getUnderlineHeight()I
    .locals 0

    .line 794
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    return p0
.end method

.method public isTextAllCaps()Z
    .locals 0

    .line 830
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTextAllCaps:Z

    return p0
.end method

.method public isWithMenu()Z
    .locals 0

    .line 303
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mWithMenu:Z

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 424
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    const/4 v0, 0x0

    .line 426
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 430
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;

    .line 431
    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    .line 429
    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->addIconTab(II)V

    goto :goto_1

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->addTextTab(ILjava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 440
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond$3;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/PagerSecond$3;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 639
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 640
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getHeight()I

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 654
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 655
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 657
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 658
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 659
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 661
    iget v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    mul-float/2addr v5, v4

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float/2addr v4, v2

    add-float v2, v5, v4

    .line 663
    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v1

    add-float v1, v4, v6

    .line 667
    :cond_2
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mAtStartSide:Z

    if-eqz v3, :cond_3

    .line 668
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 671
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->mCurrentTabRect:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->reallyTab:Landroid/view/View;

    .line 673
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->reallyTab:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 674
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->reallyTab:Landroid/view/View;

    check-cast v3, Lcom/zte/mifavor/widget/TextViewZTE;

    .line 675
    invoke-virtual {v3}, Lcom/zte/mifavor/widget/TextViewZTE;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/TextViewZTE;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 676
    iget-object v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->reallyTab:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_7

    .line 677
    iget-object v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->reallyTab:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    .line 678
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    int-to-float v3, v3

    sub-float v3, v4, v3

    iget v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    .line 679
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v3, :cond_4

    .line 680
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 683
    :cond_4
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v7, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 687
    :cond_5
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v3, :cond_6

    add-float/2addr v2, v4

    .line 688
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    int-to-float v3, v3

    sub-float v6, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v7, v2

    sub-float/2addr v1, v4

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    int-to-float v2, v2

    add-float v8, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    add-float/2addr v2, v4

    .line 691
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v6, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v7, v2

    sub-float/2addr v1, v4

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v8, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 697
    :cond_7
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIsMainTab:Z

    if-eqz v3, :cond_8

    .line 698
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 701
    :cond_8
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v7, v1, v2

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabShadowHeight:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 710
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_a
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 323
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/mifavor/utils/DisplayModeManager;->isMulty(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void

    .line 330
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 332
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/mifavor/utils/DisplayModeManager;->getCurrentMode(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v5

    .line 333
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v5

    .line 335
    :goto_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getScreenWidth()I

    move-result v7

    if-eqz v2, :cond_8

    if-eqz v6, :cond_8

    .line 338
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->mWithMenu:Z

    if-eqz v2, :cond_6

    if-ltz v7, :cond_5

    .line 339
    div-int/2addr v7, v4

    if-gt v1, v7, :cond_3

    goto :goto_2

    :cond_3
    const/high16 p1, -0x80000000

    if-eq v0, p1, :cond_4

    const/high16 p1, 0x40000000    # 2.0f

    if-eq v0, p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v7

    goto :goto_3

    .line 340
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void

    .line 354
    :cond_6
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->mCutOffTab:Z

    .line 355
    iget p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    rem-int/2addr p1, v4

    if-ne p1, v3, :cond_7

    div-int/lit8 p1, v7, 0x2

    if-le v1, p1, :cond_7

    .line 356
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->mCutOffTab:Z

    .line 357
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getPaddingTop()I

    move-result p1

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    add-int/2addr v2, v3

    div-int/2addr v7, v2

    .line 358
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getPaddingBottom()I

    move-result v2

    .line 357
    invoke-virtual {p0, v5, p1, v7, v2}, Lcom/zte/mifavor/widget/PagerSecond;->setPaddingRelative(IIII)V

    .line 362
    :cond_7
    :goto_3
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_4

    .line 365
    :cond_8
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v5, v0, v5, v1}, Lcom/zte/mifavor/widget/PagerSecond;->setPaddingRelative(IIII)V

    .line 368
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->onPageSelected(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 895
    check-cast p1, Lcom/zte/mifavor/widget/PagerSecond$SavedState;

    .line 896
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 897
    iget p1, p1, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 898
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 903
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 904
    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond$SavedState;

    invoke-direct {v1, v0}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 905
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    iput p0, v1, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setAtStartSide()V
    .locals 1

    const/4 v0, 0x1

    .line 886
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->mAtStartSide:Z

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1

    .line 415
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 416
    iget p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentTabBoldPos:I

    .line 417
    iget p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 789
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 790
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 781
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 807
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 808
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 295
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setEnabled(Z)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 766
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    .line 767
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mIndicatorColor:I

    .line 737
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 775
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 776
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 816
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 817
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 825
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 826
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->requestLayout()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 873
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 881
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 882
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 834
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTextAllCaps:Z

    .line 835
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 859
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 2

    .line 849
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 850
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 844
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 843
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mTabTextSize:F

    .line 845
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 865
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 798
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 799
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3

    .line 372
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 374
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 381
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v2, "mScroller"

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_0

    .line 388
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 394
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Scroller;

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->srcollerInstance:Landroid/widget/Scroller;

    .line 396
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->srcollerInstance:Landroid/widget/Scroller;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "mInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->interpolator:Ljava/lang/reflect/Field;

    .line 398
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->interpolator:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 399
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->interpolator:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->srcollerInstance:Landroid/widget/Scroller;

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mInterpolatorInstance:Landroid/view/animation/Interpolator;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "PagerSecond"

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewPager: get interpolator error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->notifyDataSetChanged()V

    return-void

    .line 375
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewPager does not have adapter instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWithMenu(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->mWithMenu:Z

    return-void
.end method
