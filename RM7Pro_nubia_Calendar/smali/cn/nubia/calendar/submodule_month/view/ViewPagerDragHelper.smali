.class public Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;
.super Ljava/lang/Object;
.source "ViewPagerDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;
    }
.end annotation


# static fields
.field public static final DRAG_STATE_DRAGING:I = 0x3

.field public static final DRAG_STATE_IDLE:I = 0x2

.field public static final DRAG_STATE_SETTING:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field public static final STATE_BOTTOM:I = 0x1

.field public static final STATE_TOP:I


# instance fields
.field private mActivePointerId:I

.field private mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

.field private mCanIntercept:Z

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLanguage:Ljava/lang/String;

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMinVelocity:F

.field private mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

.field private final mParentView:Landroid/view/ViewGroup;

.field private mState:I

.field private mTouchSlop:I

.field private mTranslationHeight:F

.field private mTranslationMaxY:F

.field private mTranslationMinY:F

.field private mTranslationY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "capturedView"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mState:I

    .line 34
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCanIntercept:Z

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parent view may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    if-nez p3, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capture view may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 61
    iput-object p3, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    .line 62
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 63
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTouchSlop:I

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mMinVelocity:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 66
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLanguage:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mState:I

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationHeight:F

    return v0
.end method

.method private bounceBack()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 482
    const/4 v1, 0x4

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 484
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 486
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v6, [F

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 488
    .local v0, "bounceBackAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 489
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;-><init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$6;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$6;-><init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V

    .line 523
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 533
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 534
    return-void

    .line 502
    .end local v0    # "bounceBackAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v6, [F

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMaxY:F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 504
    .restart local v0    # "bounceBackAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 505
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$5;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$5;-><init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private bounceTo(FF)V
    .locals 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 420
    const/4 v1, 0x4

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 422
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 423
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 425
    .local v0, "bounceToAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 428
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$1;-><init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 467
    :goto_0
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;-><init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V

    .line 468
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 478
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 479
    return-void

    .line 445
    .end local v0    # "bounceToAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMaxY:F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 447
    .restart local v0    # "bounceToAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 450
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 454
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$2;-><init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 402
    if-eqz p1, :cond_0

    mul-float v0, p2, p2

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTouchSlop:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTouchSlop:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTouchSlopY(Landroid/view/View;FF)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 397
    if-eqz p1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    mul-float v0, p3, p3

    mul-float v1, p2, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 127
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 128
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 129
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 137
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 138
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 139
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    goto :goto_0
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    array-length v4, v4

    if-gt v4, p1, :cond_2

    .line 144
    :cond_0
    add-int/lit8 v4, p1, 0x1

    new-array v0, v4, [F

    .line 145
    .local v0, "imx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v1, v4, [F

    .line 146
    .local v1, "imy":[F
    add-int/lit8 v4, p1, 0x1

    new-array v2, v4, [F

    .line 147
    .local v2, "lmx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v3, v4, [F

    .line 148
    .local v3, "lmy":[F
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_1
    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    .line 157
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    .line 158
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    .line 159
    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    .line 161
    .end local v0    # "imx":[F
    .end local v1    # "imy":[F
    .end local v2    # "lmx":[F
    .end local v3    # "lmy":[F
    :cond_2
    return-void
.end method

.method private isListViewReachTopEdge()Z
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "result":Z
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 101
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "topChildView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getPaddingTop()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 107
    .end local v1    # "topChildView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 108
    const/4 v0, 0x1

    .line 110
    :cond_1
    return v0
.end method

.method private saveInitialMotion(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 164
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 166
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 167
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 171
    .local v1, "pointerCount":I
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    array-length v5, v5

    if-le v1, v5, :cond_1

    .line 183
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 176
    .local v2, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 177
    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 178
    .local v4, "y":F
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    array-length v5, v5

    if-le v5, v2, :cond_2

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    array-length v5, v5

    if-le v5, v2, :cond_2

    .line 179
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 180
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 174
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    .line 115
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->clearMotionHistory()V

    .line 116
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 120
    :cond_0
    return-void
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 406
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 407
    .local v1, "childCount":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 408
    .local v3, "translationY":F
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 409
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 410
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt p1, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge p1, v4, :cond_0

    int-to-float v4, p2

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    int-to-float v4, p2

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 416
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 408
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 416
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDragState()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mState:I

    return v0
.end method

.method public getTranslationHeight()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationHeight:F

    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 282
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 283
    .local v4, "actionIndex":I
    if-nez v3, :cond_2

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->cancel()V

    .line 287
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 288
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 291
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 292
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 294
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 295
    .local v16, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 296
    .local v17, "y":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 297
    .local v12, "pointerId":I
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v13

    .line 298
    .local v13, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v12}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->saveInitialMotion(FFI)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_0

    .line 300
    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    goto :goto_0

    .line 306
    .end local v12    # "pointerId":I
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 307
    .restart local v12    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 308
    .restart local v16    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 309
    .restart local v17    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v12}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->saveInitialMotion(FFI)V

    .line 310
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v13

    .line 311
    .restart local v13    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_0

    .line 312
    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    goto/16 :goto_0

    .line 318
    .end local v12    # "pointerId":I
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 321
    .local v8, "index":I
    if-ltz v8, :cond_0

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 325
    .restart local v17    # "y":F
    const/4 v9, 0x0

    .line 326
    .local v9, "lastY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mLastMotionY:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    aget v9, v18, v19

    .line 329
    :cond_4
    sub-float v7, v17, v9

    .line 330
    .local v7, "idy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    move/from16 v18, v0

    add-float v18, v18, v7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMaxY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 333
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationHeight:F

    move/from16 v21, v0

    div-float v20, v20, v21

    sub-float v19, v19, v20

    .line 338
    invoke-interface/range {v18 .. v19}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onDragHelperScrolled(F)V

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    invoke-direct/range {p0 .. p1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 333
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMaxY:F

    move/from16 v18, v0

    goto :goto_1

    .line 346
    .end local v7    # "idy":F
    .end local v8    # "index":I
    .end local v9    # "lastY":F
    .end local v17    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 347
    .restart local v12    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v12, v0, :cond_c

    .line 348
    const/4 v10, -0x1

    .line 349
    .local v10, "newActivePointer":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 350
    .local v11, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v11, :cond_b

    .line 351
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 352
    .local v6, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_a

    .line 350
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 355
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 356
    .restart local v16    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 357
    .restart local v17    # "y":F
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 358
    move-object/from16 v0, p0

    iput v6, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    .line 359
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    .line 364
    .end local v6    # "id":I
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_b
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    .line 367
    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    .line 368
    .local v15, "velocityY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    .line 369
    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    .line 370
    .local v14, "velocityX":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mMinVelocity:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_d

    .line 371
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->bounceBack()V

    .line 376
    .end local v5    # "i":I
    .end local v10    # "newActivePointer":I
    .end local v11    # "pointerCount":I
    .end local v14    # "velocityX":F
    .end local v15    # "velocityY":F
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_0

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 373
    .restart local v5    # "i":I
    .restart local v10    # "newActivePointer":I
    .restart local v11    # "pointerCount":I
    .restart local v14    # "velocityX":F
    .restart local v15    # "velocityY":F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->bounceTo(FF)V

    goto :goto_3

    .line 382
    .end local v5    # "i":I
    .end local v10    # "newActivePointer":I
    .end local v11    # "pointerCount":I
    .end local v12    # "pointerId":I
    .end local v14    # "velocityX":F
    .end local v15    # "velocityY":F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    .line 384
    .restart local v15    # "velocityY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    .line 385
    .restart local v14    # "velocityX":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mMinVelocity:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_e

    .line 386
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->bounceBack()V

    .line 390
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->cancel()V

    goto/16 :goto_0

    .line 388
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->bounceTo(FF)V

    goto :goto_4

    .line 292
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

.method public setBottomListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V
    .locals 0
    .param p1, "listView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mBottomListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 73
    return-void
.end method

.method public setBottomTranslation(FF)V
    .locals 2
    .param p1, "translationMinY"    # F
    .param p2, "translationHeight"    # F

    .prologue
    .line 89
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    .line 90
    iput p2, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationHeight:F

    .line 91
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMaxY:F

    .line 92
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMaxY:F

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationMinY:F

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mTranslationY:F

    goto :goto_0
.end method

.method public setOnDragChangeListener(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;)V
    .locals 0
    .param p1, "dragHelperChangeListener"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    .line 539
    return-void
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 187
    const/4 v10, 0x1

    .line 275
    :goto_0
    return v10

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 189
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 190
    .local v1, "actionIndex":I
    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->cancel()V

    .line 193
    :cond_1
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 194
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 196
    :cond_2
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 197
    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCanIntercept:Z

    goto :goto_0

    .line 199
    :pswitch_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCanIntercept:Z

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 201
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 202
    .local v9, "y":F
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 203
    .local v6, "pointerId":I
    invoke-direct {p0, v8, v9, v6}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->saveInitialMotion(FFI)V

    .line 204
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 205
    .local v7, "toCapture":Landroid/view/View;
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v10, :cond_3

    .line 206
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    goto :goto_1

    .line 212
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 213
    .restart local v6    # "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 214
    .restart local v8    # "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 215
    .restart local v9    # "y":F
    invoke-direct {p0, v8, v9, v6}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->saveInitialMotion(FFI)V

    .line 216
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 217
    .restart local v7    # "toCapture":Landroid/view/View;
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v10, :cond_3

    .line 218
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    goto :goto_1

    .line 224
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    if-eqz v10, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 227
    .local v5, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 228
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 229
    .restart local v6    # "pointerId":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 230
    .restart local v8    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 231
    .restart local v9    # "y":F
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    aget v10, v10, v6

    sub-float v2, v8, v10

    .line 232
    .local v2, "dx":F
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionY:[F

    aget v10, v10, v6

    sub-float v3, v9, v10

    .line 233
    .local v3, "dy":F
    const/4 v10, -0x1

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mActivePointerId:I

    if-eq v10, v11, :cond_6

    .line 234
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    .line 235
    invoke-direct {p0, v10, v2, v3}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 236
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCanIntercept:Z

    .line 237
    const/4 v10, 0x3

    iput v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 238
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    if-eqz v10, :cond_4

    .line 239
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onDragHelperScrolled(F)V

    .line 240
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 241
    invoke-interface {v10, v11}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onScrollStateChanged(I)V

    .line 260
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 246
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v6    # "pointerId":I
    .restart local v8    # "x":F
    .restart local v9    # "y":F
    :cond_5
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCapturedView:Landroid/view/View;

    invoke-direct {p0, v10, v2, v3}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->checkTouchSlopY(Landroid/view/View;FF)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mState:I

    if-nez v10, :cond_6

    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-lez v10, :cond_6

    .line 248
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->isListViewReachTopEdge()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 249
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mCanIntercept:Z

    .line 250
    const/4 v10, 0x3

    iput v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 251
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    if-eqz v10, :cond_4

    .line 252
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onDragHelperScrolled(F)V

    .line 253
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mOnDragChangeListener:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mDragState:I

    .line 254
    invoke-interface {v10, v11}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onScrollStateChanged(I)V

    goto :goto_3

    .line 227
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 264
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "i":I
    .end local v5    # "pointerCount":I
    .end local v6    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 265
    .restart local v6    # "pointerId":I
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->mInitialMotionX:[F

    array-length v10, v10

    if-ge v6, v10, :cond_3

    .line 266
    invoke-direct {p0, v6}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_1

    .line 271
    .end local v6    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->cancel()V

    goto/16 :goto_1

    .line 197
    nop

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
