.class public Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ExPandViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;
    }
.end annotation


# static fields
.field public static final INVALID_POINTER:I = -0x1

.field public static SCROLLER_4LINE_HEIGHT:F

.field public static SCROLLER_5LINE_HEIGHT:F

.field public static SCROLLER_6LINE_HEIGHT:F


# instance fields
.field private bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

.field private bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

.field private downX:F

.field private mActivePointerId:I

.field private mBottomPanel:Landroid/widget/RelativeLayout;

.field private mBottomPanelSon:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentTranslationY:F

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field private mNextTansHeight:F

.field private mNextTranslationY:F

.field private mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

.field private mPreTansHeight:F

.field private mPreTranslationY:F

.field private mTouchSlop:I

.field private mTranslationX:F

.field private mTranslationY:F

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 29
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    .line 31
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    .line 32
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    .line 33
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    .line 34
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTansHeight:F

    .line 35
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTansHeight:F

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    .line 49
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 29
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    .line 31
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    .line 32
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    .line 33
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    .line 34
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTansHeight:F

    .line 35
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTansHeight:F

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    .line 49
    new-instance v1, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v1}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 58
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 59
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTouchSlop:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private bounceTranslationBack(F)V
    .locals 5
    .param p1, "translationY"    # F

    .prologue
    const v4, 0x3e99999a    # 0.3f

    .line 411
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancelTranslationAnim()V

    .line 412
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    .line 414
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$2;-><init>(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 424
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 425
    return-void
.end method

.method private bounceTranslationTo(F)V
    .locals 5
    .param p1, "translationY"    # F

    .prologue
    const v4, 0x3e99999a    # 0.3f

    .line 394
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancelTranslationAnim()V

    .line 395
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    .line 397
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;-><init>(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 408
    return-void
.end method

.method private cancelTranslationAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 385
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToTranslationAnim:Landroid/animation/ObjectAnimator;

    .line 387
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 389
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceBackTranslationAnim:Landroid/animation/ObjectAnimator;

    .line 391
    :cond_1
    return-void
.end method

.method private checkTouchSlop(FF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 371
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    mul-float v0, p1, p1

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

    .line 146
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 150
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 151
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 161
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 162
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    aput v1, v0, p1

    .line 163
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    aput v1, v0, p1

    goto :goto_0
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    const/4 v6, 0x0

    .line 167
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    array-length v4, v4

    if-gt v4, p1, :cond_2

    .line 168
    :cond_0
    add-int/lit8 v4, p1, 0x1

    new-array v0, v4, [F

    .line 169
    .local v0, "imx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v1, v4, [F

    .line 170
    .local v1, "imy":[F
    add-int/lit8 v4, p1, 0x1

    new-array v2, v4, [F

    .line 171
    .local v2, "lmx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v3, v4, [F

    .line 172
    .local v3, "lmy":[F
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    if-eqz v4, :cond_1

    .line 173
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :cond_1
    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    .line 181
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    .line 182
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    .line 183
    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    .line 185
    .end local v0    # "imx":[F
    .end local v1    # "imy":[F
    .end local v2    # "lmx":[F
    .end local v3    # "lmy":[F
    :cond_2
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 188
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->ensureMotionHistorySizeForId(I)V

    .line 189
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 190
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 191
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v2

    .line 196
    .local v2, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 197
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 198
    .local v3, "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 199
    .local v4, "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 200
    .local v5, "y":F
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    aput v4, v6, v3

    .line 201
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionY:[F

    aput v5, v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    .end local v2    # "pointerCount":I
    .end local v3    # "pointerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public bounceToCurr()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 471
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 472
    .local v1, "currentTime":Landroid/text/format/Time;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 473
    iput v6, v1, Landroid/text/format/Time;->monthDay:I

    .line 474
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 475
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v2

    .line 476
    .local v2, "firstDayOfWeek":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v0

    .line 477
    .local v0, "cl":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 478
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    .line 485
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    if-eqz v3, :cond_1

    .line 486
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    invoke-interface {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;->setDragHelperTranslation(F)V

    .line 488
    :cond_1
    return-void

    .line 479
    :cond_2
    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 480
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    goto :goto_0

    .line 481
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 482
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    goto :goto_0
.end method

.method public bounceToNext()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 429
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 430
    .local v1, "nextTime":Landroid/text/format/Time;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 431
    iput v6, v1, Landroid/text/format/Time;->monthDay:I

    .line 432
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 433
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 434
    .local v0, "firstDayOfWeek":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v3, v1, v0}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v2

    .line 435
    .local v2, "nl":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 436
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    .line 442
    :cond_0
    :goto_0
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceTranslationTo(F)V

    .line 443
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    invoke-interface {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;->setDragHelperTranslation(F)V

    .line 446
    :cond_1
    return-void

    .line 437
    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 438
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    goto :goto_0

    .line 439
    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 440
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    goto :goto_0
.end method

.method public bounceToPre()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 450
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 451
    .local v2, "preTime":Landroid/text/format/Time;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 452
    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 453
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 454
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 455
    .local v0, "firstDayOfWeek":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v3, v2, v0}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v1

    .line 456
    .local v1, "pl":I
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 457
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    .line 463
    :cond_0
    :goto_0
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceTranslationTo(F)V

    .line 464
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    invoke-interface {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;->setDragHelperTranslation(F)V

    .line 467
    :cond_1
    return-void

    .line 458
    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 459
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    goto :goto_0

    .line 460
    :cond_3
    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 461
    sget v3, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    .line 142
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->clearMotionHistory()V

    .line 143
    return-void
.end method

.method public cancelAnim()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancelTranslationAnim()V

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 380
    return-void
.end method

.method public getmBottomPanel()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    .line 502
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    .line 212
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 213
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 214
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancel()V

    .line 217
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_1
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 270
    :goto_1
    return v11

    .line 219
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->downX:F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 221
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 222
    .local v10, "y":F
    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 223
    .local v8, "pointerId":I
    invoke-direct {p0, v9, v10, v8}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->saveInitialMotion(FFI)V

    goto :goto_0

    .line 227
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 229
    .restart local v8    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 230
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 231
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v8}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->saveInitialMotion(FFI)V

    goto :goto_0

    .line 235
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    if-eqz v12, :cond_1

    .line 237
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v7

    .line 238
    .local v7, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_2

    .line 239
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 240
    .restart local v8    # "pointerId":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 241
    .restart local v9    # "x":F
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 242
    .restart local v10    # "y":F
    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionX:[F

    aget v12, v12, v8

    sub-float v2, v9, v12

    .line 243
    .local v2, "dx":F
    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mInitialMotionY:[F

    aget v12, v12, v8

    sub-float v3, v10, v12

    .line 244
    .local v3, "dy":F
    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->checkTouchSlop(FF)Z

    move-result v6

    .line 245
    .local v6, "pastSlop":Z
    if-eqz v6, :cond_3

    .line 246
    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    .line 250
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "pastSlop":Z
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 238
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v6    # "pastSlop":Z
    .restart local v8    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 254
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pastSlop":Z
    .end local v7    # "pointerCount":I
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 256
    .restart local v8    # "pointerId":I
    invoke-direct {p0, v8}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->clearMotionHistory(I)V

    goto :goto_0

    .line 261
    .end local v8    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancel()V

    goto :goto_0

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 217
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    .line 275
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 276
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 277
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancel()V

    .line 281
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 335
    :cond_1
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 339
    :goto_1
    return v11

    .line 283
    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 284
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 285
    .local v10, "y":F
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 286
    .local v8, "pointerId":I
    invoke-direct {p0, v9, v10, v8}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->saveInitialMotion(FFI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 331
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 292
    .restart local v8    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 293
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 294
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v8}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->saveInitialMotion(FFI)V

    .line 295
    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    goto :goto_0

    .line 299
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    iget v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 301
    .local v6, "index":I
    if-ltz v6, :cond_1

    .line 303
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 304
    .restart local v9    # "x":F
    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mLastMotionX:[F

    iget v13, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    aget v12, v12, v13

    sub-float v5, v9, v12

    .line 305
    .local v5, "idx":F
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->processMove(F)V

    .line 306
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 310
    .end local v5    # "idx":F
    .end local v6    # "index":I
    .end local v9    # "x":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 312
    .restart local v8    # "pointerId":I
    iget v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    if-ne v8, v12, :cond_2

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 314
    .local v7, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v7, :cond_2

    .line 315
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 316
    .local v4, "id":I
    iget v12, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    if-eq v4, v12, :cond_3

    .line 317
    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mActivePointerId:I

    .line 322
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v7    # "pointerCount":I
    :cond_2
    invoke-direct {p0, v8}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->clearMotionHistory(I)V

    goto :goto_0

    .line 314
    .restart local v3    # "i":I
    .restart local v4    # "id":I
    .restart local v7    # "pointerCount":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 327
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v7    # "pointerCount":I
    .end local v8    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 336
    :catch_1
    move-exception v2

    .line 337
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 281
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

.method processMove(F)V
    .locals 3
    .param p1, "idx"    # F

    .prologue
    const/4 v2, 0x0

    .line 344
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 345
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 348
    :cond_0
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 352
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 356
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    .line 358
    :cond_3
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 359
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTansHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    .line 362
    :cond_4
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 363
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTansHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    .line 366
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 368
    return-void
.end method

.method public setBottomPanel(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "bottomPanel"    # Landroid/widget/RelativeLayout;
    .param p2, "bottomPanelSon"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    .line 76
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanelSon:Landroid/widget/RelativeLayout;

    .line 77
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setBottomTranslationY()V

    .line 78
    return-void
.end method

.method public setBottomTranslationY()V
    .locals 15

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x1

    .line 85
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getCurrentItem()I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 86
    .local v3, "next":I
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getCurrentItem()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 87
    .local v7, "pre":I
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-le v3, v9, :cond_0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 89
    :cond_0
    if-gez v7, :cond_1

    .line 90
    const/4 v7, 0x0

    .line 92
    :cond_1
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v9

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    .line 93
    iget v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mTranslationY:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mCurrentTranslationY:F

    .line 94
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    .line 95
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getCurrentItem()I

    move-result v10

    .line 94
    invoke-interface {v9, v10, v3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;->getNextBottomPanelTranslationY(II)F

    move-result v9

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTansHeight:F

    .line 97
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    if-nez v9, :cond_3

    .line 138
    :cond_2
    :goto_0
    return-void

    .line 100
    :cond_3
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v2

    .line 101
    .local v2, "firstDayOfWeek":I
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 102
    .local v1, "currentTime":Landroid/text/format/Time;
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 103
    invoke-virtual {v1, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 104
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v9, v1, v2}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v0

    .line 105
    .local v0, "cl":I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 106
    .local v4, "nextTime":Landroid/text/format/Time;
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 107
    iget v9, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v4, Landroid/text/format/Time;->month:I

    .line 108
    invoke-virtual {v4, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 109
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v9, v4, v2}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v5

    .line 110
    .local v5, "nl":I
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v8, "preTime":Landroid/text/format/Time;
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 112
    iget v9, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/text/format/Time;->month:I

    .line 113
    invoke-virtual {v8, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 114
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v9, v8, v2}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v6

    .line 115
    .local v6, "pl":I
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    invoke-interface {v9, v0, v5}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;->getNextBottomPanelTranslationY(II)F

    move-result v9

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTansHeight:F

    .line 121
    if-ne v5, v12, :cond_5

    .line 122
    sget v9, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    .line 128
    :cond_4
    :goto_1
    if-ne v6, v12, :cond_7

    .line 129
    sget v9, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    goto :goto_0

    .line 123
    :cond_5
    if-ne v5, v13, :cond_6

    .line 124
    sget v9, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    goto :goto_1

    .line 125
    :cond_6
    if-ne v5, v14, :cond_4

    .line 126
    sget v9, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mNextTranslationY:F

    goto :goto_1

    .line 130
    :cond_7
    if-ne v6, v13, :cond_8

    .line 131
    sget v9, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    goto/16 :goto_0

    .line 132
    :cond_8
    if-ne v6, v14, :cond_2

    .line 133
    sget v9, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    iput v9, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mPreTranslationY:F

    goto/16 :goto_0
.end method

.method public setOnScrollerCallBack(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;)V
    .locals 0
    .param p1, "scrollerCallBack"    # Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    .prologue
    .line 497
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mOnScrollerCallBack:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;

    .line 498
    return-void
.end method

.method public setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 0
    .param p1, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 71
    return-void
.end method
