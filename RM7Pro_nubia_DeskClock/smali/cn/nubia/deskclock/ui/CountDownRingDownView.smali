.class public Lcn/nubia/deskclock/ui/CountDownRingDownView;
.super Landroid/widget/ImageView;
.source "CountDownRingDownView.java"


# static fields
.field private static final DELAY_TIME:I = 0x640

.field private static final TIME_FOUR:I = 0x2ee

.field private static final TIME_ONE:I = 0x64

.field private static final TIME_THREE:I = 0x190

.field private static final TIME_TWO:I = 0xc8

.field private static final UP_DISTANCE:I = 0x31


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUpDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    .line 30
    const/high16 v0, 0x42440000    # 49.0f

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mUpDistance:F

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownRingDownView;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->createAnimatorSet()V

    return-void
.end method

.method private createAnimatorSet()V
    .locals 15

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 61
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 62
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->setPivotY(F)V

    .line 64
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-string v5, "scaleY"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->createScaleAnimator(FFILandroid/animation/TimeInterpolator;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v13

    .line 66
    .local v13, "originScaleAnimatorY":Landroid/animation/Animator;
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f933333    # 1.15f

    const/4 v3, 0x1

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-string v5, "scaleX"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->createScaleAnimator(FFILandroid/animation/TimeInterpolator;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v12

    .line 68
    .local v12, "originScaleAnimatorX":Landroid/animation/Animator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 69
    .local v8, "firstScaleAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    const/4 v1, 0x1

    aput-object v13, v0, v1

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 72
    new-instance v0, Lcn/nubia/deskclock/ui/CountDownRingDownView$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/CountDownRingDownView$2;-><init>(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mUpDistance:F

    neg-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 83
    .local v7, "animatorUpDown":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 86
    const-wide/16 v0, 0xc8

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    const-string v0, "rotation"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 90
    .local v6, "animatorRotate":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x190

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    new-instance v0, Lcn/nubia/deskclock/ui/CountDownRingDownView$3;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/CountDownRingDownView$3;-><init>(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 101
    .local v14, "upRotateAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v6, v0, v1

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 103
    const-string v0, "scaleX"

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 106
    .local v10, "lastScaleAnimatorX":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x2ee

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    const-string v0, "scaleY"

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 112
    .local v11, "lastScaleAnimatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x2ee

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 116
    .local v9, "lastScaleAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v14, v1, v2

    const/4 v2, 0x2

    aput-object v9, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 122
    return-void

    .line 88
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 103
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f88f5c3    # 1.07f
        0x3f774bc7    # 0.966f
        0x3f8126e9    # 1.009f
        0x3f7f7cee    # 0.998f
        0x3f800000    # 1.0f
    .end array-data

    .line 109
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f89999a    # 1.075f
        0x3f7ae148    # 0.98f
        0x3f81eb85    # 1.015f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScaleAnimator(FFILandroid/animation/TimeInterpolator;Ljava/lang/String;)Landroid/animation/Animator;
    .locals 5
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "repeat"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "attr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 126
    new-array v1, v4, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, p5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 130
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 131
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public startAnimator()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 42
    :cond_1
    new-instance v0, Lcn/nubia/deskclock/ui/CountDownRingDownView$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/CountDownRingDownView$1;-><init>(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    .line 50
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 52
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    iput-object v1, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mRunnable:Ljava/lang/Runnable;

    .line 139
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 143
    :cond_0
    iput-object v1, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 146
    :cond_1
    return-void
.end method
