.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;,
        Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroid/support/v4/app/Fragment;

.field mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 644
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 676
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1097
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1098
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1099
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1100
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 643
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 655
    iput v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 667
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 670
    iput v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 691
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 692
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 700
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 4030
    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    .line 643
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p1, "x1"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 643
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Landroid/support/v4/util/ArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2608
    .local p1, "added":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    .line 2624
    :cond_0
    return-void

    .line 2612
    :cond_1
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2613
    .local v2, "state":I
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2614
    .local v7, "numAdded":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 2615
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2616
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget v0, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    .line 2617
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2619
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_2

    .line 2620
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2614
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private animateRemoveFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "newState"    # I

    .prologue
    .line 1605
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1606
    .local v4, "viewToAnimate":Landroid/view/View;
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1607
    .local v2, "container":Landroid/view/ViewGroup;
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1608
    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1609
    iget-object v5, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    .line 1610
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;

    iget-object v5, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v5, v2, v4}, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1612
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1613
    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    .line 1614
    .local v3, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v5, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1634
    invoke-static {v4, p2}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1635
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1656
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v1, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1638
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v5, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v5}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1639
    new-instance v5, Landroid/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v5, p0, v2, v4, p1}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1652
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1653
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1654
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private burpActive()V
    .locals 3

    .prologue
    .line 3161
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 3162
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3163
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3164
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3162
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3168
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 2052
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2056
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2057
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2060
    :cond_1
    return-void
.end method

.method private cleanupExec()V
    .locals 1

    .prologue
    .line 2230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2231
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2232
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2233
    return-void
.end method

