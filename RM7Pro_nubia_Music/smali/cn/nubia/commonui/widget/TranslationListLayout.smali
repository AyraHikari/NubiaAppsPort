.class public Lcn/nubia/commonui/widget/TranslationListLayout;
.super Landroid/widget/FrameLayout;
.source "TranslationListLayout.java"


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_MARGIN_TOP:F = 65.33f

.field private static final DEFAULT_PAUSED_TRANSLATION:F = 150.0f

.field private static final DEFAULT_TEXT_COLOR:I = 0x4c000000

.field private static final DEFAULT_TEXT_SIZE:F = 12.0f

.field private static final INVALID_POINTER:I = -0x1

.field private static ON_BOTTOM:Z = false

.field private static final STATE_DRAG:I = 0x2

.field private static final STATE_FLING:I = 0x4

.field private static final STATE_IDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static final TOP:I = 0x2

.field private static final TOUCH_SLOP_RATIO:F = 0.3f


# instance fields
.field private OPTS_INPUT:Z

.field private mActivePointerId:I

.field private mCanDraggedDown:Z

.field private mCaptureView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIsBeingDragged:Z

.field private mLastMotionY:F

.field private mMaximumVelocity:F

.field private mMinimumVelocity:F

.field private mPositionState:I

.field private mState:I

.field private mTextTranslation:F

.field private mThresholdTranslation:F

.field private mTouchMoveNumber:I

.field private mTouchSlop:I

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewCanScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    .line 47
    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    .line 53
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 58
    iput v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    .line 153
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCanDraggedDown:Z

    .line 76
    invoke-direct {p0, p2}, Lcn/nubia/commonui/widget/TranslationListLayout;->init(Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/widget/TranslationListLayout;F)F
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/TranslationListLayout;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/commonui/widget/TranslationListLayout;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    return p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/commonui/widget/TranslationListLayout;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    return p1
.end method

