.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private currentOffset:I

.field private downPreScrollRange:I

.field private downScrollRange:I

.field private elevationOverlayAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private liftOnScrollTargetView:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private statusBarForeground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 195
    sget v0, Lcom/google/android/material/R$attr;->appBarLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 166
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 167
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v1, 0x0

    .line 171
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    const/4 v2, 0x1

    .line 200
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 205
    invoke-static {p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 209
    sget v2, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, p3, v2}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 213
    :cond_0
    sget-object v6, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    sget v8, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    new-array v9, v1, [I

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .line 214
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 221
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 225
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 226
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 227
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 228
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    .line 233
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 232
    invoke-direct {p0, p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 238
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_3

    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 239
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    .line 240
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    .line 239
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 243
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_5

    .line 246
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 247
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 248
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 250
    :cond_4
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 251
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 252
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 256
    :cond_5
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 257
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScrollTargetViewId:I

    .line 258
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 260
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_statusBarForeground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private clearLiftOnScrollTargetView()V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 915
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private findLiftOnScrollTargetView()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 898
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 905
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    :cond_3
    return-object v1
.end method

.method private hasCollapsibleChild()Z
    .locals 4

    .line 485
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 486
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    .line 495
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 496
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 497
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    return-void
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 549
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 553
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    return-void
.end method

.method private setLiftableState(Z)Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eq v0, p1, :cond_0

    .line 796
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 797
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldOffsetFirstChild()Z
    .locals 3

    .line 959
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 960
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 961
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V
    .locals 3

    .line 827
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->design_appbar_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 831
    :goto_1
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    .line 832
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p2, 0x2

    .line 835
    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v2, p2, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 836
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 837
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 836
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 838
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 839
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 846
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 558
    instance-of p0, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 380
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    .line 385
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 387
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 393
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 2

    .line 563
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 1

    .line 568
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 1

    .line 573
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 574
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    .line 575
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 576
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 578
    :cond_1
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 645
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 647
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    return p0

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 652
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 653
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 654
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 655
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 659
    iget v7, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v4, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 663
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v7, v4

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 666
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    sub-int v4, v5, v4

    add-int/2addr v7, v4

    goto :goto_1

    :cond_2
    add-int/2addr v7, v5

    :goto_1
    if-nez v0, :cond_3

    .line 671
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 674
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_3
    add-int/2addr v2, v7

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 683
    :cond_6
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .line 688
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 690
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    return p0

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 695
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 696
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 697
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 698
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 700
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 710
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    return v0
.end method

.method public getLiftOnScrollTargetViewId()I
    .locals 0
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 882
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    return p0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 742
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    .line 743
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 752
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 759
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getPendingAction()I
    .locals 0

    .line 942
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    return p0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 375
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final getTopInset()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 598
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 599
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    return p0

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 604
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 605
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 606
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 607
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_3

    .line 611
    iget v8, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    if-nez v2, :cond_1

    .line 613
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v5

    sub-int/2addr v3, v5

    :cond_1
    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_2

    .line 622
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    :cond_3
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 0

    .line 640
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method hasChildWithInterpolator()Z
    .locals 0

    .line 589
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    return p0
.end method

.method hasScrollableChildren()Z
    .locals 0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLiftOnScroll()Z
    .locals 0

    .line 863
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 767
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 770
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 772
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/google/android/material/R$attr;->state_liftable:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/google/android/material/R$attr;->state_liftable:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 773
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/google/android/material/R$attr;->state_lifted:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/google/android/material/R$attr;->state_lifted:I

    neg-int v2, v2

    :goto_1
    aput v2, v0, v1

    const/4 v1, 0x2

    .line 777
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/material/R$attr;->state_collapsible:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/google/android/material/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_2
    aput v2, v0, v1

    const/4 v1, 0x3

    .line 778
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_4

    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz p0, :cond_4

    sget p0, Lcom/google/android/material/R$attr;->state_collapsed:I

    goto :goto_3

    :cond_4
    sget p0, Lcom/google/android/material/R$attr;->state_collapsed:I

    neg-int p0, p0

    :goto_3
    aput p0, v0, v1

    .line 780
    invoke-static {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 583
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 585
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 450
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 452
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_0
    if-ltz p3, :cond_0

    .line 456
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-static {p4, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    .line 462
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p3

    move p4, p1

    :goto_1
    if-ge p4, p3, :cond_2

    .line 464
    invoke-virtual {p0, p4}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 465
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 466
    invoke-virtual {p5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 469
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 474
    :cond_2
    :goto_2
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    .line 475
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p5

    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    :cond_3
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    if-nez p3, :cond_6

    .line 480
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-nez p3, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->hasCollapsibleChild()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move p1, p2

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 424
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    .line 426
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 433
    invoke-static {p1, v0, p2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    .line 442
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    .line 445
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onOffsetChanged(I)V
    .locals 3

    .line 723
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    .line 725
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 733
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    if-eqz v2, :cond_1

    .line 735
    invoke-interface {v2, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 969
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 975
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 977
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 304
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    .line 946
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 512
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 513
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 530
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 545
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    .line 858
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 871
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 873
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    return-void
.end method

.method public setLiftable(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 790
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    move-result p0

    return p0
.end method

.method public setLifted(Z)Z
    .locals 0

    .line 809
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result p0

    return p0
.end method

.method setLiftedState(Z)Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eq v0, p1, :cond_1

    .line 815
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 816
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 817
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 506
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 503
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 324
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 325
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 330
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 331
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 334
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 335
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 337
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 351
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 364
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 928
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 410
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 414
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method shouldLift(Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 886
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->findLiftOnScrollTargetView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    if-eqz p0, :cond_2

    const/4 p1, -0x1

    .line 891
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 405
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
