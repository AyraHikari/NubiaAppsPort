.class public Lcom/zte/mifavor/utils/SpringAnimationCommon;
.super Ljava/lang/Object;
.source "SpringAnimationCommon.java"


# static fields
.field private static CORRECTION_VALUE_FOR_FLING_Y:I = 0x0

.field private static DECELERATION_RATE:F = 0.0f

.field private static final INFLEXION:F = 0.35f

.field public static final STATE_COLLAPSED:I = 0x2

.field public static final STATE_EXPANDED:I = 0x1

.field public static final STATE_IDLE:I = 0x3

.field public static final STATE_NOT_SUPPORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QW-QScroll-SpringAnim"

.field public static final VIEW_TYPE_GRIDVIEW:I = 0x3ea

.field public static final VIEW_TYPE_LISTVIEW:I = 0x3e9

.field public static final VIEW_TYPE_NESTEDSCROLLVIEW:I = 0x3ec

.field public static final VIEW_TYPE_RECYCLERVIEW:I = 0x3e8

.field public static final VIEW_TYPE_SCROLLVIEW:I = 0x3eb

.field private static mFlingFriction:F

.field private static mPhysicalCoeff:F


# instance fields
.field private EDGE_DRAG_MAX_DISTANCE:I

.field private EDGE_MINUS_FLING_MAX_DISTANCE:F

.field private EDGE_MINUS_FLING_MIN_DISTANCE:F

.field private EDGE_PLUS_FLING_MAX_DISTANCE:F

.field private EDGE_PLUS_FLING_MIN_DISTANCE:F

.field private mActivePointerId:I

.field public mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDampingRatio:F

.field private mDensity:F

.field private mDm:Landroid/util/DisplayMetrics;

.field private mFlingVelocity:I

.field private mInitialMotionXY:F

.field private final mInvalidValue:F

.field private mIsBeingDragged:Z

.field private mIsToBottomFling:Z

.field private mIsToTopFling:Z

.field private mIsUseSpring:Z

.field private mIsVertical:Z

.field private mScrollOffsetY:I

.field private mSlipAmplitude:F

.field private mSpingView:Landroid/view/View;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStiffness:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mViewProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 481
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    sput v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingFriction:F

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->DECELERATION_RATE:F

    const/16 v0, 0x14

    .line 484
    sput v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->CORRECTION_VALUE_FOR_FLING_Y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 29
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInvalidValue:F

    const/16 v0, 0x12c

    .line 31
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_DRAG_MAX_DISTANCE:I

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 32
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_PLUS_FLING_MAX_DISTANCE:F

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 33
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_MINUS_FLING_MAX_DISTANCE:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 35
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_PLUS_FLING_MIN_DISTANCE:F

    const/high16 v0, -0x3db80000    # -50.0f

    .line 36
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_MINUS_FLING_MIN_DISTANCE:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 38
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStiffness:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDampingRatio:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 40
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSlipAmplitude:F

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    const/4 v2, 0x0

    .line 51
    iput v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    .line 52
    iput v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    .line 56
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    .line 57
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 67
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    return-void
.end method

