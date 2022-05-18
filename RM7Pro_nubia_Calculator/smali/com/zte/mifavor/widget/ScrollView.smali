.class public Lcom/zte/mifavor/widget/ScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "-QW-View-SpringSV"


# instance fields
.field private isScrolledToBottom:Z

.field private isScrolledToTop:Z

.field private mIsDispalyMotion:Z

.field private mIsUseSpring:Z

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

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/zte/mifavor/widget/ScrollView;->mTotalyDy:I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    .line 24
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToTop:Z

    .line 25
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToBottom:Z

    .line 26
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsDispalyMotion:Z

    const-string v1, "-QW-View-SpringSV"

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScrollView in, context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-direct {v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;-><init>()V

    iput-object v1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    .line 37
    iget-object v1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->initSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 38
    iget-object v1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getActivityByContext(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getDispalyMotionEffect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsDispalyMotion:Z

    .line 41
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    .line 43
    iget-object p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean p2, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    const-string p1, "-QW-View-SpringSV"

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScrollView out. mIsDispalyMotion = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsDispalyMotion:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsUseSpring = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dispatchTouchEvent()V

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mTotalyDy:I

    .line 142
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(I)V
    .locals 5

    const/4 v0, -0x1

    .line 90
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    const-string v2, "-QW-View-SpringSV"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling+++++++++++++++++++++, velocityY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", canScrollUp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canScollDown = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", IsBeingDragged = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsBeingDragged()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsBeingDragged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->fling(I)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0

    :cond_1
    const-string p0, "-QW-View-SpringSV"

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling+++++++++++++++++++++, ignore fling, velocityY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "-QW-View-SpringSV"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++onInterceptTouchEvent in, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsUseSpring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-nez v1, :cond_0

    goto :goto_2

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string p1, "-QW-View-SpringSV"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++onInterceptTouchEvent out, return ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_3
    :goto_2
    const-string v0, "-QW-View-SpringSV"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent, mIsUseSpring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 5

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 110
    iput-boolean p4, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToTop:Z

    .line 111
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToBottom:Z

    goto :goto_0

    .line 113
    :cond_0
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToTop:Z

    .line 114
    iput-boolean p4, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToBottom:Z

    .line 117
    :goto_0
    div-int/lit8 v1, p2, 0x14

    const-string v2, "-QW-View-SpringSV"

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOverScrolled ++ scrollX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", scrollY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dy="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clampedX="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", clampedY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isScrolledToTop="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToTop:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isScrolledToBottom="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToBottom:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mTotalyDy:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mTotalyDy:I

    .line 120
    iget-object p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget p2, p0, Lcom/zte/mifavor/widget/ScrollView;->mTotalyDy:I

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setScrollOffsetY(I)V

    .line 122
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToBottom:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->isScrolledToTop:Z

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 123
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/16 p2, 0x3eb

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onScrollStateChanged(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const-string p0, "-QW-View-SpringSV"

    const-string p1, "onOverScrolled============= childView is null."

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, -0x1

    .line 66
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ScrollView;->canScrollVertically(I)Z

    move-result v2

    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    const-string v4, "-QW-View-SpringSV"

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++++++++++++++++++++++++onTouchEvent in. action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", canScrollUp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", canScollDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v4, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-ne v4, v0, :cond_2

    .line 71
    iget-object v4, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v4}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    .line 72
    invoke-virtual {v4}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v4}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    .line 80
    :goto_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    const-string p1, "-QW-View-SpringSV"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent, not call Spring Animation. mIsUseSpring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p0, "-QW-View-SpringSV"

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++++++++++++++++++onTouchEvent out. return result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setDampingRatio(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringSV"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDampingRatio dampingRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 149
    iget-object p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setDampingRatio(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDragAmplitude(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringSV"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDragAmplitude dragAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 185
    iget-object p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setDragAmplitude(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSlipAmplitude(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringSV"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlipAmplitude slipAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 169
    iget-object p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setSlipAmplitude(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStiffness(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringSV"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStiffness stiffness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 159
    iget-object p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setStiffness(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUseSpring(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 176
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    .line 177
    iget-object p1, p0, Lcom/zte/mifavor/widget/ScrollView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    const-string p1, "-QW-View-SpringSV"

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseSpring mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ScrollView;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
