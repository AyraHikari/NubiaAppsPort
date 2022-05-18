.class public Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;
.super Ljava/lang/Object;
.source "NotePadSyncAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;
    }
.end annotation


# static fields
.field public static final COMPLETE_FAIL:I = 0x7

.field public static final COMPLETE_NO_CONNECT:I = 0x8

.field public static final COMPLETE_SUCCESS:I = 0x6

.field public static final COMPLETE_WAITING:I = 0x9

.field private static final ON_COMPLETE_STATE:I = 0x5

.field private static final ON_IDLE_STATE:I = 0x1

.field private static final ON_LOADING_STATE:I = 0x4

.field private static final ON_NORMAL_STATE:I = 0x2

.field private static final ON_STRETCHING_STATE:I = 0x3


# instance fields
.field private mArrowView:Landroid/view/View;

.field private mBackAnimationListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

.field private mDragIsReadyStr:Ljava/lang/String;

.field private mDragStr:Ljava/lang/String;

.field private mFailStr:Ljava/lang/String;

.field private mIsStackForBottom:Z

.field private mLoadingAnimator:Landroid/animation/ValueAnimator;

.field private mLoadingRotation:F

.field private mLoadingStr:Ljava/lang/String;

.field private mLoadingView:Landroid/view/View;

.field private mNoConnectStr:Ljava/lang/String;

.field private mNumStr:Ljava/lang/String;

.field private mNumberTextView:Landroid/widget/TextView;

.field private mShowDragView:Landroid/widget/TextView;

.field private mState:I

.field private mStateTextView:Landroid/widget/TextView;

.field private mSuccessStr:Ljava/lang/String;

.field private mSynchronizationResult:Landroid/view/View;

.field private mWaitingStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "isStackForBottom"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 52
    invoke-direct {p0, p2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->initView(Landroid/view/View;)V

    .line 53
    iput-boolean p3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mIsStackForBottom:Z

    .line 54
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->resetArrowRotation()V

    .line 55
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->initStr(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingRotation:F

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingRotation:F

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mBackAnimationListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->resetArrowRotation()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startLoadingAnimator()V

    return-void
.end method

.method private doScrollBackAnimation(FF)V
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 218
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 219
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    new-instance v1, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$2;-><init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    new-instance v1, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;-><init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    return-void
.end method

.method private doScrollBackToLoadingAnimation(FFZ)V
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "canLoading"    # Z

    .prologue
    .line 241
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 242
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    new-instance v1, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$4;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$4;-><init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    new-instance v1, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;

    invoke-direct {v1, p0, p3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;-><init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 266
    return-void
.end method

.method private initStr(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mIsStackForBottom:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragStr:Ljava/lang/String;

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragIsReadyStr:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingStr:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSuccessStr:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0026

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mFailStr:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNoConnectStr:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNumStr:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mWaitingStr:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 59
    const v0, 0x7f0f00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    .line 60
    const v0, 0x7f0f00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    .line 61
    const v0, 0x7f0f0100

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f0102

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNumberTextView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0f0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0f0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSynchronizationResult:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSynchronizationResult:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method

.method private resetArrowRotation()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mIsStackForBottom:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method private startArrowAnimator(FF)V
    .locals 5
    .param p1, "startRotation"    # F
    .param p2, "endRotation"    # F

    .prologue
    .line 106
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 108
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    return-void
.end method

.method private startLoadingAnimator()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingRotation:F

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 123
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;-><init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    return-void

    .line 120
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method canResetState()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 166
    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    if-ne v2, v0, :cond_0

    .line 179
    :goto_0
    return v0

    .line 169
    :cond_0
    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 170
    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 171
    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSynchronizationResult:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->resetArrowRotation()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method processBackEventUp(FF)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 183
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 184
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->doScrollBackAnimation(FF)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mBackAnimationListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;->animationEnd()V

    goto :goto_0
.end method

.method processBackLoadingEventUp(FF)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 192
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->doScrollBackToLoadingAnimation(FFZ)V

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->doScrollBackToLoadingAnimation(FFZ)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mBackAnimationListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;->animationEnd()V

    goto :goto_0
.end method

.method processDragState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    .line 140
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    iput v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 143
    iput v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 144
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mIsStackForBottom:Z

    if-eqz v0, :cond_2

    .line 145
    invoke-direct {p0, v2, v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startArrowAnimator(FF)V

    .line 149
    :goto_1
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0, v3, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startArrowAnimator(FF)V

    goto :goto_1
.end method

.method processDragStretchingState()V
    .locals 4

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    .line 154
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 156
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mIsStackForBottom:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, v3, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startArrowAnimator(FF)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mDragIsReadyStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-direct {p0, v2, v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startArrowAnimator(FF)V

    goto :goto_0
.end method

.method reSetState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 336
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 337
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSynchronizationResult:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->resetArrowRotation()V

    .line 344
    return-void
.end method

.method reStartLoadingAnimation()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 322
    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 323
    const/4 v1, 0x4

    iput v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 324
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSynchronizationResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startLoadingAnimator()V

    .line 330
    const/4 v0, 0x1

    .line 332
    :cond_0
    return v0
.end method

.method setBackAnimationListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mBackAnimationListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    .line 205
    return-void
.end method

.method stopLoading(II)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v2, 0x8

    .line 269
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mArrowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mShowDragView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSynchronizationResult:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNumStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 277
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 280
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSuccessStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mFailStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNoConnectStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mWaitingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updateSyncTip(II)V
    .locals 2
    .param p1, "number"    # I
    .param p2, "state"    # I

    .prologue
    .line 299
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mState:I

    .line 300
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 303
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mFailStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mNoConnectStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mSuccessStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->mWaitingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