.method private dragToLeftOrRight(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 413
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    sub-float/2addr p1, v0

    .line 417
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_DRAG_MAX_DISTANCE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDensity:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    const-string v0, "QW-QScroll-SpringAnim"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++++++++++++++++++drag To Left Or Right. desX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isBeingDragged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDragToRight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStartDragX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_1

    cmpl-float v0, p1, v1

    if-gtz v0, :cond_3

    :cond_1
    if-gez p2, :cond_2

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_3

    :cond_2
    if-nez p2, :cond_4

    .line 421
    :cond_3
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_4
    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, "++++++++++++drag To Left Or Right warning. "

    .line 423
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private dragToTopBottomOrLeftRight(Landroid/view/MotionEvent;I)V
    .locals 3

    const-string v0, "QW-QScroll-SpringAnim"

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragToTopBottomOrLeftRight in. mIsVertical = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dragToLeftOrRight(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dragToTopOrBottom(Landroid/view/MotionEvent;I)V

    :goto_0
    return-void
.end method

.method private dragToTopOrBottom(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 398
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    sub-float/2addr p1, v0

    .line 402
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_DRAG_MAX_DISTANCE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDensity:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr p1, v0

    const-string v0, "QW-QScroll-SpringAnim"

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++++++drag To Top Or Bottom. setTranslationY  desY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isBeingDragged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDragToBottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStartDragY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    if-lez p2, :cond_1

    cmpl-float v0, p1, v1

    if-gtz v0, :cond_3

    :cond_1
    if-gez p2, :cond_2

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_3

    :cond_2
    if-nez p2, :cond_4

    .line 406
    :cond_3
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, "++++++++++++drag To Top Or Bottom warning. "

    .line 408
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getMotionEventXY(Landroid/view/MotionEvent;)F
    .locals 2

    .line 428
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 429
    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-nez p0, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    :goto_0
    return v1

    :cond_1
    if-gez v0, :cond_2

    goto :goto_1

    .line 432
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    :goto_1
    return v1
.end method

.method private getSplineDeceleration(I)D
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    const v0, 0x43c10b3d

    mul-float/2addr p0, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p0, v0

    .line 488
    sput p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mPhysicalCoeff:F

    .line 492
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3eb33333    # 0.35f

    mul-float/2addr p0, p1

    sget p1, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingFriction:F

    sget v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mPhysicalCoeff:F

    mul-float/2addr p1, v0

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(I)D
    .locals 6

    .line 497
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getSplineDeceleration(I)D

    move-result-wide p0

    .line 498
    sget v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 499
    sget v2, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingFriction:F

    sget v3, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mPhysicalCoeff:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    sget v4, Lcom/zte/mifavor/utils/SpringAnimationCommon;->DECELERATION_RATE:F

    float-to-double v4, v4

    div-double/2addr v4, v0

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    return-wide v2
.end method

.method private isLessOneScreen()Z
    .locals 7

    .line 712
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 713
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    if-nez v0, :cond_0

    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen layoutManager mIsVertical is false, return false."

    .line 714
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 718
    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    .line 719
    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 721
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 723
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    .line 725
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p0

    const-string v4, "QW-QScroll-SpringAnim"

    .line 726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLessOneScreen, visibleItemCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lastVisibleItemPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", totalItemCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_1

    add-int/lit8 v4, p0, -0x1

    if-ne v0, v4, :cond_1

    if-ne v3, p0, :cond_1

    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen RecyclerView, true."

    .line 728
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen RecyclerView, false."

    .line 731
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 734
    :cond_2
    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v3, :cond_5

    .line 735
    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    if-nez p0, :cond_3

    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen GridLayoutManager mIsVertical is false, return false."

    .line 736
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 739
    :cond_3
    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 741
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 743
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    .line 745
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getItemCount()I

    move-result p0

    const-string v4, "QW-QScroll-SpringAnim"

    .line 746
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLessOneScreen, visibleItemCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lastVisibleItemPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", totalItemCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_4

    add-int/lit8 v4, p0, -0x1

    if-ne v0, v4, :cond_4

    if-ne v3, p0, :cond_4

    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen RecyclerView GridLayoutManager, true."

    .line 748
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen RecyclerView GridLayoutManager, false."

    .line 751
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const-string p0, "QW-QScroll-SpringAnim"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLessOneScreen RecyclerView layoutManager is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_6
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/androidx/widget/NestedScrollView;

    if-eqz v0, :cond_7

    .line 758
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isSupportSink()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "isLessOneScreen NestedScrollView return true."

    .line 759
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    const-string v0, "QW-QScroll-SpringAnim"

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLessOneScreen mSpingView = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return v2
.end method

.method private isScrollToBottomOrRight(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    instance-of v0, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getMotionEventXY(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isViewPagerScrollToRight(F)Z

    move-result p0

    return p0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 345
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private isScrollToTopOrLeft(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    instance-of v0, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getMotionEventXY(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isViewPagerScrollToLeft(F)Z

    move-result p0

    return p0

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isViewPagerScrollToLeft(F)Z
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    instance-of v0, v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 354
    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    sub-float/2addr p1, p0

    if-nez v0, :cond_1

    float-to-double p0, p1

    const-wide/16 v2, 0x0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isViewPagerScrollToRight(F)Z
    .locals 6

    .line 362
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    instance-of v0, v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 366
    iget v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    sub-float/2addr v2, p1

    .line 367
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    if-ne v0, p0, :cond_1

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 438
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 439
    iget v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mActivePointerId:I

    :cond_1
    return-void
.end method


# virtual methods
.method public animationRestored()V
    .locals 8

    const-string v0, "QW-QScroll-SpringAnim"

    const-string v1, "animation Restored in."

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 256
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    const-string p0, "QW-QScroll-SpringAnim"

    const-string v0, "animation Restored abort, mVelocityTracker is null."

    .line 259
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_1
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    const-string v0, "QW-QScroll-SpringAnim"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation Restored abort, mIsToTopFling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsToBottomFling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBeingDragged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return-void

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    const-string v3, "QW-QScroll-SpringAnim"

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animationRestored warning. isCanScrollUp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCanScrollDown = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_6
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 276
    iget-boolean v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_7

    cmpl-float v3, v0, v5

    if-nez v3, :cond_9

    :cond_7
    iget-boolean v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    if-eqz v3, :cond_8

    cmpl-float v3, v1, v5

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    move v2, v4

    :cond_9
    :goto_0
    const-string v3, "QW-QScroll-SpringAnim"

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation Restored. isTranslationXY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", translationY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", mIsVertical = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isBeingDragged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_f

    .line 278
    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    if-eqz v2, :cond_f

    .line 280
    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 282
    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    if-nez v2, :cond_a

    .line 284
    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    goto :goto_1

    .line 287
    :cond_a
    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    :goto_1
    const-string v3, "QW-QScroll-SpringAnim"

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation Restored. setStartVelocity velocity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", translationX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", translationY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v3, v1

    float-to-int v6, v2

    xor-int/2addr v3, v6

    if-gez v3, :cond_d

    float-to-int v3, v0

    xor-int/2addr v3, v6

    if-ltz v3, :cond_b

    goto :goto_3

    :cond_b
    const-string v3, "QW-QScroll-SpringAnim"

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation Restored+++++++++++++++++++ warning, use the translationY or translationX, velocity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVertical = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    if-nez v2, :cond_c

    .line 299
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_2

    .line 301
    :cond_c
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 304
    :goto_2
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_5

    :cond_d
    :goto_3
    const/high16 v0, 0x45fa0000    # 8000.0f

    cmpl-float v1, v2, v0

    if-lez v1, :cond_e

    const-string v1, "QW-QScroll-SpringAnim"

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animation Restored. adjust velocity = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " to 8000. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    move v0, v2

    .line 295
    :goto_4
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 306
    :goto_5
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 307
    iput-boolean v4, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 308
    iput-boolean v4, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    goto :goto_6

    :cond_f
    const-string v0, "QW-QScroll-SpringAnim"

    const-string v1, "animation Restored. ++++++ don\'t setStartVelocity and do nothing and clear."

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_6
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 314
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const-string v0, "QW-QScroll-SpringAnim"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation Restored. clear and recycle mVelocityTracker. getYVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 317
    iput v5, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    .line 318
    iput v5, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    .line 319
    iput-boolean v4, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    .line 320
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 321
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    const-string v0, "QW-QScroll-SpringAnim"

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation Restored out. +++++++++ isBeingDragged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsToTopFling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsToBottomFling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispatchTouchEvent()V
    .locals 2

    const-string v0, "QW-QScroll-SpringAnim"

    const-string v1, "dispatchTouchEvent++++++++++ mIsToBottomFling is false, mIsToTopFling is false."

    .line 643
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 645
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    .line 646
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    return-void
.end method

.method public doFlingAnim(F)V
    .locals 5

    .line 505
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_PLUS_FLING_MAX_DISTANCE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 506
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_PLUS_FLING_MAX_DISTANCE:F

    goto :goto_0

    :cond_0
    move v0, p1

    .line 508
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_MINUS_FLING_MAX_DISTANCE:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 509
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_MINUS_FLING_MAX_DISTANCE:F

    .line 512
    :cond_1
    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_PLUS_FLING_MIN_DISTANCE:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_MINUS_FLING_MIN_DISTANCE:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    const-string v0, "QW-QScroll-SpringAnim"

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore doFlingAnim, set mIsToBottomFling and mIsToTopFling to false. dis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const-string v2, "QW-QScroll-SpringAnim"

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFlingAnim setTranslationY +++++ adjustDis_TranslationY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", dis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", translationY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", set mIsToBottomFling and mIsToTopFling to false."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 518
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :goto_1
    const/4 p1, 0x0

    .line 520
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 521
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    return-void
.end method

.method public fling(I)V
    .locals 2

    .line 525
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    if-nez v0, :cond_0

    const-string p1, "QW-QScroll-SpringAnim"

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling. mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 531
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 532
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    .line 534
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    .line 535
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 537
    :cond_2
    :goto_0
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingVelocity:I

    const-string p1, "QW-QScroll-SpringAnim"

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling+++++++++ mIsToBottomFling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsToTopFling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingVelocity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getActivityByContext(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 659
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 660
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "QW-QScroll-SpringAnim"

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityByContext, context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBaseSinkActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, p1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 664
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 667
    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    if-eqz v0, :cond_2

    const-string v0, "QW-QScroll-SpringAnim"

    const-string v1, "getActivityByContext is BaseSinkActivity. "

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    check-cast p1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iput-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    goto :goto_2

    :cond_2
    const-string v0, "QW-QScroll-SpringAnim"

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityByContext isn\'t BaseSinkActivity. context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 672
    iput-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    :goto_2
    return-void
.end method

.method public getIsBeingDragged()Z
    .locals 0

    .line 650
    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    return p0
.end method

.method public getIsDragToBottom(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 383
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    sub-float/2addr p1, v0

    .line 387
    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_DRAG_MAX_DISTANCE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDensity:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr p1, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    const-string v0, "QW-QScroll-SpringAnim"

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++++++++ need to drag To Bottom. desY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mStartDragY = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "QW-QScroll-SpringAnim"

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++++++++++ need to drag To Top.... desY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public initSpringAnimation(Landroid/view/View;)V
    .locals 1

    .line 80
    iput-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    .line 83
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 85
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 87
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDm:Landroid/util/DisplayMetrics;

    .line 88
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDensity:F

    return-void
.end method

.method public initSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->initSpringAnimation(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setSpringAnimationProperty(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    return-void
.end method

.method public isAppBarCollapsed()Z
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 699
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getAppBarExpandState()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public isAppBarExpanded()Z
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 692
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getAppBarExpandState()I

    move-result p0

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public isAppBarIdle()Z
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 706
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getAppBarExpandState()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isDisableSink()Z
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    if-eqz v0, :cond_0

    .line 685
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getDisableSinkingStatus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSink()Z
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 678
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mBaseSinkActivity:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getAppBarExpandState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 113
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    if-nez v0, :cond_1

    const-string p1, "QW-QScroll-SpringAnim"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent. mIsUseSpring = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_2

    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, "onInterceptTouchEvent. mSpringAnimation is null."

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 124
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 125
    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mActivePointerId:I

    .line 131
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    .line 132
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getMotionEventXY(Landroid/view/MotionEvent;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    sub-float v0, p1, v0

    .line 133
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    return v1

    .line 136
    :cond_4
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    const-string p1, "QW-QScroll-SpringAnim"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent. mInitialMotionXY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollStateChanged(Landroid/view/View;I)V
    .locals 6

    .line 546
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    if-nez v0, :cond_0

    const-string p1, "QW-QScroll-SpringAnim"

    .line 547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged abort, mIsUseSpring = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string p1, "QW-QScroll-SpringAnim"

    .line 552
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged abort, drag and the fling is not available. mIsToBottomFling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsToTopFling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsBeingDragged = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingVelocity:I

    return-void

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    .line 558
    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    const-string p1, "QW-QScroll-SpringAnim"

    .line 560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged abort, didn\'t slide to the end. canToTop = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canToBottom = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    .line 562
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    return-void

    .line 566
    :cond_6
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const-string v3, "QW-QScroll-SpringAnim"

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollStateChanged ++++, translationY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "QW-QScroll-SpringAnim"

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScrollStateChanged ++++, canToBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",canToTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsToBottomFling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsToTopFling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mFlingVelocity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingVelocity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_15

    if-nez v0, :cond_7

    .line 579
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    if-nez v0, :cond_8

    :cond_7
    if-nez v2, :cond_15

    iget-boolean v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToTopFling:Z

    if-eqz v0, :cond_15

    .line 580
    :cond_8
    iget p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mFlingVelocity:I

    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getSplineFlingDistance(I)D

    move-result-wide v0

    const-string p1, "QW-QScroll-SpringAnim"

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged++++++++++++++++ dis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", mScrollOffsetY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e8

    if-ne p1, p2, :cond_b

    .line 583
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    check-cast p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 584
    invoke-virtual {p1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getIsBeingDragged()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, "onScrollStateChanged+++++ RecyclerView is Dragged, and do nothing."

    .line 586
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 590
    :cond_9
    iget p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    int-to-double p1, p1

    cmpl-double p1, v0, p1

    if-lez p1, :cond_16

    const-wide/16 p1, 0x0

    .line 591
    iget v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSlipAmplitude:F

    mul-float/2addr p1, p2

    const-string p2, "QW-QScroll-SpringAnim"

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged+++++ RecyclerView ++++++++++++++++++++++++++ remainingDis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-boolean p2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    if-eqz p2, :cond_a

    neg-float p1, p1

    .line 594
    sget p2, Lcom/zte/mifavor/utils/SpringAnimationCommon;->CORRECTION_VALUE_FOR_FLING_Y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto/16 :goto_1

    .line 596
    :cond_a
    sget p2, Lcom/zte/mifavor/utils/SpringAnimationCommon;->CORRECTION_VALUE_FOR_FLING_Y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto/16 :goto_1

    :cond_b
    const/16 p1, 0x3e9

    const/high16 v2, 0x41f00000    # 30.0f

    if-eq p1, p2, :cond_13

    const/16 p1, 0x3ea

    if-ne p1, p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 p1, 0x3eb

    if-eq p1, p2, :cond_d

    const/16 p1, 0x3ec

    if-ne p1, p2, :cond_16

    .line 609
    :cond_d
    iget p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    int-to-double p1, p1

    sub-double/2addr v0, p1

    double-to-float p1, v0

    .line 610
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSlipAmplitude:F

    mul-float/2addr p2, v0

    const-string v0, "QW-QScroll-SpringAnim"

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged+++++ ScrollView or NestedScrollView ++++++++++++++++++++++++++ remainingDis = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", disEx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_PLUS_FLING_MAX_DISTANCE:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_f

    .line 613
    iget-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    if-eqz p1, :cond_e

    neg-float p1, p2

    div-float/2addr p1, v2

    .line 614
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto/16 :goto_1

    :cond_e
    div-float/2addr p2, v2

    .line 616
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto/16 :goto_1

    :cond_f
    const/high16 p1, 0x43480000    # 200.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_11

    .line 619
    iget-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_10

    neg-float p1, p2

    mul-float/2addr p1, v0

    .line 620
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto :goto_1

    :cond_10
    mul-float/2addr p2, v0

    .line 622
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto :goto_1

    .line 625
    :cond_11
    iget-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    if-eqz p1, :cond_12

    neg-float p1, p2

    .line 626
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto :goto_1

    .line 628
    :cond_12
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto :goto_1

    .line 600
    :cond_13
    :goto_0
    iget p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    int-to-double p1, p1

    sub-double/2addr v0, p1

    double-to-float p1, v0

    .line 601
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSlipAmplitude:F

    mul-float/2addr p2, v0

    const-string v0, "QW-QScroll-SpringAnim"

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged+++++ ListView ++++++++++++++++++++++++++ remainingDis = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", disEx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsToBottomFling:Z

    if-eqz p1, :cond_14

    neg-float p1, p2

    div-float/2addr p1, v2

    .line 604
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto :goto_1

    :cond_14
    div-float/2addr p2, v2

    .line 606
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->doFlingAnim(F)V

    goto :goto_1

    :cond_15
    const-string p2, "QW-QScroll-SpringAnim"

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged+++++ error. childView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_16
    :goto_1
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_17

    .line 637
    iget-object p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_17
    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, " ++ onScrollStateChanged out. ++"

    .line 639
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 155
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    if-nez v1, :cond_1

    const-string p1, "QW-QScroll-SpringAnim"

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent abort. mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_2

    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, "onTouchEvent abort. mSpringAnimation is null."

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    .line 168
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    const-string v1, "QW-QScroll-SpringAnim"

    const-string v2, "onTouchEvent. obtain mVelocityTracker and addMovement."

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 235
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mActivePointerId:I

    goto/16 :goto_0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 189
    :cond_4
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getMotionEventXY(Landroid/view/MotionEvent;)F

    move-result v0

    .line 190
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isScrollToTopOrLeft(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 191
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isScrollToBottomOrRight(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 192
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsDragToBottom(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 193
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result v5

    .line 194
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result v6

    .line 195
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isDisableSink()Z

    move-result v7

    const-string v8, "QW-QScroll-SpringAnim"

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouchEvent, action move, isScrollTL = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isScrollBR = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isBeingDragged = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isDragToB = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isCollapsed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isExpanded = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isDisableSink = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-boolean v8, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    if-eqz v8, :cond_5

    const-string v0, "QW-QScroll-SpringAnim"

    const-string v2, "onTouchEvent, tag 4"

    .line 199
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1, v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dragToTopBottomOrLeftRight(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-nez v2, :cond_9

    if-eqz v3, :cond_9

    if-nez v4, :cond_6

    if-nez v5, :cond_7

    :cond_6
    if-eqz v7, :cond_9

    .line 202
    :cond_7
    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    sub-float/2addr v1, v0

    cmpl-float v2, v1, v8

    if-lez v2, :cond_8

    const-string v2, "QW-QScroll-SpringAnim"

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, tag 1, bottomRightDistance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialMotionXY = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchXY = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean v10, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    .line 206
    invoke-direct {p0, p1, v9}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dragToTopBottomOrLeftRight(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_8
    const-string p0, "QW-QScroll-SpringAnim"

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent move abort, bottomRightDistance < 0. bottomRightDistance = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_d

    if-nez v3, :cond_d

    if-eqz v4, :cond_a

    if-nez v6, :cond_b

    :cond_a
    if-eqz v7, :cond_d

    .line 211
    :cond_b
    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    sub-float v1, v0, v1

    cmpl-float v2, v1, v8

    if-lez v2, :cond_c

    const-string v2, "QW-QScroll-SpringAnim"

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, tag 2, topLeftDistance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialMotionXY = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchXY = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-boolean v10, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    .line 215
    invoke-direct {p0, p1, v10}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dragToTopBottomOrLeftRight(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_c
    const-string p0, "QW-QScroll-SpringAnim"

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent move abort, topLeftDistance < 0. topLeftDistance = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    :cond_d
    invoke-direct {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isLessOneScreen()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v5, :cond_e

    if-eqz v4, :cond_10

    :cond_e
    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    if-nez v4, :cond_10

    :cond_f
    if-eqz v7, :cond_11

    :cond_10
    const-string v0, "QW-QScroll-SpringAnim"

    const-string v2, "onTouchEvent, tag 3"

    .line 221
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-boolean v10, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    .line 223
    invoke-direct {p0, p1, v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dragToTopBottomOrLeftRight(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 225
    :cond_11
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_12

    .line 226
    iget-object v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 228
    :cond_12
    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    const-string p1, "QW-QScroll-SpringAnim"

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, action move abort, please check isScrollTL and isScrollBR. mInitialMotionXY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mStartDragX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mStartDragY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStartDragY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p1, "QW-QScroll-SpringAnim"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++++++ onTouchEvent action up or cancel.+++++++++++++++++++++++++++++ action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->animationRestored()V

    goto :goto_0

    .line 175
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mActivePointerId:I

    .line 176
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    .line 177
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getMotionEventXY(Landroid/view/MotionEvent;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    sub-float v0, p1, v0

    .line 178
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    const-string p0, "QW-QScroll-SpringAnim"

    const-string p1, "onTouchEvent action down error."

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_13
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    const-string p1, "QW-QScroll-SpringAnim"

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent action down, mInitialMotionXY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mInitialMotionXY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDampingRatio(F)V
    .locals 2

    .line 446
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDampingRatio:F

    .line 447
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDampingRatio:F

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const-string p0, "QW-QScroll-SpringAnim"

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDampingRatio dampingRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDragAmplitude(I)V
    .locals 2

    .line 475
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_DRAG_MAX_DISTANCE:I

    const-string p1, "QW-QScroll-SpringAnim"

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDragAmplitude EDGE_DRAG_MAX_DISTANCE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->EDGE_DRAG_MAX_DISTANCE:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIsBeingDragged(Ljava/lang/Boolean;)V
    .locals 0

    .line 654
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsBeingDragged:Z

    return-void
.end method

.method public setIsUseSpring(Z)V
    .locals 2

    .line 462
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    .line 463
    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    const-string p1, "QW-QScroll-SpringAnim"

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmIsUseSpring mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScrollOffsetY(I)V
    .locals 0

    .line 542
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mScrollOffsetY:I

    return-void
.end method

.method public setSlipAmplitude(F)V
    .locals 2

    .line 470
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSlipAmplitude:F

    const-string p0, "QW-QScroll-SpringAnim"

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSlipAmplitude slipAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSpringAnimationProperty(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    .line 101
    iput-object p2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mViewProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 102
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mViewProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mIsVertical:Z

    .line 107
    :goto_0
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpingView:Landroid/view/View;

    invoke-direct {p1, v0, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 108
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p2, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStiffness:F

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 109
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mDampingRatio:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public setStiffness(F)V
    .locals 2

    .line 454
    iput p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStiffness:F

    .line 455
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget v0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStiffness:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const-string p1, "QW-QScroll-SpringAnim"

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStiffness mStiffness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/SpringAnimationCommon;->mStiffness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
