.class public Lcn/nubia/weather/ui/view/NubiaOverScrollView;
.super Landroid/widget/FrameLayout;
.source "NubiaOverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_OVER_SCROLL_DISTANCE:I = 0xc8

.field private static final REFRESH_DISTANCE:F = 60.0f

.field private static final SCROLL_VIEW_DEFAULT_HEIGHT:I = 0x813

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_SCROLLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NubiaOverScrollView"


# instance fields
.field private mActivePointerId:I

.field private mBackAnimator:Landroid/animation/ValueAnimator;

.field private mClipBoundsStartY:I

.field private mClipRect:Landroid/graphics/Rect;

.field private mDensity:F

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

.field private mRefreshAnimator:Landroid/animation/ValueAnimator;

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 37
    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 49
    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    return-object v0
.end method

.method private backAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 534
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelSecondRefreshAnimation()V

    .line 535
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelBackAnimation()V

    .line 536
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    .line 537
    .local v0, "scrollY":I
    if-gtz v0, :cond_0

    .line 538
    new-array v1, v5, [I

    aput v0, v1, v3

    aput v3, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    .line 539
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 540
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 541
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$5;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$5;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 552
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 555
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 556
    new-array v1, v5, [I

    aput v0, v1, v3

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v2

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    .line 557
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 558
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$6;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$6;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 573
    :cond_1
    return-void
.end method

.method private cancelBackAnimation()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 530
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    .line 531
    return-void
.end method

.method private firstBackRefreshAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 458
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    .line 459
    .local v1, "scrollY":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x42700000    # 60.0f

    iget v5, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 460
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$1;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$1;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 473
    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 482
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 371
    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "child":Landroid/view/View;
    const-string v2, "NubiaOverScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScrollRange: child.getHeight() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; getHeight() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; getPaddingTop() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; getPaddingBottom() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 374
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 373
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 376
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 68
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMinimumVelocity:I

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMaximumVelocity:I

    .line 71
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipRect:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    .line 75
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 344
    :cond_0
    return-void
.end method

.method private isInScrollRange(I)Z
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 323
    if-lez p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveBy(I)V
    .locals 4
    .param p1, "deltaY"    # I

    .prologue
    .line 413
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    const/high16 v2, -0x3cb80000    # -200.0f

    iget v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 414
    const/4 p1, 0x0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    .line 418
    .local v0, "scrollY":I
    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->isInScrollRange(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    .line 424
    :goto_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onDragScrolled(I)V

    .line 427
    :cond_1
    return-void

    .line 421
    :cond_2
    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->overScrollBy(II)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 328
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 329
    .local v1, "pointerId":I
    iget v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 331
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 332
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 334
    iget-object v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 338
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollBy(II)V
    .locals 6
    .param p1, "scrollY"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/high16 v5, 0x3fe00000    # 1.75f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, -0x3d900000    # -60.0f

    const/4 v2, 0x0

    .line 431
    if-gtz p1, :cond_3

    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 432
    if-gtz p2, :cond_2

    .line 433
    int-to-float v0, p2

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    .line 447
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 449
    if-gtz p2, :cond_5

    .line 450
    int-to-float v0, p2

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    .line 455
    :cond_1
    :goto_1
    return-void

    .line 435
    :cond_2
    int-to-float v0, p2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_0

    .line 438
    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 440
    if-gtz p2, :cond_4

    .line 441
    int-to-float v0, p2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_0

    .line 443
    :cond_4
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_0

    .line 452
    :cond_5
    int-to-float v0, p2

    div-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 351
    :cond_0
    return-void
.end method

.method private requestDisallowInterceptTouchEvent()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 363
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 364
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 366
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelSecondRefreshAnimation()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 487
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    .line 488
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 394
    .local v0, "y":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 395
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 396
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onFlingScrolled(I)V

    .line 400
    .end local v0    # "y":I
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 401
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 115
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingLeft()I

    move-result v3

    .line 116
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    invoke-static {p2, v3, v4}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 117
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 118
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 119
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 126
    invoke-static {p2, v3, v4}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 129
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 131
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 132
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v13, -0x1

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 146
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 211
    :goto_0
    return v0

    .line 150
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 211
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 154
    .local v11, "y":I
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 155
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->recycleVelocityTracker()V

    .line 156
    iput v11, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 157
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 158
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->initOrResetVelocityTracker()V

    .line 159
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 160
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v0

    :cond_2
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 161
    iput v13, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    goto :goto_1

    .line 166
    .end local v11    # "y":I
    :pswitch_2
    iget v8, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 167
    .local v8, "activePointerId":I
    if-eq v8, v13, :cond_1

    .line 171
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 172
    .local v10, "pointerIndex":I
    if-ne v10, v13, :cond_3

    .line 173
    const-string v0, "NubiaOverScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 179
    .restart local v11    # "y":I
    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 180
    .local v12, "yDiff":I
    int-to-float v1, v12

    iget v2, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 181
    iput v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 182
    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 183
    iput v11, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 184
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->initVelocityTrackerIfNotExists()V

    .line 185
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 186
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->requestDisallowInterceptTouchEvent()V

    goto :goto_1

    .line 193
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_3
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 194
    iput v13, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 195
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 198
    :cond_4
    iput v13, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    goto/16 :goto_1

    .line 201
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 202
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 203
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 207
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 136
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 137
    const-string v0, "NubiaOverScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout: top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mClipBoundsStartY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipBoundsStartY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipBoundsStartY:I

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 140
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 81
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 86
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getMeasuredHeight()I

    move-result v3

    .line 88
    .local v3, "height":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 89
    const-string v6, "NubiaOverScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMeasure: height : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ;; child : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ;; getRootView().getHeight(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v6, "NubiaOverScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMeasure: child.getMeasuredHeight() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v6, "NubiaOverScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMeasure: getPaddingTop() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v6, "NubiaOverScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMeasure: getPaddingBottom() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingLeft()I

    move-result v6

    .line 96
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 95
    invoke-static {p1, v6, v7}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 97
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 99
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 101
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 103
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 406
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-interface {v0, p2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onScrollChanged(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->initVelocityTrackerIfNotExists()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    .line 221
    .local v14, "action":I
    and-int/lit16 v2, v14, 0xff

    packed-switch v2, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 225
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 226
    const/4 v2, 0x0

    goto :goto_1

    .line 228
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 229
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->requestDisallowInterceptTouchEvent()V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 232
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 234
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    goto :goto_0

    .line 228
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 239
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 240
    .local v15, "activePointerIndex":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_4

    .line 241
    const-string v2, "NubiaOverScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 246
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    sub-int v16, v2, v19

    .line 248
    .local v16, "deltaY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 249
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->requestDisallowInterceptTouchEvent()V

    .line 250
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 251
    if-lez v16, :cond_6

    .line 252
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 256
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->moveBy(I)V

    .line 261
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 254
    :cond_6
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    goto :goto_3

    .line 266
    .end local v15    # "activePointerIndex":I
    .end local v16    # "deltaY":I
    .end local v19    # "y":I
    :pswitch_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 267
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 270
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 271
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v6, v2

    .line 273
    .local v6, "initialVelocity":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_7

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->isInScrollRange(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 276
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0x96

    .line 275
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 289
    :goto_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 291
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 281
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x3d900000    # -60.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 282
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->firstBackRefreshAnimation()V

    goto :goto_4

    .line 285
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->backAnimation()V

    goto :goto_4

    .line 297
    .end local v6    # "initialVelocity":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 298
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v13

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 302
    :cond_9
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 304
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 309
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 310
    .local v17, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 311
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 316
    .end local v17    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public secondRefreshBackAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3e800000    # 0.25f

    .line 491
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelBackAnimation()V

    .line 492
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelSecondRefreshAnimation()V

    .line 493
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    .line 494
    .local v0, "scrollY":I
    if-gtz v0, :cond_1

    .line 495
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    .line 496
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 497
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 498
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$4;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$4;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 518
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-interface {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->backAnimationEnd()V

    goto :goto_0
.end method

.method public setAtTop()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, v0, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 601
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onFlingScrolled(I)V

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->invalidate()V

    .line 605
    return-void
.end method

.method public setClipBoundsStartY(I)V
    .locals 0
    .param p1, "clipBoundsStartY"    # I

    .prologue
    .line 592
    iput p1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipBoundsStartY:I

    .line 593
    return-void
.end method

.method public setOnScrollChangedListener(Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    .prologue
    .line 576
    iput-object p1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    .line 577
    return-void
.end method

.method public smoothScrollBySlow(III)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 387
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->invalidate()V

    .line 388
    return-void
.end method

.method public smoothScrollToSlow(III)V
    .locals 3
    .param p1, "fx"    # I
    .param p2, "fy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v2

    sub-int v0, p1, v2

    .line 381
    .local v0, "dx":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    sub-int v1, p2, v2

    .line 382
    .local v1, "dy":I
    invoke-virtual {p0, v0, v1, p3}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->smoothScrollBySlow(III)V

    .line 383
    return-void
.end method
