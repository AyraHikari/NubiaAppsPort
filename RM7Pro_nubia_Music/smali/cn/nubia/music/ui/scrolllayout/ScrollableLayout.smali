.class public Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;
.super Landroid/widget/LinearLayout;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;,
        Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private childViewPager:Landroid/support/v4/view/ViewPager;

.field private isClickHead:Z

.field private isClickHeadExpand:Z

.field private isDragging:Z

.field private mCurY:I

.field private mDirection:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

.field private mDisallowIntercept:Z

.field private mDownX:F

.field private mDownY:F

.field private mExpandHeight:I

.field private mHeadHeight:I

.field private mHeadView:Landroid/view/View;

.field private mHeaderMargin:I

.field private mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

.field private mLastScrollerY:I

.field private mLastVelocity:F

.field private mLastY:F

.field private mListViewFlingTime:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverY:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxY:I

.field private minY:I

.field private needCheckUpDown:Z

.field private onScrollListener:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;

.field stickyPreventMove:Z

.field private upDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    .line 28
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 52
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeaderMargin:I

    .line 53
    const/16 v0, 0x4b

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    .line 54
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    .line 145
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    .line 28
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 52
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeaderMargin:I

    .line 53
    const/16 v0, 0x4b

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    .line 54
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    .line 145
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    .line 28
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 52
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeaderMargin:I

    .line 53
    const/16 v0, 0x4b

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    .line 54
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    .line 145
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    .line 92
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    .line 28
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 52
    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeaderMargin:I

    .line 53
    const/16 v0, 0x4b

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    .line 54
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    .line 145
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    .line 98
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method private checkIsClickHead(III)V
    .locals 1

    .prologue
    .line 401
    add-int v0, p1, p3

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHead:Z

    .line 402
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsClickHeadExpand(III)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 405
    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mExpandHeight:I

    if-gtz v1, :cond_0

    .line 406
    iput-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHeadExpand:Z

    .line 408
    :cond_0
    add-int v1, p1, p3

    iget v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mExpandHeight:I

    add-int/2addr v2, p2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHeadExpand:Z

    .line 409
    return-void
.end method

