.class public Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "AppBarLayoutSpringBehavior.java"


# static fields
.field private static final CUSTOM_SNAP:Z = true

.field private static final DEBUG:Z = false

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0xfa

.field private static final SPRING_ANIMATION_DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AppBarLySpringBehavior"

.field private static final TYPE_DEFAULT:I = -0x1


# instance fields
.field private mAcceptNestedScroll:Z

.field private mAppBarLyVibrateFlag:Z

.field private mFirstDownScroll:Z

.field private mLastNestedScrollDy:I

.field private mLastStartedType:I

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOffsetSpring:I

.field private mPreHeadHeight:I

.field private mSpringRecoverAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSpringRecoverAnimatorStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    .line 35
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 40
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimatorStarted:Z

    .line 42
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 48
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mFirstDownScroll:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAcceptNestedScroll:Z

    .line 52
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastNestedScrollDy:I

    .line 53
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAppBarLyVibrateFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    .line 35
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 40
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimatorStarted:Z

    .line 42
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mFirstDownScroll:Z

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAcceptNestedScroll:Z

    .line 52
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastNestedScrollDy:I

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAppBarLyVibrateFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringHeaderHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    .locals 2
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 570
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 573
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float/2addr v0, v1

    .line 575
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    .line 577
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 581
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    return-void
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 4
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 589
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 597
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 604
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 605
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 606
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$interpolator;->easy_ease:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 605
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$2;-><init>(Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 619
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0xfa

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 621
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateRecoverBySpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 296
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;-><init>(Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 313
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 314
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkShouldSpringRecover(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1

    .line 322
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimatorStarted:Z

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->animateRecoverBySpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_0
    return-void
.end method

.method private getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 6
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 546
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 547
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 549
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 551
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 552
    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->checkFlag(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    iget v4, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v4

    .line 555
    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    :cond_0
    neg-int v1, p2

    if-gt v2, v1, :cond_1

    if-lt v3, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getHeaderExpandedHeight(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 5

    .line 283
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 284
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 287
    iget v4, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v3, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private setAppBarLayoutHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 374
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    if-ne p3, v0, :cond_0

    return-void

    .line 381
    :cond_0
    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    .line 383
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 384
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    add-int/2addr p0, p3

    iput p0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    .line 385
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    return-void
.end method

.method private setHeaderTopBottomOffsetInternal(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)I
    .locals 4

    .line 396
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 408
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-gez p3, :cond_1

    .line 409
    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    add-int/2addr p4, p3

    if-gez p4, :cond_0

    move p4, v2

    .line 414
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringOffsetByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 415
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p0

    sub-int/2addr p0, p3

    return p0

    .line 425
    :cond_1
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    if-lez v1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-lt v1, v3, :cond_2

    if-lez p3, :cond_2

    .line 426
    invoke-direct {p0, p1, p2, p6, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)I

    move-result p0

    return p0

    :cond_2
    if-eqz p4, :cond_5

    if-lt v0, p4, :cond_5

    if-gt v0, p5, :cond_5

    .line 438
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-ne v0, v1, :cond_3

    const/4 v1, -0x1

    if-ne p6, v1, :cond_3

    goto :goto_0

    :cond_3
    if-eq v0, p4, :cond_6

    .line 442
    invoke-direct {p0, p1, p2, p6, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)I

    move-result v2

    goto :goto_1

    .line 440
    :cond_4
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result v2

    goto :goto_1

    .line 445
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result v2

    :cond_6
    :goto_1
    return v2
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 8
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 492
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 493
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_6

    .line 495
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 497
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    .line 501
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    .line 502
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v6, v6

    .line 504
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_0

    .line 506
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v6, v1

    :cond_0
    const/4 v1, 0x2

    .line 509
    invoke-static {v4, v1}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 511
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v6, v2

    goto :goto_0

    :cond_1
    const/4 v7, 0x5

    .line 512
    invoke-static {v4, v7}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 516
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v6

    if-ge v0, v2, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v6, v2

    :cond_3
    :goto_0
    const/16 v2, 0x20

    .line 524
    invoke-static {v4, v2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->checkFlag(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    iget v2, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    .line 527
    iget v2, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v2

    :cond_4
    add-int v2, v6, v5

    .line 530
    div-int/2addr v2, v1

    if-ge v0, v2, :cond_5

    move v5, v6

    .line 539
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v5, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    const/4 v1, 0x0

    .line 538
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    :cond_6
    return-void
.end method

.method private updateSpringByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)I
    .locals 2

    .line 464
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    return p4

    .line 467
    :cond_0
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    mul-int/lit8 v1, p4, 0x4

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringOffsetByScrollWithType(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    .line 469
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p0

    sub-int/2addr p0, p4

    return p0
.end method

.method private updateSpringHeaderHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 336
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-lt v0, v1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->setAppBarLayoutHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpringHeaderHeightWithType(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 2

    .line 345
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-gtz v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    .line 359
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-lt v0, v1, :cond_3

    if-gez p3, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    if-lez v1, :cond_2

    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-le v0, p4, :cond_2

    goto :goto_0

    .line 368
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->setAppBarLayoutHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSpringOffsetByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 478
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringHeaderHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private updateSpringOffsetByScrollWithType(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 486
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->updateSpringHeaderHeightWithType(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    invoke-super {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p0

    return p0
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 0

    .line 263
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    .line 264
    iget p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result p3

    if-eqz p3, :cond_0

    .line 265
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getHeaderExpandedHeight(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    :cond_0
    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 6
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    if-gez p5, :cond_0

    .line 116
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p7

    neg-int p7, p7

    .line 117
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int/2addr v0, p7

    move v4, p7

    move v5, v0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p7

    neg-int p7, p7

    move v5, p4

    move v4, p7

    .line 134
    :goto_0
    iput-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAppBarLyVibrateFlag:Z

    .line 135
    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastNestedScrollDy:I

    const/4 p7, 0x1

    if-lez p4, :cond_1

    if-gez p5, :cond_1

    .line 136
    iput-boolean p7, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAppBarLyVibrateFlag:Z

    .line 139
    :cond_1
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastNestedScrollDy:I

    if-eq v4, v5, :cond_3

    if-lez p5, :cond_2

    .line 142
    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    if-lez p4, :cond_2

    .line 144
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result p4

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mPreHeadHeight:I

    if-le p4, v0, :cond_2

    iget-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimatorStarted:Z

    if-nez p4, :cond_2

    instance-of p4, p3, Landroidx/core/widget/NestedScrollView;

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    aput p0, p6, p7

    .line 164
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 165
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_4
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 10
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v7, p0

    if-gez p7, :cond_2

    const/4 v8, 0x1

    if-gez p5, :cond_0

    .line 190
    iget v0, v7, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetSpring:I

    if-gtz v0, :cond_0

    .line 191
    iput-boolean v8, v7, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mFirstDownScroll:Z

    .line 194
    :cond_0
    iget-boolean v0, v7, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mFirstDownScroll:Z

    if-nez v0, :cond_2

    .line 195
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result v0

    move-object v9, p3

    .line 196
    instance-of v1, v9, Landroidx/core/widget/NestedScrollView;

    if-nez v1, :cond_1

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-boolean v0, v7, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAppBarLyVibrateFlag:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v3, v0, p7

    .line 204
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v6, p8

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->setHeaderTopBottomOffsetInternal(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)I

    move-result v0

    aput v0, p9, v8

    goto :goto_0

    :cond_2
    move-object v9, p3

    :goto_0
    if-nez p7, :cond_3

    .line 212
    invoke-super/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    .line 71
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastStartedType:I

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimatorStarted:Z

    if-eqz p1, :cond_0

    .line 75
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_0

    .line 77
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 80
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 81
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 84
    :cond_1
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAppBarLyVibrateFlag:Z

    .line 85
    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastNestedScrollDy:I

    if-eqz p1, :cond_2

    .line 97
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAcceptNestedScroll:Z

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 0
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 234
    iget p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mLastStartedType:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    .line 236
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->checkShouldSpringRecover(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 240
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mFirstDownScroll:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mFirstDownScroll:Z

    :cond_2
    return-void
.end method

.method public setAcceptNestedScroll(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->mAcceptNestedScroll:Z

    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p0

    return p0
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 277
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->setHeaderTopBottomOffsetInternal(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)I

    move-result p0

    return p0
.end method
