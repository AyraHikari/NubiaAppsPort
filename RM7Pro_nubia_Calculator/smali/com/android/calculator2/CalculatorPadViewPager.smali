.class public Lcom/android/calculator2/CalculatorPadViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CalculatorPadViewPager.java"


# instance fields
.field private mClickedItemIndex:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureWatcher:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

.field private final mStaticPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/CalculatorPadViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 165
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p2, Lcom/android/calculator2/CalculatorPadViewPager$1;

    invoke-direct {p2, p0}, Lcom/android/calculator2/CalculatorPadViewPager$1;-><init>(Lcom/android/calculator2/CalculatorPadViewPager;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mStaticPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 99
    new-instance p2, Lcom/android/calculator2/CalculatorPadViewPager$2;

    invoke-direct {p2, p0}, Lcom/android/calculator2/CalculatorPadViewPager$2;-><init>(Lcom/android/calculator2/CalculatorPadViewPager;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 122
    new-instance p2, Lcom/android/calculator2/CalculatorPadViewPager$3;

    invoke-direct {p2, p0}, Lcom/android/calculator2/CalculatorPadViewPager$3;-><init>(Lcom/android/calculator2/CalculatorPadViewPager;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 137
    new-instance p2, Lcom/android/calculator2/CalculatorPadViewPager$4;

    invoke-direct {p2, p0}, Lcom/android/calculator2/CalculatorPadViewPager$4;-><init>(Lcom/android/calculator2/CalculatorPadViewPager;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mGestureWatcher:Landroid/view/GestureDetector$SimpleOnGestureListener;

    const/4 p2, -0x1

    .line 158
    iput p2, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mClickedItemIndex:I

    .line 167
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mGestureWatcher:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mGestureDetector:Landroid/view/GestureDetector;

    .line 168
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 170
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mStaticPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorPadViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/high16 p1, -0x1000000

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorPadViewPager;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070211

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorPadViewPager;->setPageMargin(I)V

    .line 173
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-virtual {p0, p2, p1}, Lcom/android/calculator2/CalculatorPadViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 174
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorPadViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/CalculatorPadViewPager;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mClickedItemIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/calculator2/CalculatorPadViewPager;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mClickedItemIndex:I

    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onFinishInflate()V

    .line 182
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 185
    iget-object v0, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getCurrentItem()I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->isAccessibilityFocused()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    move v5, v4

    :goto_0
    if-ltz v5, :cond_3

    .line 204
    invoke-virtual {p0, v5}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 205
    iput v5, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mClickedItemIndex:I

    return v2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const/4 v5, -0x1

    .line 211
    iput v5, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mClickedItemIndex:I

    .line 215
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 216
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 217
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    :goto_1
    if-ltz v4, :cond_8

    .line 219
    invoke-virtual {p0, v3, v4}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildDrawingOrder(II)I

    move-result v5

    .line 220
    invoke-virtual {p0, v5}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 221
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    .line 222
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_7

    .line 223
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gez v7, :cond_7

    if-nez v1, :cond_5

    .line 225
    iput v5, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mClickedItemIndex:I

    .line 227
    :cond_5
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getCurrentItem()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, p0, :cond_6

    move v0, v2

    :cond_6
    return v0

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v2

    :catch_0
    move-exception p0

    const-string p1, "Calculator"

    const-string v1, "Error intercepting touch event"

    .line 234
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorPadViewPager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Calculator"

    const-string v0, "Error processing touch event"

    .line 248
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