.method private getScrollerVelocity(II)I
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 298
    :cond_1
    div-int v0, p1, p2

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    invoke-direct {v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    .line 103
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mMinimumVelocity:I

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mMaximumVelocity:I

    .line 108
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 391
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 398
    :cond_0
    return-void
.end method


# virtual methods
.method public canPtr()Z
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mCurY:I

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    invoke-virtual {v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/high16 v11, 0x4f000000

    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 308
    iget-object v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDirection:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    sget-object v3, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->a:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    if-ne v2, v3, :cond_2

    .line 309
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isSticky()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    sub-int v0, v1, v0

    .line 311
    const/16 v1, 0x7d0

    .line 312
    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollerVelocity(II)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 313
    iget-object v3, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    invoke-virtual {v3, v2, v0, v1}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->smoothScrollBy(III)V

    .line 314
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mListViewFlingTime:J

    .line 315
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->scrollTo(II)V

    .line 339
    :goto_1
    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastScrollerY:I

    goto :goto_0

    .line 322
    :cond_2
    iget-object v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    invoke-virtual {v2}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->isTop()Z

    move-result v2

    .line 323
    sget-object v3, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScroll isTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFinish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHeadExpand:Z

    if-eqz v2, :cond_5

    .line 325
    :cond_3
    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    const-string v3, "computeScroll 1"

    invoke-static {v2, v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    cmpl-float v2, v2, v11

    if-eqz v2, :cond_4

    .line 327
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    const-string v2, "computeScroll 2"

    invoke-static {v0, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 329
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v2

    iget v3, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    float-to-int v4, v3

    const v8, 0x7fffffff

    iget v10, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 330
    iput v11, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    .line 331
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->invalidate()V

    goto/16 :goto_0

    .line 334
    :cond_4
    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeScroll 3 scroll to Y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->scrollTo(II)V

    .line 337
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->invalidate()V

    goto/16 :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    const v8, 0x7fffffff

    const/high16 v7, -0x80000000

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 151
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDownX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v2, v0

    .line 152
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDownY:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    :goto_1
    return v11

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->canPtr()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v11

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 161
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDisallowIntercept:Z

    .line 162
    iput-boolean v11, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->needCheckUpDown:Z

    .line 163
    iput-boolean v11, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    .line 164
    iput v3, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDownX:F

    .line 165
    iput v4, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDownY:F

    .line 166
    iput v4, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastY:F

    .line 167
    float-to-int v0, v4

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadHeight:I

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->checkIsClickHead(III)V

    .line 168
    float-to-int v0, v4

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadHeight:I

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->checkIsClickHeadExpand(III)V

    .line 171
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    invoke-virtual {v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->isTop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mListViewFlingTime:J

    .line 180
    :cond_2
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClickHead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClickHeadExpand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHeadExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->initOrResetVelocityTracker()V

    .line 184
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 158
    goto/16 :goto_2

    .line 193
    :pswitch_1
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDisallowIntercept:Z

    if-nez v0, :cond_0

    .line 196
    iput-boolean v11, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isDragging:Z

    .line 198
    invoke-direct {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->initVelocityTrackerIfNotExists()V

    .line 199
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 201
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->needCheckUpDown:Z

    if-eqz v0, :cond_6

    .line 202
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    if-le v2, v0, :cond_a

    if-le v2, v5, :cond_a

    .line 203
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->needCheckUpDown:Z

    .line 204
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    .line 209
    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 210
    iget-wide v8, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mListViewFlingTime:J

    sub-long/2addr v6, v8

    .line 211
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHeadExpand:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHead:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isSticky()Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v8, 0x7d0

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    .line 212
    :cond_5
    iput-boolean v11, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    .line 216
    :cond_6
    sget-object v3, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MotionEvent.ACTION_MOVE: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    if-le v5, v0, :cond_b

    move v0, v11

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-le v5, v2, :cond_c

    move v0, v11

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    if-le v5, v0, :cond_9

    if-le v5, v2, :cond_9

    .line 219
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    invoke-virtual {v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->isTop()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHeadExpand:Z

    if-eqz v0, :cond_9

    .line 220
    :cond_7
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->childViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_8

    .line 221
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->childViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v11}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 223
    :cond_8
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastY:F

    sub-float/2addr v0, v4

    .line 224
    float-to-double v2, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->scrollBy(II)V

    .line 227
    :cond_9
    iput v4, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastY:F

    goto/16 :goto_0

    .line 205
    :cond_a
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    if-le v5, v0, :cond_4

    if-le v5, v2, :cond_4

    .line 206
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->needCheckUpDown:Z

    .line 207
    iput-boolean v11, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    goto/16 :goto_3

    :cond_b
    move v0, v1

    .line 216
    goto :goto_4

    :cond_c
    move v0, v1

    goto :goto_5

    .line 232
    :pswitch_2
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isDragging:Z

    .line 233
    sget-object v3, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent.ACTION_UP: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    if-le v5, v0, :cond_10

    move v0, v11

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le v5, v2, :cond_11

    move v0, v11

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->upDown:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mTouchSlop:I

    if-le v5, v0, :cond_17

    if-le v5, v2, :cond_17

    .line 236
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 237
    const/16 v2, 0x3e8

    iget v3, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 238
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v3, v0

    .line 239
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_12

    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->a:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    :goto_8
    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDirection:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    .line 241
    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    .line 243
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVelocity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " lastVelocity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastVelocity:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yV: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mMinimumVelocity:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_13

    move v0, v11

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_15

    .line 248
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDirection:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->a:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    if-ne v0, v2, :cond_d

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isSticky()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isSticky()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDirection:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->b:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    if-ne v0, v2, :cond_14

    .line 249
    :cond_e
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    const-string v2, "fling fail"

    invoke-static {v0, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 264
    :goto_a
    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    const-string v3, "======================================"

    invoke-static {v2, v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->recycleVelocityTracker()V

    .line 267
    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isClickHead:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isSticky()Z

    move-result v0

    if-nez v0, :cond_17

    .line 268
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 269
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 270
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    :cond_10
    move v0, v1

    .line 233
    goto/16 :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_7

    .line 239
    :cond_12
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->b:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    goto/16 :goto_8

    :cond_13
    move v0, v1

    .line 246
    goto :goto_9

    .line 252
    :cond_14
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDirection:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    sget-object v2, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->b:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    if-ne v0, v2, :cond_16

    .line 253
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    const-string v2, "fling direction down"

    invoke-static {v0, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v2

    float-to-int v4, v3

    iget v10, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    move v3, v1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 259
    :goto_b
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 260
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastScrollerY:I

    .line 261
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->invalidate()V

    :cond_15
    move v0, v1

    goto :goto_a

    .line 256
    :cond_16
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->TAG:Ljava/lang/String;

    const-string v2, "fling direction up"

    invoke-static {v0, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v2

    float-to-double v4, v3

    const-wide v12, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v12

    double-to-int v4, v4

    iget v10, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mOverY:I

    move v3, v1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_b

    .line 276
    :cond_17
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    goto/16 :goto_0

    .line 281
    :pswitch_3
    iput-boolean v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->stickyPreventMove:Z

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getHelper()Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHelper:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;

    return-object v0
.end method

.method public getLastScrollY()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mLastScrollerY:I

    return v0
.end method

.method public getMaxY()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    return v0
.end method

.method public isHeadTop()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mCurY:I

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSticky()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mCurY:I

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getChildCount()I

    move-result v2

    .line 427
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 428
    invoke-virtual {p0, v1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_1

    .line 430
    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->childViewPager:Landroid/support/v4/view/ViewPager;

    .line 427
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 433
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 434
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 413
    invoke-virtual {p0, v3}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 414
    iget-object v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 415
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeaderMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 416
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadHeight:I

    .line 417
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 418
    const-string v0, "what"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what: mHeadHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeadHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public requestScrollableLayoutDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 142
    iput-boolean p1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mDisallowIntercept:Z

    .line 143
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->getScrollY()I

    move-result v1

    .line 346
    add-int v0, v1, p2

    .line 347
    iget v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    if-lt v0, v2, :cond_1

    .line 348
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 352
    :cond_0
    :goto_0
    sub-int/2addr v0, v1

    .line 353
    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 354
    return-void

    .line 349
    :cond_1
    iget v2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    if-lt p2, v0, :cond_4

    .line 359
    iget p2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    .line 364
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->isDragging:Z

    if-eqz v0, :cond_1

    if-gez p2, :cond_1

    .line 365
    const/4 p2, 0x0

    .line 368
    :cond_1
    if-nez p2, :cond_2

    .line 369
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mListViewFlingTime:J

    .line 372
    :cond_2
    iput p2, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mCurY:I

    .line 373
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->onScrollListener:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->onScrollListener:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;

    iget v1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->maxY:I

    invoke-interface {v0, p2, v1}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;->onScroll(II)V

    .line 376
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 377
    return-void

    .line 360
    :cond_4
    iget v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->minY:I

    if-gt p2, v0, :cond_0

    goto :goto_0
.end method

.method public setClickHeadExpand(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mExpandHeight:I

    .line 126
    return-void
.end method

.method public setHeaderMargin(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->mHeaderMargin:I

    .line 116
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->requestLayout()V

    .line 117
    invoke-virtual {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->invalidate()V

    .line 118
    return-void
.end method

.method public setOnScrollListener(Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;->onScrollListener:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$OnScrollListener;

    .line 71
    return-void
.end method
