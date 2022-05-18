.class public Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;
.super Landroid/widget/FrameLayout;
.source "VerticalMotionFrameLayout.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VerticalMotionFrameLayout"

.field private static final VELOCITY_THRESHOLD:F = 300.0f


# instance fields
.field private mCurrentLayoutY:F

.field private mDisPatchY:F

.field private mEdgeCenter:F

.field private mInterDownX:I

.field private mInterDownY:I

.field private mInterMoveX:I

.field private mInterMoveY:I

.field private mIsBeingDragged:Z

.field private mIsClickEvent:Z

.field private mIsLayoutMax:Z

.field private mIsMoveUp:Z

.field private mIscountdownPlay:Z

.field private mLastDraggedStatus:Z

.field private mLastY:I

.field private mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewMoveDistance:F

.field private mListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

.field private mLtyMax:F

.field private mLtyMin:F

.field private mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

.field private mMoveY:F

.field private mRange:I

.field private mState:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private recentY:F

.field private translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

.field private translateToMinAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->initView(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->initView(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    .line 37
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    .line 41
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    iput v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mCurrentLayoutY:F

    .line 42
    iput v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListViewMoveDistance:F

    .line 43
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    .line 44
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastDraggedStatus:Z

    .line 45
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsLayoutMax:Z

    .line 46
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsClickEvent:Z

    .line 47
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIscountdownPlay:Z

    .line 49
    iput v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mState:I

    .line 56
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsMoveUp:Z

    .line 57
    iput v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->recentY:F

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->initView(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private RecyleVelocityTracker()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 93
    :cond_0
    return-void
.end method

.method private ResetVelocityTracker()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    .line 26
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->enFocusListView()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)Lcn/nubia/deskclock/inter/IMotionDetect;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsLayoutMax:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->unFocusListView()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    .line 26
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    return v0
.end method

.method private bounceBack()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "VerticalMotionFrameLayout"

    const-string v1, "bounceBack: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mEdgeCenter:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveCancel(Landroid/view/View;FZ)V

    .line 225
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveCancel(Landroid/view/View;FZ)V

    .line 228
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMax()V

    goto :goto_0
.end method

.method private bounceTo(F)V
    .locals 3
    .param p1, "velocityY"    # F

    .prologue
    .line 211
    const-string v0, "VerticalMotionFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounceTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsMoveUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mDisPatchY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mEdgeCenter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mEdgeCenter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsMoveUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mEdgeCenter:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 213
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveCancel(Landroid/view/View;FZ)V

    .line 214
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMax()V

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveCancel(Landroid/view/View;FZ)V

    .line 217
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    goto :goto_0
.end method

.method private enFocusListView()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setChildViewEnable(Z)V

    .line 329
    return-void
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listView":Landroid/widget/ListView;
    check-cast v0, Landroid/widget/ListView;

    .line 119
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setTranslationY(F)V

    .line 97
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mRange:I

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mTouchSlop:I

    .line 99
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mRange:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mEdgeCenter:F

    .line 100
    return-void
.end method

.method private isListViewInTop(Landroid/widget/ListView;)Z
    .locals 5
    .param p1, "mListView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 308
    if-nez p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "mTopView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 315
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 318
    goto :goto_0
.end method

.method private translateToMax()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    iput v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mCurrentLayoutY:F

    .line 333
    const-string v1, "VerticalMotionFrameLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateToMax: mDisPatchY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mCurrentLayoutY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mCurrentLayoutY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    iget v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$1;-><init>(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    invoke-virtual {p0, v1, v6, v7}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 384
    :goto_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 353
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 354
    const-string v1, "translationY"

    new-array v2, v5, [F

    iget v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 355
    .local v0, "y":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    .line 356
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 357
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 358
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMaxAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;-><init>(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method

.method private unFocusListView()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setChildViewEnable(Z)V

    .line 325
    return-void
.end method


# virtual methods
.method public cancelDragging()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    .line 126
    :cond_0
    return-void
.end method

.method public getIsLayoutMax()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsLayoutMax:Z

    return v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mRange:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 235
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 236
    .local v4, "y":F
    const-string v7, "VerticalMotionFrameLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onInterceptTouchEvent  action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 239
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->ResetVelocityTracker()V

    .line 240
    iget-object v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterDownY:I

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterDownX:I

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastY:I

    .line 244
    iput v11, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListViewMoveDistance:F

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterMoveX:I

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterMoveY:I

    .line 249
    iget v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterMoveY:I

    iget v8, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterDownY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 250
    .local v5, "y1":I
    iget v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterMoveX:I

    iget v8, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mInterDownX:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 251
    .local v3, "x1":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mTouchSlop:I

    if-le v7, v8, :cond_2

    .line 252
    iput-boolean v10, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsClickEvent:Z

    .line 256
    iget v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastY:I

    int-to-float v7, v7

    sub-float v7, v4, v7

    cmpg-float v7, v7, v11

    if-gez v7, :cond_1

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v7

    iget v8, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    iget v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    :cond_0
    if-le v5, v3, :cond_1

    .line 260
    iput v10, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mState:I

    .line 262
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->isListViewInTop(Landroid/widget/ListView;)Z

    move-result v1

    .line 266
    .local v1, "isListViewInTop":Z
    iget v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastY:I

    int-to-float v7, v7

    sub-float v7, v4, v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_2

    if-eqz v1, :cond_2

    if-le v5, v3, :cond_2

    .line 270
    iput v10, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mState:I

    .line 274
    .end local v1    # "isListViewInTop":Z
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v7

    iget v8, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v7

    iget v8, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 275
    :cond_3
    iget-object v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v7, v6}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setViewPagerEnable(Z)V

    .line 283
    :goto_2
    iget v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mState:I

    if-ne v7, v6, :cond_5

    .line 284
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->enFocusListView()V

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 286
    .local v2, "nowYLv":F
    iget v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastY:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    iput v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListViewMoveDistance:F

    .line 290
    iput-boolean v10, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 277
    .end local v2    # "nowYLv":F
    :cond_4
    iget-object v7, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v7, v10}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setViewPagerEnable(Z)V

    goto :goto_2

    .line 292
    :cond_5
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 144
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1
    return v4

    .line 146
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getY()F

    move-result v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 149
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->ResetVelocityTracker()V

    .line 150
    iget-object v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 156
    .local v2, "nowY":F
    iget v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->recentY:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_3

    .line 157
    iget v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->recentY:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_2

    move v4, v5

    :cond_2
    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsMoveUp:Z

    .line 158
    iput v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->recentY:F

    .line 161
    :cond_3
    iget v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastY:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListViewMoveDistance:F

    sub-float/2addr v4, v6

    iput v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMoveY:F

    .line 162
    iget v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mCurrentLayoutY:F

    iget v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMoveY:F

    add-float v1, v4, v6

    .line 163
    .local v1, "move":F
    iget v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 164
    iget v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    sub-float v1, v4, v7

    .line 165
    :cond_4
    iget v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 166
    iget v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMax:F

    add-float v1, v4, v7

    .line 167
    :cond_5
    iget-object v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_6

    .line 168
    iget-object v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 170
    :cond_6
    iput-boolean v5, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    .line 171
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->unFocusListView()V

    .line 172
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIscountdownPlay:Z

    if-nez v4, :cond_7

    .line 173
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setTranslationY(F)V

    .line 174
    iget-object v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    invoke-interface {v4, p0, v1}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMove(Landroid/view/View;F)V

    .line 175
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastDraggedStatus:Z

    iget-boolean v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    if-eq v4, v6, :cond_7

    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    if-ne v4, v5, :cond_7

    .line 176
    iget-object v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    invoke-interface {v4, p0, v5}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveStart(Landroid/view/View;Z)V

    .line 179
    :cond_7
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLastDraggedStatus:Z

    goto :goto_0

    .line 184
    .end local v1    # "move":F
    .end local v2    # "nowY":F
    :pswitch_2
    iget-boolean v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsClickEvent:Z

    if-nez v6, :cond_0

    .line 186
    iget-object v6, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 188
    iput-boolean v5, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsClickEvent:Z

    .line 189
    iput v5, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mState:I

    .line 190
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v5

    iput v5, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    .line 191
    iget-boolean v5, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_a

    .line 192
    iget-boolean v5, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIscountdownPlay:Z

    if-nez v5, :cond_8

    .line 193
    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIsBeingDragged:Z

    .line 194
    iget-object v4, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 195
    .local v3, "velocityY":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43960000    # 300.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 196
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->bounceBack()V

    .line 204
    .end local v3    # "velocityY":F
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->RecyleVelocityTracker()V

    goto/16 :goto_0

    .line 198
    .restart local v3    # "velocityY":F
    :cond_9
    invoke-direct {p0, v3}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->bounceTo(F)V

    goto :goto_1

    .line 202
    .end local v3    # "velocityY":F
    :cond_a
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->enFocusListView()V

    goto :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCountdownStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mIscountdownPlay:Z

    .line 130
    return-void
.end method

.method public setEnableViewPageListener(Lcn/nubia/deskclock/inter/IViewPagerEnableListener;)V
    .locals 0
    .param p1, "Listener"    # Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    .line 138
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    .line 108
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    const-string v1, "VerticalMotionFrameLayout"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListView: mListView : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setOnMotionDetectListener(Lcn/nubia/deskclock/inter/IMotionDetect;)V
    .locals 0
    .param p1, "motionDetectListener"    # Lcn/nubia/deskclock/inter/IMotionDetect;

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mMotionDetectListener:Lcn/nubia/deskclock/inter/IMotionDetect;

    .line 68
    return-void
.end method

.method public translateToMin()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    iput v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mCurrentLayoutY:F

    .line 389
    const-string v1, "VerticalMotionFrameLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateToMin: mDisPatchY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mCurrentLayoutY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mCurrentLayoutY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mDisPatchY:F

    iget v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;-><init>(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    invoke-virtual {p0, v1, v6, v7}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 441
    :goto_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 408
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 409
    const-string v1, "translationY"

    new-array v2, v5, [F

    iget v3, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->mLtyMin:F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 410
    .local v0, "y":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    .line 411
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 412
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 414
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMinAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$4;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$4;-><init>(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method
