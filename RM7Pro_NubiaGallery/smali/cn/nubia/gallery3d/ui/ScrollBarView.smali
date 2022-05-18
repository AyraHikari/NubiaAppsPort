.class public Lcn/nubia/gallery3d/ui/ScrollBarView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "ScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollBarView"


# instance fields
.field private final INDICATORLENGTH:I

.field public final SCROLLBARWIDTH:I

.field private mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

.field private mBarHeight:I

.field private mBarWidth:I

.field private mCurrPosY:I

.field private mDelta:I

.field private mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

.field private mScrollBarListener:Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;

.field private mScrollRate:F

.field private mScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 45
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    .line 46
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrolling:Z

    .line 47
    iput v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mDelta:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollRate:F

    .line 51
    new-instance v0, Lcn/nubia/improve/layout/ScrollBarIndicator;

    invoke-direct {v0, p1}, Lcn/nubia/improve/layout/ScrollBarIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07020e

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->INDICATORLENGTH:I

    const v0, 0x7f070211

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->SCROLLBARWIDTH:I

    return-void
.end method


# virtual methods
.method public calculateScrollRate(I)F
    .locals 2

    if-lez p1, :cond_0

    .line 63
    iget v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mBarHeight:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->INDICATORLENGTH:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollRate:F

    .line 65
    :cond_0
    iget p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollRate:F

    return p1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/ScrollBarView;->onHide(Z)V

    .line 122
    iput-boolean v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrolling:Z

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mDelta:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 125
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarListener:Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;

    if-eqz v0, :cond_5

    if-gez p1, :cond_2

    .line 127
    iput v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 129
    :cond_2
    iget p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mBarHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->INDICATORLENGTH:I

    sub-int v3, v1, v2

    if-lt p1, v3, :cond_3

    sub-int/2addr v1, v2

    .line 130
    iput v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 132
    :cond_3
    iget p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollRate:F

    invoke-interface {v0, p1, v1}, Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;->onScrollBarPositionChanged(IF)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 112
    iget v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    sub-int v3, v2, v0

    iput v3, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mDelta:I

    if-le v0, v2, :cond_5

    .line 113
    iget v3, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->INDICATORLENGTH:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    int-to-float p1, p1

    iget v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mBarWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    .line 114
    invoke-virtual {v3}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->getRate()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    .line 115
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/ScrollBarView;->onShow(Z)V

    .line 117
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrolling:Z

    .line 136
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->invalidate()V

    .line 137
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrolling:Z

    return p1
.end method

.method public onHide(Z)V
    .locals 4

    .line 158
    new-instance v0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;-><init>(Lcn/nubia/improve/layout/ScrollBarIndicator;ZJ)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    .line 159
    new-instance p1, Lcn/nubia/gallery3d/ui/ScrollBarView$2;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/ui/ScrollBarView$2;-><init>(Lcn/nubia/gallery3d/ui/ScrollBarView;)V

    invoke-virtual {v0, p1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->setListener(Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;)V

    .line 171
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    invoke-virtual {p1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->start()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p5, p3

    .line 79
    iput p5, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mBarHeight:I

    sub-int/2addr p4, p2

    .line 80
    iput p4, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mBarWidth:I

    .line 81
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1, p4}, Lcn/nubia/improve/layout/ScrollBarIndicator;->setWidth(I)V

    .line 83
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    iget p2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->INDICATORLENGTH:I

    invoke-virtual {p1, p2}, Lcn/nubia/improve/layout/ScrollBarIndicator;->setHeight(I)V

    :cond_1
    return-void
.end method

.method public onScrollPositionChanged(ILjava/lang/String;)V
    .locals 1

    .line 68
    iget v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollRate:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 69
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1, p2}, Lcn/nubia/improve/layout/ScrollBarIndicator;->setCurrName(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->invalidate()V

    return-void
.end method

.method public onShow(Z)V
    .locals 2

    .line 142
    new-instance v0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    invoke-direct {v0, v1, p1}, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;-><init>(Lcn/nubia/improve/layout/ScrollBarIndicator;Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    .line 143
    new-instance p1, Lcn/nubia/gallery3d/ui/ScrollBarView$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/ui/ScrollBarView$1;-><init>(Lcn/nubia/gallery3d/ui/ScrollBarView;)V

    invoke-virtual {v0, p1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->setListener(Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;)V

    .line 153
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    invoke-virtual {p1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->start()V

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x3

    .line 90
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->bounds()Landroid/graphics/Rect;

    .line 92
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 93
    iget v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 94
    iput v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 96
    :cond_0
    iget v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->INDICATORLENGTH:I

    add-int/2addr v2, v3

    iget v4, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mBarHeight:I

    if-lt v2, v4, :cond_1

    sub-int/2addr v4, v3

    .line 97
    iput v4, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    .line 99
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->calculate(J)Z

    .line 100
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mAnimation:Lcn/nubia/improve/layout/ScrollBarFadeAnimation;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarIndicator:Lcn/nubia/improve/layout/ScrollBarIndicator;

    iget v2, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mCurrPosY:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/improve/layout/ScrollBarIndicator;I)V

    .line 101
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView;->mScrollBarListener:Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;

    return-void
.end method
