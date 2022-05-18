.class public Lcom/zte/mifavor/androidx/widget/ViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "-QW-View-SpringVP"


# instance fields
.field private mIsDispalyMotion:Z

.field private mIsUseSpring:Z

.field mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    .line 22
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsDispalyMotion:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    .line 22
    iput-boolean p2, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsDispalyMotion:Z

    const-string v0, "-QW-View-SpringVP"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager in, context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-direct {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    .line 32
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    sget-object v1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->initSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 33
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getDispalyMotionEffect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsDispalyMotion:Z

    .line 34
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    .line 36
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean p2, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    const-string p1, "-QW-View-SpringVP"

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ViewPager out. mIsDispalyMotion = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsDispalyMotion:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsUseSpring = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "-QW-View-SpringVP"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++onInterceptTouchEvent in, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsUseSpring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-boolean v1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-nez v1, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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
    const-string p1, "-QW-View-SpringVP"

    .line 50
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
    const-string v0, "-QW-View-SpringVP"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent, mIsUseSpring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setUseSpring(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 63
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    .line 64
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    const-string p1, "-QW-View-SpringVP"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseSpring mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/ViewPager;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
