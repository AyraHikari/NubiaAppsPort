.class public Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;
.super Ljava/lang/Object;
.source "OverScrollDecoratorHelper.java"


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x1

.field public static final ORIENTATION_VERTICAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QW-QScroll-DecoHelper"


# instance fields
.field private mDampingRatio:F

.field private mIsUseSpring:Z

.field private mSlipAmplitude:F

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mStiffness:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mIsUseSpring:Z

    const/high16 v0, 0x43480000    # 200.0f

    .line 37
    iput v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mStiffness:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mDampingRatio:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 39
    iput v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSlipAmplitude:F

    .line 43
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    .line 44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 45
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 46
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 48
    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->setSpringAnimationProperty(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method

.method private setSpringAnimationProperty(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 58
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p2, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mStiffness:F

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 59
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mDampingRatio:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method


# virtual methods
.method public setDampingRatio(F)V
    .locals 2

    .line 116
    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mDampingRatio:F

    .line 117
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mDampingRatio:F

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const-string p0, "QW-QScroll-DecoHelper"

    .line 119
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

.method public setIsUseSpring(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mIsUseSpring:Z

    return-void
.end method

.method public setSlipAmplitude(F)V
    .locals 2

    .line 136
    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSlipAmplitude:F

    const-string p0, "QW-QScroll-DecoHelper"

    .line 137
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

.method public setStiffness(F)V
    .locals 2

    .line 124
    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mStiffness:F

    .line 125
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mStiffness:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const-string p1, "QW-QScroll-DecoHelper"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStiffness mStiffness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mStiffness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setUpOverScroll()Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 67
    invoke-virtual {v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    .line 71
    :cond_0
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/widget/ListView;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/widget/ListView;

    .line 75
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;-><init>(Landroid/widget/AbsListView;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/widget/GridView;

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/widget/GridView;

    .line 78
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;-><init>(Landroid/widget/AbsListView;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/widget/ScrollView;

    .line 81
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;-><init>(Landroid/widget/ScrollView;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 84
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;-><init>(Landroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/zte/mifavor/androidx/widget/ViewPager;

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    check-cast v0, Lcom/zte/mifavor/androidx/widget/ViewPager;

    .line 87
    new-instance v1, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v2, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;

    invoke-direct {v2, v0}, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object v1

    :cond_6
    const-string v0, "QW-QScroll-DecoHelper"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpOverScroll error. mView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setUpStaticOverScroll(Landroid/view/View;I)Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const-string p2, "QW-QScroll-DecoHelper"

    const-string v0, "setUpOverScroll error."

    .line 110
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p2, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v0, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p2, v0, p1, p0}, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object p2

    .line 106
    :pswitch_0
    new-instance p2, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v0, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p2, v0, p1, p0}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object p2

    .line 108
    :pswitch_1
    new-instance p2, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v0, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p2, v0, p1, p0}, Lcom/zte/mifavor/utils/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
