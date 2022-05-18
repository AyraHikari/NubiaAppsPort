.class public Lcom/zte/mifavor/widget/ListView;
.super Landroid/widget/ListView;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/ListView$TouchGesture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "-QW-View-SpringLV"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const v0, 0x1010074

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/zte/mifavor/widget/ListView;->mTotalyDy:I

    const/4 p3, 0x1

    .line 25
    iput-boolean p3, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    .line 26
    iput-boolean p3, p0, Lcom/zte/mifavor/widget/ListView;->mIsDispalyMotion:Z

    const/4 p4, 0x0

    .line 28
    iput-object p4, p0, Lcom/zte/mifavor/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    const-string v0, "-QW-View-SpringLV"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListView in, context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-direct {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    .line 49
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    sget-object v1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->initSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 50
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getActivityByContext(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getDispalyMotionEffect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ListView;->mIsDispalyMotion:Z

    .line 53
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ListView;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    move p2, p3

    :cond_0
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    .line 55
    iget-object p1, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean p2, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    .line 56
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/zte/mifavor/widget/ListView$TouchGesture;

    invoke-direct {p3, p0, p4}, Lcom/zte/mifavor/widget/ListView$TouchGesture;-><init>(Lcom/zte/mifavor/widget/ListView;Lcom/zte/mifavor/widget/ListView$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    const-string p1, "-QW-View-SpringLV"

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ListView out. mIsDispalyMotion = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/zte/mifavor/widget/ListView;->mIsDispalyMotion:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mIsUseSpring = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ListView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    return p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ListView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/zte/mifavor/widget/ListView;->mTotalyDy:I

    return p0
.end method

.method static synthetic access$202(Lcom/zte/mifavor/widget/ListView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/zte/mifavor/widget/ListView;->mTotalyDy:I

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->dispatchTouchEvent()V

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/zte/mifavor/widget/ListView;->mTotalyDy:I

    .line 204
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 124
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    const-string v0, "-QW-View-SpringLV"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate in. mIsUseSpring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/zte/mifavor/widget/ListView$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ListView$1;-><init>(Lcom/zte/mifavor/widget/ListView;)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "-QW-View-SpringLV"

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++onInterceptTouchEvent in, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsUseSpring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-nez v1, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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
    const-string p1, "-QW-View-SpringLV"

    .line 70
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
    const-string v0, "-QW-View-SpringLV"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent, mIsUseSpring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, -0x1

    .line 78
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ListView;->canScrollVertically(I)Z

    move-result v2

    const/4 v3, 0x1

    .line 79
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ListView;->canScrollVertically(I)Z

    move-result v3

    const-string v4, "-QW-View-SpringLV"

    .line 80
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

    .line 81
    iget-object v4, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-ne v4, v0, :cond_2

    .line 83
    iget-object v4, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v4}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    .line 84
    invoke-virtual {v4}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v4}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {v2, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    const-string v2, "-QW-View-SpringLV"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, not call Spring Animation. mIsUseSpring = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_4

    .line 98
    iget-object p0, p0, Lcom/zte/mifavor/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    const-string p0, "-QW-View-SpringLV"

    .line 100
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
    const-string v0, "-QW-View-SpringLV"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDampingRatio dampingRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 211
    iget-object p0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setDampingRatio(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDragAmplitude(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringLV"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDragAmplitude dragAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 247
    iget-object p0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setDragAmplitude(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSlipAmplitude(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringLV"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlipAmplitude slipAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 231
    iget-object p0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setSlipAmplitude(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStiffness(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "-QW-View-SpringLV"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStiffness stiffness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 221
    iget-object p0, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setStiffness(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUseSpring(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 238
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ListView;->mIsDispalyMotion:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    .line 239
    iget-object p1, p0, Lcom/zte/mifavor/widget/ListView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setIsUseSpring(Z)V

    const-string p1, "-QW-View-SpringLV"

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseSpring mIsUseSpring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ListView;->mIsUseSpring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