.method private completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V
    .locals 10
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 2502
    if-eqz p2, :cond_4

    .line 2503
    invoke-virtual {p1, p4}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V

    .line 2507
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2508
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2509
    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    if-eqz p3, :cond_0

    move-object v0, p0

    move v5, v4

    .line 2512
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2514
    :cond_0
    if-eqz p4, :cond_1

    .line 2515
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2518
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 2519
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 2520
    .local v8, "numActive":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_6

    .line 2523
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 2524
    .local v6, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    iget v0, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2525
    invoke-virtual {p1, v0}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2526
    iget v0, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    .line 2527
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v4, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2529
    :cond_2
    if-eqz p4, :cond_5

    .line 2530
    iput v9, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2520
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2505
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .end local v2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v6    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v7    # "i":I
    .end local v8    # "numActive":I
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    goto :goto_0

    .line 2532
    .restart local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .restart local v2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v6    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v7    # "i":I
    .restart local v8    # "numActive":I
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2533
    iput-boolean v3, v6, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2

    .line 2538
    .end local v6    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v7    # "i":I
    .end local v8    # "numActive":I
    :cond_6
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 2
    .param p1, "nextState"    # I

    .prologue
    const/4 v1, 0x0

    .line 3243
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3246
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3248
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3249
    return-void

    .line 3246
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 2642
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    move v9, v3

    .line 2643
    .local v9, "numFragments":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 2644
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2645
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 2646
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2648
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    .line 2649
    .local v2, "stateAfterAnimating":I
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v6

    .line 2650
    .local v6, "animatingAway":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 2651
    .local v7, "animation":Landroid/view/animation/Animation;
    if-eqz v7, :cond_0

    .line 2652
    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    .line 2655
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 2657
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2658
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2643
    .end local v2    # "stateAfterAnimating":I
    .end local v6    # "animatingAway":Landroid/view/View;
    .end local v7    # "animation":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2642
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v8    # "i":I
    .end local v9    # "numFragments":I
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    goto :goto_0

    .line 2659
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v8    # "i":I
    .restart local v9    # "numFragments":I
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2660
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 2664
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 3
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2178
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 2179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2182
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 2183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment host has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2186
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2190
    :cond_2
    if-nez p1, :cond_3

    .line 2191
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2194
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 2195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2198
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2200
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2202
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2204
    return-void

    .line 2202
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    .line 2585
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2586
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    .line 2587
    .local v3, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2588
    .local v1, "isPop":Z
    if-eqz v1, :cond_1

    .line 2589
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2592
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    move v2, v5

    .line 2593
    .local v2, "moveToState":Z
    :goto_1
    invoke-virtual {v3, v2}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V

    .line 2585
    .end local v2    # "moveToState":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2592
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2595
    :cond_1
    invoke-virtual {v3, v5}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2596
    invoke-virtual {v3}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2599
    .end local v1    # "isPop":Z
    .end local v3    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2358
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v15, v2, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2359
    .local v15, "allowReordering":Z
    const/4 v14, 0x0

    .line 2360
    .local v14, "addToBackStack":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 2365
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2366
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;

    move-result-object v17

    .line 2367
    .local v17, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    move/from16 v19, p3

    .local v19, "recordNum":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 2368
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/app/BackStackRecord;

    .line 2369
    .local v18, "record":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 2370
    .local v16, "isPop":Z
    if-nez v16, :cond_2

    .line 2371
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v17

    .line 2375
    :goto_2
    if-nez v14, :cond_0

    move-object/from16 v0, v18

    iget-boolean v2, v0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_3

    :cond_0
    const/4 v14, 0x1

    .line 2367
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2363
    .end local v16    # "isPop":Z
    .end local v17    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .end local v18    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v19    # "recordNum":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2373
    .restart local v16    # "isPop":Z
    .restart local v17    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .restart local v18    # "record":Landroid/support/v4/app/BackStackRecord;
    .restart local v19    # "recordNum":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v17

    goto :goto_2

    .line 2375
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 2377
    .end local v16    # "isPop":Z
    .end local v18    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2379
    if-nez v15, :cond_5

    .line 2380
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2383
    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2385
    move/from16 v12, p4

    .line 2386
    .local v12, "postponeIndex":I
    if-eqz v15, :cond_6

    .line 2387
    new-instance v7, Landroid/support/v4/util/ArraySet;

    invoke-direct {v7}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 2388
    .local v7, "addedFragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroid/support/v4/util/ArraySet;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2389
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/util/ArraySet;)I

    move-result v12

    .line 2391
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/support/v4/util/ArraySet;)V

    .line 2394
    .end local v7    # "addedFragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    :cond_6
    move/from16 v0, p3

    if-eq v12, v0, :cond_7

    if-eqz v15, :cond_7

    .line 2396
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2398
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2401
    :cond_7
    move/from16 v19, p3

    :goto_4
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_9

    .line 2402
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/app/BackStackRecord;

    .line 2403
    .restart local v18    # "record":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 2404
    .restart local v16    # "isPop":Z
    if-eqz v16, :cond_8

    move-object/from16 v0, v18

    iget v2, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_8

    .line 2405
    move-object/from16 v0, v18

    iget v2, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2406
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 2408
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2401
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2410
    .end local v16    # "isPop":Z
    .end local v18    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_9
    if-eqz v14, :cond_a

    .line 2411
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2413
    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 2264
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move v3, v5

    .line 2265
    .local v3, "numPostponed":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 2266
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2267
    .local v2, "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    if-eqz p1, :cond_2

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$300(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2268
    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2269
    .local v1, "index":I
    if-eq v1, v7, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2270
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2265
    .end local v1    # "index":I
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2264
    .end local v0    # "i":I
    .end local v2    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    .end local v3    # "numPostponed":I
    :cond_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 2274
    .restart local v0    # "i":I
    .restart local v2    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    .restart local v3    # "numPostponed":I
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_0

    .line 2275
    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2276
    :cond_3
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2277
    add-int/lit8 v0, v0, -0x1

    .line 2278
    add-int/lit8 v3, v3, -0x1

    .line 2280
    if-eqz p1, :cond_4

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$300(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2281
    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "index":I
    if-eq v1, v7, :cond_4

    .line 2282
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2284
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2286
    .end local v1    # "index":I
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_2

    .line 2290
    .end local v2    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 7
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v5, 0x0

    .line 2557
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2558
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 2560
    .local v4, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v4, :cond_2

    :cond_0
    move-object v3, v5

    .line 2572
    :cond_1
    :goto_0
    return-object v3

    .line 2564
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2565
    .local v1, "fragmentIndex":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 2566
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 2567
    .local v3, "underFragment":Landroid/support/v4/app/Fragment;
    iget-object v6, v3, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_3

    iget-object v6, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 2565
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v3    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_4
    move-object v3, v5

    .line 2572
    goto :goto_0
.end method

.method private forcePostponedTransactions()V
    .locals 2

    .prologue
    .line 2630
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2631
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2632
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2635
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2678
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2679
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2680
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2681
    :cond_0
    const/4 v3, 0x0

    monitor-exit p0

    .line 2691
    :goto_0
    return v3

    .line 2684
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2685
    .local v2, "numActions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2686
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2688
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2689
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2690
    monitor-exit p0

    move v3, v0

    .line 2691
    goto :goto_0

    .line 2690
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 5
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1266
    const/4 v2, 0x0

    .line 1268
    .local v2, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 1269
    const-class v3, Landroid/view/animation/Animation;

    const-string v4, "mListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1270
    sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1272
    :cond_0
    sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1278
    :goto_0
    return-object v2

    .line 1273
    :catch_0
    move-exception v1

    .line 1274
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "FragmentManager"

    const-string v4, "No field with the name mListener is found in Animation class"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1275
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 1276
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "FragmentManager"

    const-string v4, "Cannot access Animation\'s mListener field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 1120
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1121
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1122
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1123
    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V

    return-object v1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 1106
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1107
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1109
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1110
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1111
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1113
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1114
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1115
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1116
    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V

    return-object v1
.end method

.method private makeRemovedFragmentsInvisible(Landroid/support/v4/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2423
    .local p1, "fragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v2

    .line 2424
    .local v2, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2425
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2426
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v4, :cond_0

    .line 2427
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2428
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2429
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2424
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2432
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 724
    if-nez p0, :cond_0

    move v4, v5

    .line 743
    .end local p0    # "anim":Landroid/animation/Animator;
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local v1, "i":I
    :goto_0
    return v4

    .line 727
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    .restart local p0    # "anim":Landroid/animation/Animator;
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 728
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 729
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 730
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 731
    const-string v4, "alpha"

    aget-object v7, v3, v1

    invoke-virtual {v7}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 732
    goto :goto_0

    .line 730
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 735
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 736
    check-cast p0, Landroid/animation/AnimatorSet;

    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 737
    .restart local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 738
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    .line 739
    goto :goto_0

    .line 737
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_4
    move v4, v5

    .line 743
    goto :goto_0
.end method

.method static modifiesAlpha(Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 4
    .param p0, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .prologue
    const/4 v3, 0x1

    .line 708
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_0

    move v2, v3

    .line 719
    :goto_0
    return v2

    .line 710
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_3

    .line 711
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 712
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 713
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_1

    move v2, v3

    .line 714
    goto :goto_0

    .line 712
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 719
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v2

    goto :goto_0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x1

    .line 837
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 838
    invoke-direct {p0, v8}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 840
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 843
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 844
    .local v6, "childManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    move v7, v8

    .line 862
    .end local v6    # "childManager":Landroid/support/v4/app/FragmentManager;
    :goto_0
    return v7

    .line 850
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v7

    .line 851
    .local v7, "executePop":Z
    if-eqz v7, :cond_1

    .line 852
    iput-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 854
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 860
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 861
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->burpActive()V

    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/util/ArraySet;)I
    .locals 8
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    const/4 v7, 0x0

    .line 2449
    move v4, p4

    .line 2450
    .local v4, "postponeIndex":I
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_5

    .line 2451
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    .line 2452
    .local v5, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2453
    .local v1, "isPop":Z
    invoke-virtual {v5}, Landroid/support/v4/app/BackStackRecord;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v0, 0x1

    .line 2454
    invoke-virtual {v5, p1, v6, p4}, Landroid/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v2, 0x1

    .line 2455
    .local v2, "isPostponed":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 2456
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 2457
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2459
    :cond_0
    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v3, v5, v1}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/support/v4/app/BackStackRecord;Z)V

    .line 2461
    .local v3, "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    invoke-virtual {v5, v3}, Landroid/support/v4/app/BackStackRecord;->setOnStartPostponedListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2465
    if-eqz v1, :cond_4

    .line 2466
    invoke-virtual {v5}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    .line 2472
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 2473
    if-eq v0, v4, :cond_1

    .line 2474
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2475
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2479
    :cond_1
    invoke-direct {p0, p5}, Landroid/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroid/support/v4/util/ArraySet;)V

    .line 2450
    .end local v3    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "isPostponed":Z
    :cond_3
    move v2, v7

    .line 2454
    goto :goto_1

    .line 2468
    .restart local v2    # "isPostponed":Z
    .restart local v3    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_4
    invoke-virtual {v5, v7}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_2

    .line 2482
    .end local v1    # "isPop":Z
    .end local v2    # "isPostponed":Z
    .end local v3    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    .end local v5    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_5
    return v4
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2308
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2346
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2313
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Internal error with the back stack records"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2317
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2319
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2320
    .local v1, "numRecords":I
    const/4 v4, 0x0

    .line 2321
    .local v4, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 2322
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v0, v5, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2323
    .local v0, "canReorder":Z
    if-nez v0, :cond_6

    .line 2325
    if-eq v4, v2, :cond_4

    .line 2326
    invoke-direct {p0, p1, p2, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2330
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 2331
    .local v3, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2332
    :goto_2
    if-ge v3, v1, :cond_5

    .line 2333
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2334
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_5

    .line 2335
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2338
    :cond_5
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2339
    move v4, v3

    .line 2340
    add-int/lit8 v2, v3, -0x1

    .line 2321
    .end local v3    # "reorderingEnd":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2343
    .end local v0    # "canReorder":Z
    :cond_7
    if-eq v4, v1, :cond_0

    .line 2344
    invoke-direct {p0, p1, p2, v4, v1}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 3625
    const/4 v0, 0x0

    .line 3626
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 3637
    :goto_0
    return v0

    .line 3628
    :sswitch_0
    const/16 v0, 0x2002

    .line 3629
    goto :goto_0

    .line 3631
    :sswitch_1
    const/16 v0, 0x1001

    .line 3632
    goto :goto_0

    .line 3634
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 3626
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private scheduleCommit()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2104
    monitor-enter p0

    .line 2105
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2106
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v0

    .line 2107
    .local v1, "postponeReady":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 2108
    .local v0, "pendingReady":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 2109
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2110
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2112
    :cond_1
    monitor-exit p0

    .line 2113
    return-void

    .end local v0    # "pendingReady":Z
    .end local v1    # "postponeReady":Z
    :cond_2
    move v1, v2

    .line 2106
    goto :goto_0

    .restart local v1    # "postponeReady":Z
    :cond_3
    move v0, v2

    .line 2107
    goto :goto_1

    .line 2112
    .end local v1    # "postponeReady":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .prologue
    .line 1244
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 1249
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1251
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1255
    .local v0, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1256
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private static setRetaining(Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 6
    .param p0, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;

    .prologue
    .line 2785
    if-nez p0, :cond_1

    .line 2800
    :cond_0
    return-void

    .line 2788
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v3

    .line 2789
    .local v3, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v3, :cond_2

    .line 2790
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2791
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/support/v4/app/Fragment;->mRetaining:Z

    goto :goto_0

    .line 2794
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2795
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_0

    .line 2796
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2797
    .local v0, "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->setRetaining(Landroid/support/v4/app/FragmentManagerNonConfig;)V

    goto :goto_1
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .prologue
    const/4 v0, 0x0

    .line 747
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_0

    .line 752
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 757
    const-string v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v3, "FragmentManager"

    const-string v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v1, Landroid/support/v4/util/LogWriter;

    const-string v3, "FragmentManager"

    invoke-direct {v1, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 760
    .local v1, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 761
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v3, :cond_0

    .line 763
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const-string v4, "  "

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    throw p1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 769
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v3, "  "

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 770
    :catch_1
    move-exception v0

    .line 771
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 3649
    const/4 v0, -0x1

    .line 3650
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 3661
    :goto_0
    return v0

    .line 3652
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3653
    :goto_1
    goto :goto_0

    .line 3652
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 3655
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 3656
    :goto_2
    goto :goto_0

    .line 3655
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 3658
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_3

    .line 3650
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 2710
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2713
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2714
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1887
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1889
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1890
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1893
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1894
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1897
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1898
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1899
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1901
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1902
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1904
    :cond_3
    if-eqz p2, :cond_4

    .line 1905
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 1908
    :cond_4
    return-void

    .line 1895
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 880
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 5
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 2116
    monitor-enter p0

    .line 2117
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2118
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2121
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2122
    .local v0, "index":I
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    monitor-exit p0

    move v1, v0

    .line 2130
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 2127
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2128
    .restart local v0    # "index":I
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2130
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 2132
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Landroid/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 3172
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3173
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3174
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 3175
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 3176
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x1

    .line 1976
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 1978
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1979
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 1980
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1981
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1983
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1985
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1988
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1989
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1993
    :cond_3
    return-void

    .line 1986
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 779
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Landroid/support/v4/app/Fragment;)V
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1689
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1690
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v7

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_2

    move v4, v5

    .line 1691
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    .line 1690
    invoke-virtual {p0, p1, v7, v4, v8}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    .line 1692
    .local v0, "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v0, :cond_5

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    .line 1693
    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1694
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_4

    .line 1695
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1696
    invoke-virtual {p1, v6}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 1717
    :goto_1
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1718
    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 1734
    .end local v0    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_0
    :goto_2
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_1

    .line 1735
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1737
    :cond_1
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1738
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1739
    return-void

    :cond_2
    move v4, v6

    .line 1690
    goto :goto_0

    .line 1698
    .restart local v0    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_3
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1699
    .local v2, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1700
    .local v1, "animatingView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1703
    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v7, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v7, p0, v2, v1, p1}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 1715
    .end local v1    # "animatingView":Landroid/view/View;
    .end local v2    # "container":Landroid/view/ViewGroup;
    :cond_4
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1720
    :cond_5
    if-eqz v0, :cond_6

    .line 1721
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1722
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v7, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1723
    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->start()V

    .line 1725
    :cond_6
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v3, 0x8

    .line 1728
    .local v3, "visibility":I
    :goto_3
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1730
    invoke-virtual {p1, v6}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    goto :goto_2

    .end local v3    # "visibility":I
    :cond_7
    move v3, v6

    .line 1725
    goto :goto_3
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x1

    .line 1958
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1960
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1961
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    .line 1963
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1965
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1966
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1968
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1970
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1973
    :cond_3
    return-void

    .line 1966
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3198
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3199
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3200
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3201
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3271
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3272
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3273
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3270
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3276
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3352
    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ge v4, v3, :cond_1

    .line 3363
    :cond_0
    :goto_0
    return v2

    .line 3355
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 3356
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3357
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 3358
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 3359
    goto :goto_0

    .line 3355
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3192
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3193
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3195
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 3288
    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 3289
    const/4 v3, 0x0

    .line 3317
    :goto_0
    return v3

    .line 3291
    :cond_0
    const/4 v3, 0x0

    .line 3292
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 3293
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3294
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3295
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 3296
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3297
    const/4 v3, 0x1

    .line 3298
    if-nez v2, :cond_1

    .line 3299
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3301
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3293
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3306
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 3307
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 3308
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3309
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3310
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 3307
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3315
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_6
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public dispatchDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3234
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3236
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3237
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 3238
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 3239
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .prologue
    .line 3229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3230
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 3279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3280
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3281
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3282
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 3279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3285
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 3252
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3253
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3254
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3255
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3252
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3258
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3474
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3475
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3476
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3477
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3478
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3481
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3482
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3483
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3486
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3427
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3428
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3429
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3430
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3431
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3434
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3435
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3436
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    .line 3439
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3458
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3459
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3460
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3461
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3462
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3465
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3466
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3467
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3470
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3595
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3596
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3597
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3598
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3599
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 3602
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3603
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3604
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3607
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3610
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3611
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3612
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3613
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3614
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V

    .line 3617
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3618
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3619
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3622
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3535
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3536
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3537
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3538
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3539
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V

    .line 3542
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3543
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3544
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3547
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3412
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3413
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3414
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3415
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3416
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3419
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3420
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3421
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    .line 3424
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3443
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3444
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3445
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3446
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3447
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3450
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3451
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3452
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3455
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3520
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3521
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3522
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3523
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3524
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V

    .line 3527
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3528
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3529
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3532
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3565
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3566
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3567
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3568
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3569
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3572
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3573
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3574
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3577
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3505
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3506
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3507
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3508
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3509
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 3512
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3513
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3514
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3517
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3550
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3551
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3552
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3553
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3554
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V

    .line 3557
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3558
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3559
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3562
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    .prologue
    .line 3490
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3491
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3492
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3493
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3494
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3497
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3498
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3499
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3502
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3580
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3581
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 3582
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 3583
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x1

    .line 3584
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 3587
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 3588
    .local v0, "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_2

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3589
    :cond_2
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3592
    .end local v0    # "p":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3337
    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ge v4, v3, :cond_1

    .line 3348
    :cond_0
    :goto_0
    return v2

    .line 3340
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 3341
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3342
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 3343
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 3344
    goto :goto_0

    .line 3340
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3367
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 3376
    :cond_0
    return-void

    .line 3370
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3371
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3372
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 3373
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3370
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchPause()V
    .locals 1

    .prologue
    .line 3216
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3217
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 3261
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3262
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3263
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3264
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3261
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3267
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3321
    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 3322
    const/4 v2, 0x0

    .line 3333
    :cond_0
    return v2

    .line 3324
    :cond_1
    const/4 v2, 0x0

    .line 3325
    .local v2, "show":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3326
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3327
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 3328
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3329
    const/4 v2, 0x1

    .line 3325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchReallyStop()V
    .locals 1

    .prologue
    .line 3225
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3226
    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3210
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3211
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3212
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3213
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3204
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3205
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3206
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3207
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .prologue
    .line 3220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3221
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3222
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 1

    .prologue
    .line 2695
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_0

    .line 2696
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2697
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2699
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 991
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v6, :cond_1

    .line 992
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 993
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 994
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 998
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 999
    .local v2, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1000
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1001
    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 997
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1008
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1009
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 1010
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1012
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 1013
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1016
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1021
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1022
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1023
    if-lez v0, :cond_3

    .line 1024
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 1026
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 1027
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1028
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1033
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 1034
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1035
    if-lez v0, :cond_4

    .line 1036
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 1038
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1039
    .local v1, "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1040
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1037
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1046
    .end local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 1047
    :try_start_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 1048
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1049
    if-lez v0, :cond_5

    .line 1050
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 1052
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1053
    .restart local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1054
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1051
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1059
    .end local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1060
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 1066
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1067
    if-lez v0, :cond_7

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 1070
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;

    .line 1071
    .local v5, "r":Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1069
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1063
    .end local v3    # "i":I
    .end local v5    # "r":Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1077
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1079
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1080
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_8

    .line 1081
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1084
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1085
    const-string v6, " mStopped="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1086
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1087
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_9

    .line 1088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1091
    :cond_9
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1092
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_a
    return-void
.end method

.method public enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 2078
    if-nez p2, :cond_0

    .line 2079
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2081
    :cond_0
    monitor-enter p0

    .line 2082
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_3

    .line 2083
    :cond_1
    if-eqz p2, :cond_2

    .line 2085
    monitor-exit p0

    .line 2095
    :goto_0
    return-void

    .line 2087
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2089
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 2090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2092
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    .line 2094
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method ensureInflatedFragmentView(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1663
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_1

    .line 1664
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1666
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1667
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1668
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1669
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1671
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1676
    :cond_1
    :goto_0
    return-void

    .line 1673
    :cond_2
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_0
.end method

.method public execPendingActions()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2239
    invoke-direct {p0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2241
    const/4 v0, 0x0

    .line 2242
    .local v0, "didSomething":Z
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2245
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 2249
    const/4 v0, 0x1

    goto :goto_0

    .line 2247
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v1

    .line 2252
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2253
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->burpActive()V

    .line 2255
    return v0
.end method

.method public execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 2207
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 2223
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2212
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2215
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 2221
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2222
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->burpActive()V

    goto :goto_0

    .line 2217
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 785
    .local v0, "updates":Z
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 786
    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1998
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1999
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2000
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 2013
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_1
    return-object v0

    .line 1998
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2004
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    .line 2006
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 2007
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2008
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 2006
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2013
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2018
    if-eqz p1, :cond_2

    .line 2020
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2021
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2022
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2036
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 2020
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2027
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 2029
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 2030
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2031
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2029
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2036
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 2040
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 2041
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2042
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2043
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2048
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 2041
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2048
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2161
    monitor-enter p0

    .line 2162
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2163
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2166
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    monitor-exit p0

    .line 2169
    return-void

    .line 2168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getActiveFragmentCount()I
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 948
    const/4 v0, 0x0

    .line 950
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 931
    const/4 v1, 0x0

    .line 938
    :cond_0
    return-object v1

    .line 933
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 934
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 935
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 936
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 901
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 902
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 903
    const/4 v0, 0x0

    .line 910
    :cond_0
    :goto_0
    return-object v0

    .line 905
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 906
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 907
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 919
    :goto_0
    return-object v0

    .line 918
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 919
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 3766
    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 3390
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x1

    .line 1932
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 1934
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1937
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1939
    :cond_1
    return-void

    .line 1937
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1282
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateSaved()Z
    .locals 1

    .prologue
    .line 2067
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 16
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    .line 1128
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v8

    .line 1129
    .local v8, "nextAnim":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1130
    .local v3, "animation":Landroid/view/animation/Animation;
    if-eqz v3, :cond_0

    .line 1131
    new-instance v11, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v12, 0x0

    invoke-direct {v11, v3, v12}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V

    .line 1221
    :goto_0
    return-object v11

    .line 1134
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v4

    .line 1135
    .local v4, "animator":Landroid/animation/Animator;
    if-eqz v4, :cond_1

    .line 1136
    new-instance v11, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v12, 0x0

    invoke-direct {v11, v4, v12}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/FragmentManagerImpl$1;)V

    goto :goto_0

    .line 1139
    :cond_1
    if-eqz v8, :cond_5

    .line 1140
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 1141
    .local v5, "dir":Ljava/lang/String;
    const-string v11, "anim"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1142
    .local v7, "isAnim":Z
    const/4 v10, 0x0

    .line 1143
    .local v10, "successfulLoad":Z
    if-eqz v7, :cond_3

    .line 1146
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1147
    if-eqz v3, :cond_2

    .line 1148
    new-instance v11, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v12, 0x0

    invoke-direct {v11, v3, v12}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v6

    .line 1153
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    throw v6

    .line 1151
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const/4 v10, 0x1

    .line 1158
    :cond_3
    :goto_1
    if-nez v10, :cond_5

    .line 1161
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 1162
    if-eqz v4, :cond_5

    .line 1163
    new-instance v11, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v12, 0x0

    invoke-direct {v11, v4, v12}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/FragmentManagerImpl$1;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1165
    :catch_1
    move-exception v6

    .line 1166
    .local v6, "e":Ljava/lang/RuntimeException;
    if-eqz v7, :cond_4

    .line 1168
    throw v6

    .line 1171
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1172
    if-eqz v3, :cond_5

    .line 1173
    new-instance v11, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v12, 0x0

    invoke-direct {v11, v3, v12}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V

    goto :goto_0

    .line 1179
    .end local v5    # "dir":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "isAnim":Z
    .end local v10    # "successfulLoad":Z
    :cond_5
    if-nez p2, :cond_6

    .line 1180
    const/4 v11, 0x0

    goto :goto_0

    .line 1183
    :cond_6
    invoke-static/range {p2 .. p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v9

    .line 1184
    .local v9, "styleIndex":I
    if-gez v9, :cond_7

    .line 1185
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1188
    :cond_7
    packed-switch v9, :pswitch_data_0

    .line 1204
    if-nez p4, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1205
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 1207
    :cond_8
    if-nez p4, :cond_9

    .line 1208
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1190
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x3f900000    # 1.125f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v11

    goto/16 :goto_0

    .line 1192
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f79999a    # 0.975f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v11

    goto/16 :goto_0

    .line 1194
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x3f79999a    # 0.975f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v11

    goto/16 :goto_0

    .line 1196
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f89999a    # 1.075f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v11

    goto/16 :goto_0

    .line 1198
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v13}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v11

    goto/16 :goto_0

    .line 1200
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v11

    goto/16 :goto_0

    .line 1221
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1154
    .end local v9    # "styleIndex":I
    .restart local v5    # "dir":Ljava/lang/String;
    .restart local v7    # "isAnim":Z
    .restart local v10    # "successfulLoad":Z
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 1188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1861
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1866
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1867
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1869
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1870
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1874
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1878
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1883
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_0
.end method

.method moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
    .locals 14
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 1748
    if-nez p1, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1751
    :cond_1
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1752
    .local v2, "nextState":I
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_2

    .line 1753
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1754
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1759
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1761
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1763
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentUnder(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 1764
    .local v8, "underFragment":Landroid/support/v4/app/Fragment;
    if-eqz v8, :cond_3

    .line 1765
    iget-object v10, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1767
    .local v10, "underView":Landroid/view/View;
    iget-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1768
    .local v7, "container":Landroid/view/ViewGroup;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 1769
    .local v9, "underIndex":I
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 1770
    .local v11, "viewIndex":I
    if-ge v11, v9, :cond_3

    .line 1771
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1772
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1775
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v9    # "underIndex":I
    .end local v10    # "underView":Landroid/view/View;
    .end local v11    # "viewIndex":I
    :cond_3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1777
    iget v0, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_4

    .line 1778
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1780
    :cond_4
    iput v12, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1781
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1783
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    .line 1784
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    .line 1783
    invoke-virtual {p0, p1, v0, v13, v1}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v6

    .line 1785
    .local v6, "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v6, :cond_5

    .line 1786
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1787
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 1788
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1796
    .end local v6    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .end local v8    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 1797
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1756
    :cond_6
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 1790
    .restart local v6    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .restart local v8    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_7
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1791
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2
.end method

.method moveToState(IZ)V
    .locals 6
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    .line 1811
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    .line 1812
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "No activity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1815
    :cond_0
    if-nez p2, :cond_2

    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, v4, :cond_2

    .line 1847
    :cond_1
    :goto_0
    return-void

    .line 1819
    :cond_2
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1821
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 1824
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1825
    .local v3, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1826
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1827
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V

    .line 1825
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1832
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1833
    .local v2, "numActive":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    .line 1834
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1835
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_5

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-nez v4, :cond_5

    .line 1836
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V

    .line 1833
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1840
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1842
    iget-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1843
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1844
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1659
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1660
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 14
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 1289
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 1290
    const/16 p2, 0x1

    .line 1292
    :cond_1
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_2

    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    .line 1293
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1295
    const/16 p2, 0x1

    .line 1303
    :cond_2
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_3

    .line 1304
    const/16 p2, 0x3

    .line 1306
    :cond_3
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_23

    .line 1310
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v2, :cond_6

    .line 1593
    :cond_4
    :goto_1
    return-void

    .line 1298
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 p2, v0

    goto :goto_0

    .line 1313
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1318
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1319
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1320
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1322
    :cond_8
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1588
    :cond_9
    :goto_2
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_4

    .line 1589
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToState: Fragment state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not updated inline; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move/from16 v0, p2

    iput v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_1

    .line 1324
    :pswitch_0
    if-lez p2, :cond_12

    .line 1325
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_a
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 1327
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1328
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1327
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1329
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1331
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:target_state"

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1333
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_b

    .line 1334
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:target_req_state"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1337
    :cond_b
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 1338
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1339
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1344
    :goto_3
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_c

    .line 1345
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1346
    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_c

    .line 1347
    const/16 p2, 0x3

    .line 1352
    :cond_c
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1353
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1354
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1355
    :goto_4
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1359
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_10

    .line 1360
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eq v2, v3, :cond_f

    .line 1361
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declared target fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that does not belong to this FragmentManager!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1341
    :cond_d
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:user_visible_hint"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    goto :goto_3

    .line 1354
    :cond_e
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1355
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v2

    goto :goto_4

    .line 1365
    :cond_f
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_10

    .line 1366
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1370
    :cond_10
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1371
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1372
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1373
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_11

    .line 1374
    new-instance v2, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onAttach()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1377
    :cond_11
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_1f

    .line 1378
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 1382
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1384
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    if-nez v2, :cond_20

    .line 1385
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1386
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1387
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1392
    :goto_6
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1399
    :cond_12
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/support/v4/app/Fragment;)V

    .line 1401
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_1a

    .line 1402
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_13
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v2, :cond_18

    .line 1404
    const/4 v10, 0x0

    .line 1405
    .local v10, "container":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_15

    .line 1406
    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 1407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1412
    :cond_14
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "container":Landroid/view/ViewGroup;
    check-cast v10, Landroid/view/ViewGroup;

    .line 1413
    .restart local v10    # "container":Landroid/view/ViewGroup;
    if-nez v10, :cond_15

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v2, :cond_15

    .line 1416
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1420
    .local v12, "resName":Ljava/lang/String;
    :goto_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1422
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1420
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1427
    .end local v12    # "resName":Ljava/lang/String;
    :cond_15
    iput-object v10, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1428
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v10, v3}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1430
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_22

    .line 1431
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1432
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1433
    if-eqz v10, :cond_16

    .line 1434
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1436
    :cond_16
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_17

    .line 1437
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    :cond_17
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1440
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1444
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    :goto_8
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1451
    .end local v10    # "container":Landroid/view/ViewGroup;
    :cond_18
    :goto_9
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1452
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1453
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 1454
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1456
    :cond_19
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1460
    :cond_1a
    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, p2

    if-le v0, v2, :cond_1b

    .line 1461
    const/4 v2, 0x3

    iput v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 1465
    :cond_1b
    :pswitch_3
    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_1d

    .line 1466
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1c

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_1c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1468
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 1472
    :cond_1d
    :pswitch_4
    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_9

    .line 1473
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_1e
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1475
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V

    .line 1476
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1477
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_2

    .line 1380
    :cond_1f
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 1389
    :cond_20
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1390
    const/4 v2, 0x1

    iput v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto/16 :goto_6

    .line 1417
    .restart local v10    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v11

    .line 1418
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v12, "unknown"

    .restart local v12    # "resName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1444
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v12    # "resName":Ljava/lang/String;
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1447
    :cond_22
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_9

    .line 1480
    .end local v10    # "container":Landroid/view/ViewGroup;
    :cond_23
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v2, v0, :cond_9

    .line 1481
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_2

    .line 1538
    :cond_24
    :goto_a
    :pswitch_5
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ge v0, v2, :cond_9

    .line 1539
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_25

    .line 1546
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1547
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v13

    .line 1548
    .local v13, "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1549
    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    .line 1556
    .end local v13    # "v":Landroid/view/View;
    :cond_25
    :goto_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_26

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1561
    :cond_26
    invoke-virtual/range {p1 .. p2}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1562
    const/16 p2, 0x1

    goto/16 :goto_2

    .line 1483
    :pswitch_6
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ge v0, v2, :cond_28

    .line 1484
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_27

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1486
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V

    .line 1490
    :cond_28
    :pswitch_7
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ge v0, v2, :cond_2a

    .line 1491
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_29

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_29
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1493
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V

    .line 1497
    :cond_2a
    :pswitch_8
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ge v0, v2, :cond_2c

    .line 1498
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2b

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom STOPPED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_2b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1503
    :cond_2c
    :pswitch_9
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_24

    .line 1504
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2d

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_2d
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2e

    .line 1508
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_2e

    .line 1509
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1512
    :cond_2e
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1513
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 1514
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_31

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_31

    .line 1516
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1517
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1518
    const/4 v8, 0x0

    .line 1519
    .local v8, "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v2, :cond_2f

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_2f

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1520
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2f

    iget v2, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2f

    .line 1522
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v8

    .line 1525
    :cond_2f
    const/4 v2, 0x0

    iput v2, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1526
    if-eqz v8, :cond_30

    .line 1527
    move/from16 v0, p2

    invoke-direct {p0, p1, v8, v0}, Landroid/support/v4/app/FragmentManagerImpl;->animateRemoveFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1529
    :cond_30
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1531
    .end local v8    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_31
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1532
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1533
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1534
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    goto/16 :goto_a

    .line 1550
    :cond_32
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1551
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    .line 1552
    .local v9, "animator":Landroid/animation/Animator;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1553
    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_b

    .line 1564
    .end local v9    # "animator":Landroid/animation/Animator;
    :cond_33
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_34

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_34
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_35

    .line 1566
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1567
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 1572
    :goto_c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDetach()V

    .line 1573
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V

    .line 1574
    if-nez p5, :cond_9

    .line 1575
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_36

    .line 1576
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_2

    .line 1569
    :cond_35
    const/4 v2, 0x0

    iput v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_c

    .line 1578
    :cond_36
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1579
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1580
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_2

    .line 1322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1481
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3179
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 3180
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3181
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3182
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3183
    .local v0, "addedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3184
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3185
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3186
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->noteStateNotSaved()V

    .line 3183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3189
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3666
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3667
    const/4 v0, 0x0

    .line 3757
    :goto_0
    return-object v0

    .line 3670
    :cond_0
    const/4 v0, 0x0

    const-string v2, "class"

    invoke-interface {p4, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3671
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3672
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    .line 3673
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3675
    :cond_1
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3676
    .local v9, "id":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3677
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3679
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3682
    const/4 v0, 0x0

    goto :goto_0

    .line 3685
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 3686
    .local v7, "containerId":I
    :goto_1
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    const/4 v0, -0x1

    if-ne v9, v0, :cond_4

    if-nez v10, :cond_4

    .line 3687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3685
    .end local v7    # "containerId":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 3694
    .restart local v7    # "containerId":I
    :cond_4
    const/4 v0, -0x1

    if-eq v9, v0, :cond_9

    invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3695
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_2
    if-nez v1, :cond_5

    if-eqz v10, :cond_5

    .line 3696
    invoke-virtual {p0, v10}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3698
    :cond_5
    if-nez v1, :cond_6

    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 3699
    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3702
    :cond_6
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView: id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3703
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " existing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3702
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    :cond_7
    if-nez v1, :cond_b

    .line 3706
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v8, v2}, Landroid/support/v4/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3707
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 3708
    if-eqz v9, :cond_a

    move v0, v9

    :goto_3
    iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 3709
    iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 3710
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 3711
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3712
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 3713
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3714
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3715
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 3741
    :cond_8
    :goto_4
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_d

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    .line 3742
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 3747
    :goto_5
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 3748
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3694
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    move v0, v7

    .line 3708
    goto :goto_3

    .line 3717
    :cond_b
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_c

    .line 3720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3721
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3722
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3727
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3728
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3732
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_8

    .line 3733
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 3744
    :cond_d
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 3751
    :cond_e
    if-eqz v9, :cond_f

    .line 3752
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3754
    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3755
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3757
    :cond_10
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3762
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1225
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 1226
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_1

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1232
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public popBackStack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 791
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 792
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 813
    if-gez p1, :cond_0

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 817
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 802
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 803
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .prologue
    .line 796
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 797
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 821
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 822
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 823
    if-gez p1, :cond_0

    .line 824
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 807
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 808
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 7
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2719
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2770
    :cond_0
    :goto_0
    return v4

    .line 2722
    :cond_1
    if-nez p3, :cond_3

    if-gez p4, :cond_3

    and-int/lit8 v6, p5, 0x1

    if-nez v6, :cond_3

    .line 2723
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 2724
    .local v3, "last":I
    if-ltz v3, :cond_0

    .line 2727
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2728
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "last":I
    :cond_2
    move v4, v5

    .line 2770
    goto :goto_0

    .line 2730
    :cond_3
    const/4 v2, -0x1

    .line 2731
    .local v2, "index":I
    if-nez p3, :cond_4

    if-ltz p4, :cond_a

    .line 2734
    :cond_4
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 2735
    :goto_1
    if-ltz v2, :cond_5

    .line 2736
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 2737
    .local v0, "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p3, :cond_8

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2745
    .end local v0    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_5
    if-ltz v2, :cond_0

    .line 2748
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_a

    .line 2749
    add-int/lit8 v2, v2, -0x1

    .line 2751
    :goto_2
    if-ltz v2, :cond_a

    .line 2752
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 2753
    .restart local v0    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p3, :cond_6

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-ltz p4, :cond_a

    iget v6, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p4, v6, :cond_a

    .line 2755
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 2756
    goto :goto_2

    .line 2740
    :cond_8
    if-ltz p4, :cond_9

    iget v6, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p4, v6, :cond_5

    .line 2743
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 2744
    goto :goto_1

    .line 2762
    .end local v0    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_a
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_0

    .line 2765
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    if-le v1, v2, :cond_2

    .line 2766
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2767
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 892
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 893
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 896
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 897
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .prologue
    .line 3396
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3397
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1911
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nesting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 1913
    .local v0, "inactive":Z
    :goto_0
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 1914
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1915
    :try_start_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1916
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_2

    .line 1918
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1920
    :cond_2
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1921
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1923
    :cond_3
    return-void

    .end local v0    # "inactive":Z
    :cond_4
    move v0, v2

    .line 1912
    goto :goto_0

    .line 1916
    .restart local v0    # "inactive":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 885
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 888
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 2702
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2704
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2707
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 18
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;

    .prologue
    .line 3025
    if-nez p1, :cond_1

    .line 3153
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v11, p1

    .line 3026
    check-cast v11, Landroid/support/v4/app/FragmentManagerState;

    .line 3027
    .local v11, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-eqz v2, :cond_0

    .line 3029
    const/4 v8, 0x0

    .line 3030
    .local v8, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/16 v17, 0x0

    .line 3034
    .local v17, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ViewModelStore;>;"
    if-eqz p2, :cond_7

    .line 3035
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v15

    .line 3036
    .local v15, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v8

    .line 3037
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/List;

    move-result-object v17

    .line 3038
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 3039
    .local v9, "count":I
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_7

    .line 3040
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 3041
    .local v10, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: re-attaching retained "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    :cond_2
    const/4 v13, 0x0

    .line 3043
    .local v13, "index":I
    :goto_3
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v2, v2

    if-ge v13, v2, :cond_4

    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v2, v2, v13

    iget v2, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    iget v3, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    if-eq v2, v3, :cond_4

    .line 3044
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 3038
    .end local v9    # "count":I
    .end local v10    # "f":Landroid/support/v4/app/Fragment;
    .end local v12    # "i":I
    .end local v13    # "index":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 3046
    .restart local v9    # "count":I
    .restart local v10    # "f":Landroid/support/v4/app/Fragment;
    .restart local v12    # "i":I
    .restart local v13    # "index":I
    :cond_4
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v2, v2

    if-ne v13, v2, :cond_5

    .line 3047
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find active fragment with index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3050
    :cond_5
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v2, v13

    .line 3051
    .local v1, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v10, v1, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 3052
    const/4 v2, 0x0

    iput-object v2, v10, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3053
    const/4 v2, 0x0

    iput v2, v10, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 3054
    const/4 v2, 0x0

    iput-boolean v2, v10, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3055
    const/4 v2, 0x0

    iput-boolean v2, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 3056
    const/4 v2, 0x0

    iput-object v2, v10, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 3057
    iget-object v2, v1, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 3058
    iget-object v2, v1, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3059
    iget-object v2, v1, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v10, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3061
    iget-object v2, v1, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3039
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 3068
    .end local v1    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v9    # "count":I
    .end local v10    # "f":Landroid/support/v4/app/Fragment;
    .end local v12    # "i":I
    .end local v13    # "index":I
    .end local v15    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_7
    new-instance v2, Landroid/util/SparseArray;

    iget-object v3, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 3069
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v2, v2

    if-ge v12, v2, :cond_c

    .line 3070
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v2, v12

    .line 3071
    .restart local v1    # "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v1, :cond_b

    .line 3072
    const/4 v5, 0x0

    .line 3073
    .local v5, "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 3074
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    check-cast v5, Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 3076
    .restart local v5    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_8
    const/4 v6, 0x0

    .line 3077
    .local v6, "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_9

    .line 3078
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    check-cast v6, Landroid/arch/lifecycle/ViewModelStore;

    .line 3080
    .restart local v6    # "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;Landroid/arch/lifecycle/ViewModelStore;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    .line 3082
    .restart local v10    # "f":Landroid/support/v4/app/Fragment;
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: active #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v3, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3087
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 3069
    .end local v5    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    .end local v6    # "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    .end local v10    # "f":Landroid/support/v4/app/Fragment;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 3092
    .end local v1    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_c
    if-eqz p2, :cond_f

    .line 3093
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v15

    .line 3094
    .restart local v15    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v15, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 3095
    .restart local v9    # "count":I
    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v9, :cond_f

    .line 3096
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 3097
    .restart local v10    # "f":Landroid/support/v4/app/Fragment;
    iget v2, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v2, :cond_d

    .line 3098
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v3, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    iput-object v2, v10, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 3099
    iget-object v2, v10, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_d

    .line 3100
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-attaching retained fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target no longer exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3094
    .end local v9    # "count":I
    .end local v10    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    .line 3108
    .end local v15    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3109
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v2, :cond_13

    .line 3110
    const/4 v12, 0x0

    :goto_7
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v2, v2

    if-ge v12, v2, :cond_13

    .line 3111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, v11, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 3112
    .restart local v10    # "f":Landroid/support/v4/app/Fragment;
    if-nez v10, :cond_10

    .line 3113
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No instantiated fragment for index #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v4, v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3116
    :cond_10
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 3117
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: added #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3119
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already added!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3121
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3123
    monitor-exit v3

    .line 3110
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 3123
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3128
    .end local v10    # "f":Landroid/support/v4/app/Fragment;
    :cond_13
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v2, :cond_16

    .line 3129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v11, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3130
    const/4 v12, 0x0

    :goto_8
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v2, v2

    if-ge v12, v2, :cond_17

    .line 3131
    iget-object v2, v11, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v7

    .line 3132
    .local v7, "bse":Landroid/support/v4/app/BackStackRecord;
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_14

    .line 3133
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: back stack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    new-instance v14, Landroid/support/v4/util/LogWriter;

    const-string v2, "FragmentManager"

    invoke-direct {v14, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 3136
    .local v14, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v16, Ljava/io/PrintWriter;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3137
    .local v16, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v2, v0, v3}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3138
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 3140
    .end local v14    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    iget v2, v7, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_15

    .line 3142
    iget v2, v7, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 3130
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 3146
    .end local v7    # "bse":Landroid/support/v4/app/BackStackRecord;
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3149
    :cond_17
    iget v2, v11, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v2, :cond_18

    .line 3150
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v3, v11, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 3152
    :cond_18
    iget v2, v11, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    goto/16 :goto_0
.end method

.method retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->setRetaining(Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 2775
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 2912
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2913
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2914
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2916
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2917
    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2919
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3019
    :cond_0
    :goto_0
    return-object v5

    .line 2924
    :cond_1
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2925
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/FragmentState;

    .line 2926
    .local v1, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v7, 0x0

    .line 2927
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_8

    .line 2928
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 2929
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_6

    .line 2930
    iget v9, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v9, :cond_2

    .line 2931
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2936
    :cond_2
    const/4 v7, 0x1

    .line 2938
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 2939
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    .line 2941
    iget v9, v4, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v9, :cond_7

    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_7

    .line 2942
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2944
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_5

    .line 2945
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v9, :cond_3

    .line 2946
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2950
    :cond_3
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 2951
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2953
    :cond_4
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_state"

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 2955
    iget v9, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_5

    .line 2956
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2966
    :cond_5
    :goto_2
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2963
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_7
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 2971
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_8
    if-nez v7, :cond_9

    .line 2972
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "FragmentManager"

    const-string v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2976
    :cond_9
    const/4 v2, 0x0

    .line 2977
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 2980
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2981
    if-lez v0, :cond_c

    .line 2982
    new-array v2, v0, [I

    .line 2983
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_c

    .line 2984
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v9, v2, v8

    .line 2985
    aget v9, v2, v8

    if-gez v9, :cond_a

    .line 2986
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2987
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2986
    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2990
    :cond_a
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_b

    .line 2991
    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2992
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2991
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2998
    :cond_c
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_e

    .line 2999
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3000
    if-lez v0, :cond_e

    .line 3001
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 3002
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_e

    .line 3003
    new-instance v10, Landroid/support/v4/app/BackStackState;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v10, v9}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v10, v3, v8

    .line 3004
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_d

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3005
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3004
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3010
    :cond_e
    new-instance v5, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 3011
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 3012
    iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 3013
    iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 3014
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_f

    .line 3015
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v9, v5, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 3017
    :cond_f
    iget v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v9, v5, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 3018
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->saveNonConfig()V

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 2876
    const/4 v0, 0x0

    .line 2878
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2879
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2881
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2882
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2883
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2884
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2885
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2888
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2889
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 2891
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2892
    if-nez v0, :cond_3

    .line 2893
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2895
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2898
    :cond_4
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 2899
    if-nez v0, :cond_5

    .line 2900
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2903
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2906
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 955
    iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 956
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not currently in the FragmentManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 959
    :cond_0
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v2, :cond_1

    .line 960
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 961
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 963
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 2860
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2863
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 2864
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2868
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2869
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2870
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2871
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 2866
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method saveNonConfig()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2803
    const/4 v3, 0x0

    .line 2804
    .local v3, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2805
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/4 v6, 0x0

    .line 2806
    .local v6, "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v7, :cond_8

    .line 2807
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 2808
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2809
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_7

    .line 2810
    iget-boolean v7, v2, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v7, :cond_1

    .line 2811
    if-nez v3, :cond_0

    .line 2812
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2814
    .restart local v3    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_2

    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v7, v2, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 2816
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retainNonConfig: keeping retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_1
    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v7, :cond_3

    .line 2820
    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2821
    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v7, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2828
    .local v0, "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 2829
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2830
    .restart local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_4

    .line 2831
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2815
    .end local v0    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    .end local v5    # "j":I
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 2825
    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .restart local v0    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    goto :goto_2

    .line 2835
    :cond_4
    if-eqz v1, :cond_5

    .line 2836
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    :cond_5
    if-nez v6, :cond_6

    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    if-eqz v7, :cond_6

    .line 2839
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2840
    .restart local v6    # "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4
    if-ge v5, v4, :cond_6

    .line 2841
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2845
    .end local v5    # "j":I
    :cond_6
    if-eqz v6, :cond_7

    .line 2846
    iget-object v7, v2, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    .end local v0    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2851
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v4    # "i":I
    :cond_8
    if-nez v3, :cond_9

    if-nez v1, :cond_9

    if-nez v6, :cond_9

    .line 2852
    iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2857
    :goto_5
    return-void

    .line 2854
    :cond_9
    new-instance v7, Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-direct {v7, v3, v1, v6}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    goto :goto_5
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 2136
    monitor-enter p0

    .line 2137
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2140
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2141
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 2142
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2157
    :goto_0
    monitor-exit p0

    .line 2158
    return-void

    .line 2145
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 2146
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2150
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2154
    :cond_5
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2157
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 3380
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 3381
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3385
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 3386
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 1948
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_2

    .line 1950
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1953
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1955
    :cond_2
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1850
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1858
    :cond_0
    return-void

    .line 1852
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1853
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1854
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 1855
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 1852
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 974
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 982
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 980
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .prologue
    .line 3401
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 3402
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3403
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/Pair;

    iget-object v2, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 3404
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3408
    :cond_0
    monitor-exit v3

    .line 3409
    return-void

    .line 3402
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3408
    .end local v0    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
