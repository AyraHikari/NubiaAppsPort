.class Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/BounceBackViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverscrollEffect"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mOverscroll:F

.field final synthetic this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;Lcn/nubia/weather/ui/view/BounceBackViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;
    .param p2, "x1"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;
    .param p1, "x1"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->onRelease()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->isOverscrolling()Z

    move-result v0

    return v0
.end method

.method private isOverscrolling()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 88
    iget-object v3, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$300(Lcn/nubia/weather/ui/view/BounceBackViewPager;)I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$300(Lcn/nubia/weather/ui/view/BounceBackViewPager;)I

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 92
    .local v0, "isLast":Z
    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    :cond_2
    move v1, v2

    .line 95
    goto :goto_0

    .end local v0    # "isLast":Z
    :cond_3
    move v0, v2

    .line 91
    goto :goto_1
.end method

.method private onRelease()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect$1;-><init>(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    goto :goto_0
.end method

.method private startAnimation(F)V
    .locals 5
    .param p1, "target"    # F

    .prologue
    .line 80
    const-string v1, "pull"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 81
    iget-object v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    iget v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 83
    .local v0, "scale":F
    iget-object v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v2}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$200(Lcn/nubia/weather/ui/view/BounceBackViewPager;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 84
    iget-object v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 85
    return-void
.end method


# virtual methods
.method public setPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .prologue
    .line 44
    iput p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 45
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$000(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V

    .line 46
    return-void
.end method