.method private canDragCaptureView()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 499
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 500
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 515
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 500
    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 506
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 507
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 509
    :cond_4
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mViewCanScrolled:Z

    .line 510
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->isFindScrollerViewGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mViewCanScrolled:Z

    if-eqz v0, :cond_5

    move v1, v2

    .line 513
    goto :goto_1

    .line 515
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method private createToBottomAnimator(I)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 425
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x32

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMaximumVelocity:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 429
    const/16 v0, 0x32

    .line 434
    :cond_0
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 435
    iget-object v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 437
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 438
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 439
    new-instance v3, Lcn/nubia/commonui/widget/TranslationListLayout$1;

    invoke-direct {v3, p0}, Lcn/nubia/commonui/widget/TranslationListLayout$1;-><init>(Lcn/nubia/commonui/widget/TranslationListLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 449
    iget-object v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const-string v4, "translationY"

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 450
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 453
    iget-object v4, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 454
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 456
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v8

    aput-object v3, v0, v9

    const/4 v2, 0x2

    aput-object v4, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 457
    return-object v1

    .line 431
    :cond_1
    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMaximumVelocity:F

    div-float/2addr v1, v2

    sub-float v1, v7, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x32

    goto :goto_0
.end method

.method private createToTopAnimator(I)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 461
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x32

    .line 462
    if-eqz p1, :cond_0

    .line 463
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMaximumVelocity:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 464
    const/16 v0, 0x32

    .line 469
    :cond_0
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 470
    iget-object v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v7, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 472
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 474
    new-instance v3, Lcn/nubia/commonui/widget/TranslationListLayout$2;

    invoke-direct {v3, p0}, Lcn/nubia/commonui/widget/TranslationListLayout$2;-><init>(Lcn/nubia/commonui/widget/TranslationListLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 483
    iget-object v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTextTranslation:F

    neg-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 485
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 486
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 488
    iget-object v4, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 489
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 491
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v8

    aput-object v3, v0, v9

    const/4 v2, 0x2

    aput-object v4, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 492
    return-object v1

    .line 466
    :cond_1
    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMaximumVelocity:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x32

    goto :goto_0
.end method

.method private doBackAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 388
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 389
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 390
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToBottomAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 402
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToTopAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 395
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 396
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToBottomAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 398
    :cond_2
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToTopAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private doBackAnimation(I)V
    .locals 3

    .prologue
    .line 405
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 406
    if-lez p1, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToBottomAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 422
    :goto_0
    return-void

    .line 409
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    const v1, 0x3f666666    # 0.9f

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 410
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToBottomAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 412
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToTopAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 416
    :cond_2
    if-gez p1, :cond_3

    .line 417
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToTopAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 419
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->createToBottomAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 80
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcn/nubia/commonui/R$styleable;->TranslationListLayout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 83
    sget v0, Lcn/nubia/commonui/R$styleable;->TranslationListLayout_draggedText:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcn/nubia/commonui/R$string;->nubia_translation_list_dragged_text:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    sget v3, Lcn/nubia/commonui/R$styleable;->TranslationListLayout_textSize:I

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 89
    sget v4, Lcn/nubia/commonui/R$styleable;->TranslationListLayout_textColor:I

    const/high16 v5, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 90
    sget v5, Lcn/nubia/commonui/R$styleable;->TranslationListLayout_hintMarginTop:I

    const v6, 0x4282a8f6    # 65.33f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 92
    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v3

    int-to-float v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTextTranslation:F

    .line 93
    sget v6, Lcn/nubia/commonui/R$styleable;->TranslationListLayout_pausedDistance:I

    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    .line 94
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    invoke-virtual {v0, v8, v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 101
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 105
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMinimumVelocity:F

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMaximumVelocity:F

    .line 109
    sget-boolean v0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0, v10}, Lcn/nubia/commonui/widget/TranslationListLayout;->setDefaultPullDown(Z)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_2
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/TranslationListLayout;->setDefaultPullDown(Z)V

    goto :goto_0
.end method

.method private initCaptureView()V
    .locals 2

    .prologue
    .line 597
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    .line 599
    sget-boolean v0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 617
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 619
    :cond_0
    return-void
.end method

.method private isFindScrollerViewGroup(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 519
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 520
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v4, v3

    .line 521
    :goto_0
    if-ge v4, v5, :cond_7

    move-object v0, p1

    .line 522
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    .line 521
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 526
    :cond_1
    instance-of v0, v1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_4

    .line 527
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mViewCanScrolled:Z

    move-object v0, v1

    .line 528
    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView;

    .line 529
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v1, Landroid/widget/AbsListView;

    .line 530
    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    move v2, v0

    .line 548
    :cond_2
    :goto_2
    return v2

    :cond_3
    move v0, v3

    .line 530
    goto :goto_1

    .line 533
    :cond_4
    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    .line 534
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mViewCanScrolled:Z

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_2

    .line 538
    :cond_5
    instance-of v0, v1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 539
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mViewCanScrolled:Z

    .line 540
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_2

    .line 543
    :cond_6
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->isFindScrollerViewGroup(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_7
    move v2, v3

    .line 548
    goto :goto_2
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 360
    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 361
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 362
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    .line 364
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 368
    :cond_0
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 626
    :cond_0
    return-void
.end method

.method private setCaptureViewTranslation(F)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 372
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 374
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 375
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 378
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 379
    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 381
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    div-float/2addr v0, v1

    .line 382
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 383
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTextTranslation:F

    neg-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 384
    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 385
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranslationListLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 557
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initCaptureView()V

    .line 558
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranslationListLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 566
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initCaptureView()V

    .line 567
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranslationListLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 593
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initCaptureView()V

    .line 594
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranslationListLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 575
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initCaptureView()V

    .line 576
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 580
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranslationListLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initCaptureView()V

    .line 585
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 119
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    .line 121
    sget-boolean v0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranslationListLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 170
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCanDraggedDown:Z

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 174
    if-ne v0, v5, :cond_1

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 185
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 186
    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    .line 188
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initOrResetVelocityTracker()V

    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 190
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    if-eqz v0, :cond_3

    .line 191
    iput v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    goto :goto_1

    .line 195
    :pswitch_2
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    if-eqz v0, :cond_4

    .line 196
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    .line 198
    :cond_4
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    .line 199
    if-eq v0, v4, :cond_3

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 205
    if-eq v0, v4, :cond_3

    .line 208
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initVelocityTrackerIfNotExists()V

    .line 209
    iget-object v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 211
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    sub-float v3, v2, v0

    .line 213
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    if-eqz v0, :cond_7

    .line 214
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    if-ne v0, v1, :cond_6

    .line 215
    const v0, 0x3e99999a    # 0.3f

    iget v4, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    .line 222
    :goto_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v4, v0

    if-lez v0, :cond_5

    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    if-ne v0, v1, :cond_5

    .line 223
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 224
    iput v5, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 225
    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 226
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_5

    .line 228
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 231
    :cond_5
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->canDragCaptureView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 233
    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 234
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_3

    .line 236
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 217
    :cond_6
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v0, v0

    goto :goto_2

    .line 220
    :cond_7
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v0, v0

    goto :goto_2

    .line 242
    :pswitch_3
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 243
    iput v4, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    .line 244
    iput v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 245
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->recycleVelocityTracker()V

    .line 246
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    if-eqz v0, :cond_3

    .line 247
    iput v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    goto/16 :goto_1

    .line 251
    :pswitch_4
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    if-eqz v0, :cond_3

    .line 252
    iput v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    goto/16 :goto_1

    .line 256
    :pswitch_5
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 257
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->OPTS_INPUT:Z

    if-eqz v0, :cond_3

    .line 258
    iput v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchMoveNumber:I

    goto/16 :goto_1

    .line 182
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 267
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCanDraggedDown:Z

    if-nez v2, :cond_1

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 271
    goto :goto_0

    .line 272
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->initVelocityTrackerIfNotExists()V

    .line 273
    iget-object v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v1

    .line 353
    goto :goto_0

    .line 276
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getChildCount()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 279
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 280
    iput v5, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 282
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    goto :goto_1

    .line 286
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    goto :goto_1

    .line 291
    :pswitch_3
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 292
    if-ne v0, v7, :cond_5

    .line 293
    const-string v0, "NubiaWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in onTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v2, v0

    .line 298
    int-to-float v0, v2

    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    sub-float/2addr v0, v3

    .line 299
    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    if-ne v3, v1, :cond_7

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 300
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 301
    if-eqz v3, :cond_6

    .line 302
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 304
    :cond_6
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 305
    iput v5, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 306
    cmpl-float v3, v0, v6

    if-lez v3, :cond_a

    .line 307
    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 312
    :cond_7
    :goto_2
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_9

    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    if-ne v3, v5, :cond_9

    .line 313
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->canDragCaptureView()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 314
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 315
    if-eqz v3, :cond_8

    .line 316
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 318
    :cond_8
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 319
    iput v5, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 320
    cmpl-float v3, v0, v6

    if-lez v3, :cond_b

    .line 321
    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 327
    :cond_9
    :goto_3
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_3

    .line 328
    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mLastMotionY:F

    .line 329
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->setCaptureViewTranslation(F)V

    goto/16 :goto_1

    .line 309
    :cond_a
    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_2

    .line 323
    :cond_b
    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_3

    .line 333
    :pswitch_4
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TranslationListLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 337
    :pswitch_5
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_c

    .line 338
    const/4 v2, 0x4

    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mState:I

    .line 339
    iget-object v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 340
    const/16 v3, 0x3e8

    iget v4, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMaximumVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 341
    iget v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 342
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mMinimumVelocity:F

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    .line 343
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->doBackAnimation()V

    .line 347
    :goto_4
    iput v7, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mActivePointerId:I

    .line 348
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mIsBeingDragged:Z

    .line 350
    :cond_c
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 345
    :cond_d
    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/TranslationListLayout;->doBackAnimation(I)V

    goto :goto_4

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 630
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCanDraggedDown:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->canDragCaptureView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    sget-boolean v0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    if-eqz v0, :cond_1

    .line 633
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->setDefaultPullDown(Z)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->setDefaultPullDown(Z)V

    goto :goto_0

    .line 638
    :cond_2
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->setDefaultPullDown(Z)V

    goto :goto_0
.end method

.method public setCanDraggedDownView(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCanDraggedDown:Z

    .line 156
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCanDraggedDown:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->setDefaultPullDown(Z)V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 162
    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 163
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->invalidate()V

    goto :goto_0
.end method

.method public setDefaultPullDown(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 136
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mThresholdTranslation:F

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 139
    iput v3, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    .line 140
    sput-boolean v3, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TranslationListLayout;->invalidate()V

    .line 151
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTextTranslation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 144
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mCaptureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 146
    :cond_2
    iput v2, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mTranslation:F

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout;->mPositionState:I

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/commonui/widget/TranslationListLayout;->ON_BOTTOM:Z

    goto :goto_0
.end method
