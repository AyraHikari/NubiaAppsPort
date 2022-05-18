.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/handmark/pulltorefresh/library/IPullToRefresh",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 77
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 78
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 84
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 85
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 87
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 91
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 77
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 78
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 84
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 85
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 87
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 91
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 77
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 78
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 84
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 85
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 87
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 91
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 118
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 77
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 78
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 84
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 85
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 87
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 91
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 124
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 125
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1053
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1054
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1057
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    return-void
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1062
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1216
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1222
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1218
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1228
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1233
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    .line 1230
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1075
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1081
    invoke-virtual {p0, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    .line 1085
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    .line 1087
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1088
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I

    .line 1091
    sget-object v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1093
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1097
    :cond_0
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1098
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 1104
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1105
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1108
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1109
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1114
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1115
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1116
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1117
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1128
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1131
    :cond_3
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1132
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1138
    :cond_4
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1142
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 1143
    return-void

    .line 1077
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1119
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_5
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1120
    const-string v3, "ptrAdapterViewBackground"

    const-string v4, "ptrRefreshableViewBackground"

    invoke-static {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1122
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1123
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1146
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1154
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1148
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    .line 1150
    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    .line 1152
    :pswitch_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1169
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1176
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    .line 1177
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 1181
    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1188
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1189
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1193
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1195
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1196
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1197
    .local v4, "scale":F
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1203
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    .line 1207
    :goto_2
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1208
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 1213
    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .line 1171
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    .line 1172
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 1173
    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1183
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1184
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1185
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1199
    .restart local v4    # "scale":F
    :pswitch_2
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    goto :goto_2

    .line 1209
    :cond_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1210
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1181
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1197
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1244
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1245
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1249
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1254
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1260
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1264
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1267
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1269
    :cond_1
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    .line 1271
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1277
    :cond_2
    :goto_1
    return-void

    .line 1256
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1257
    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    .line 1280
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1287
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 132
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void

    .line 140
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 575
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 576
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 583
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 584
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 587
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 588
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    .line 587
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    .line 589
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 590
    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 598
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;-><init>()V

    .line 600
    .local v0, "proxy":Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 603
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 607
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 154
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 628
    return-void
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 631
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 635
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 639
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 174
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 647
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 651
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 655
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 665
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 211
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 212
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 217
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 299
    :goto_0
    return v6

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 234
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 235
    :cond_1
    iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 239
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 240
    goto :goto_0

    .line 243
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 299
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 246
    :pswitch_1
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 247
    goto :goto_0

    .line 250
    :cond_5
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 256
    .local v4, "x":F
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 263
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 264
    .local v2, "diff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 267
    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 269
    .local v0, "absDiff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 270
    :cond_6
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 271
    iput v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 272
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 273
    iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 274
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 275
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1

    .line 258
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 259
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 260
    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .line 277
    .restart local v0    # "absDiff":F
    :cond_7
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 278
    iput v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 279
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 280
    iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 281
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 282
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 290
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 293
    iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 256
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 692
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 701
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 708
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 719
    :goto_0
    return-void

    .line 710
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 713
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 307
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 728
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 735
    :cond_1
    if-eqz p1, :cond_3

    .line 736
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_2

    .line 739
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    .line 746
    .local v0, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 753
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 763
    .end local v0    # "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_0
    return-void

    .line 749
    .restart local v0    # "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 757
    .end local v0    # "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 761
    :cond_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 770
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 781
    :goto_0
    return-void

    .line 772
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 775
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 788
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 792
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 793
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 795
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    .line 796
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 800
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 801
    check-cast v0, Landroid/os/Bundle;

    .line 803
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 804
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 806
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 807
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 810
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 812
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v1

    .line 813
    .local v1, "viewState":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 814
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 818
    :cond_1
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 823
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 822
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 827
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 831
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 833
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 836
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 837
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 838
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 840
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 846
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-string v0, "PullToRefresh"

    const-string v1, "onSizeChanged. W: %d, H: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 852
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 855
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 861
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 867
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 318
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 325
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 340
    goto :goto_0

    .line 327
    :pswitch_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 330
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 331
    goto :goto_0

    .line 347
    :pswitch_2
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 348
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 350
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_5

    .line 352
    :cond_4
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 353
    goto :goto_0

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 359
    goto :goto_0

    .line 364
    :cond_6
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 366
    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 10

    .prologue
    .line 874
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 876
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 877
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 878
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 879
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 881
    .local v1, "pBottom":I
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 916
    :goto_0
    const-string v5, "PullToRefresh"

    const-string v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    .line 919
    return-void

    .line 883
    :pswitch_0
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 884
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 885
    neg-int v2, v0

    .line 890
    :goto_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 891
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 892
    neg-int v3, v0

    goto :goto_0

    .line 887
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 894
    :cond_1
    const/4 v3, 0x0

    .line 896
    goto :goto_0

    .line 899
    :pswitch_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 900
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 901
    neg-int v4, v0

    .line 906
    :goto_2
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 907
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 908
    neg-int v1, v0

    goto :goto_0

    .line 903
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 910
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 881
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 924
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 926
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 928
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 929
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 930
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 934
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 935
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 936
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 926
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 383
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 388
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 389
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 950
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeaderScroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 955
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 957
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 958
    if-gez p1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 978
    :cond_0
    :goto_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 986
    :goto_1
    return-void

    .line 960
    :cond_1
    if-lez p1, :cond_2

    .line 961
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 963
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 964
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 980
    :pswitch_0
    invoke-virtual {p0, v4, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 983
    :pswitch_1
    invoke-virtual {p0, p1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 404
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 412
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 418
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 419
    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 423
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 425
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 428
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 430
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    .line 434
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    .line 446
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 440
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 453
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 461
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 470
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 471
    return-void

    .line 470
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 475
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 476
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 480
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V

    .line 481
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 485
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 488
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 495
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 503
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 512
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 513
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 520
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 525
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 526
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 376
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 377
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 530
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 531
    return-void
.end method

.method final varargs setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 540
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 542
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 568
    :cond_0
    return-void

    .line 547
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 550
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 553
    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 557
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 995
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 996
    return-void
.end method

.method protected final smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1006
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1007
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 1016
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1017
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 1026
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1029
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1040
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    :cond_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1049
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1050
    return-void

    .line 1049
    :cond_4
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method
