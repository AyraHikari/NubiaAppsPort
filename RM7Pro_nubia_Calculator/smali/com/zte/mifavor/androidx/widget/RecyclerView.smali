.class public Lcom/zte/mifavor/androidx/widget/RecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-ViewSpringRV"


# instance fields
.field private iOverScrollDecor:Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsDispalyMotion:Z

.field private mIsUseSpring:Z

.field private mOverScrollDecoratorHelper:Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;

.field mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

.field private mTotalyDy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mTotalyDy:I

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    .line 25
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsDispalyMotion:Z

    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView in, context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-direct {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    .line 43
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    sget-object v1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->initSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getActivityByContext(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getDispalyMotionEffect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsDispalyMotion:Z

    .line 47
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    move p2, p3

    :cond_0
    iput-boolean p2, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    .line 49
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean p2, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    const-string p1, "QW-QScroll-ViewSpringRV"

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RecyclerView out. mIsDispalyMotion = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsDispalyMotion:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mIsUseSpring = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/androidx/widget/RecyclerView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mTotalyDy:I

    return p0
.end method

.method static synthetic access$002(Lcom/zte/mifavor/androidx/widget/RecyclerView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mTotalyDy:I

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dispatchTouchEvent()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mTotalyDy:I

    .line 141
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(II)Z
    .locals 5

    const/4 v0, -0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    const-string v2, "QW-QScroll-ViewSpringRV"

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling+++++++++++++++++++++, velocityY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", canScrollUp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canScollDown = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", IsBeingDragged = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsBeingDragged()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsBeingDragged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->fling(I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "QW-QScroll-ViewSpringRV"

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fling+++++++++++++++++++++, ignore fling, velocityY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getIsBeingDragged()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->iOverScrollDecor:Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->iOverScrollDecor:Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;

    invoke-interface {p0}, Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;->getIsBeingDragged()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getUseSpring()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    return p0
.end method

.method public isCollapsed()Z
    .locals 3

    .line 220
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->isSupportSink()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "QW-QScroll-ViewSpringRV"

    const-string v0, "isCollapsed don\'t support sink. return true."

    .line 221
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result p0

    if-nez p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public isExpanded()Z
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->isSupportSink()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "QW-QScroll-ViewSpringRV"

    const-string v0, "isExpanded don\'t support sink. return true."

    .line 207
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    const-string p0, "QW-QScroll-ViewSpringRV"

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExpanded out. isExpanded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isSupportSink()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isSupportSink()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 118
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onFinishInflate()V

    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate in. +++++ add On Scroll Listener onScrolled. mIsUseSpring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;-><init>(Lcom/zte/mifavor/androidx/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 5

    .line 99
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged in, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    const-string v2, "QW-QScroll-ViewSpringRV"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScrollStateChanged, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", canScrollUp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canScollDown = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onScrollStateChanged(Landroid/view/View;I)V

    :cond_1
    const-string p0, "QW-QScroll-ViewSpringRV"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged out, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const-string p1, "QW-QScroll-ViewSpringRV"

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged don\'t use animation, mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mOverScrollDecoratorHelper:Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;

    .line 72
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mOverScrollDecoratorHelper:Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;

    invoke-virtual {p1}, Lcom/zte/mifavor/utils/overscroll/OverScrollDecoratorHelper;->setUpOverScroll()Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->iOverScrollDecor:Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;

    return-void
.end method

.method public setDampingRatio(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDampingRatio dampingRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 148
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setDampingRatio(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDragAmplitude(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDragAmplitude dragAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 190
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setDragAmplitude(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 60
    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-nez p1, :cond_1

    .line 62
    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setSpringAnimationProperty(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    :cond_2
    return-void
.end method

.method public setSlipAmplitude(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlipAmplitude slipAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 168
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setSlipAmplitude(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStiffness(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "QW-QScroll-ViewSpringRV"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStiffness stiffness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 158
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setStiffness(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUseSpring(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 175
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    .line 176
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    :cond_1
    const-string p1, "QW-QScroll-ViewSpringRV"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseSpring mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
