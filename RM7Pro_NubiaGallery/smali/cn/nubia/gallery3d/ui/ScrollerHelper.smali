.class public Lcn/nubia/gallery3d/ui/ScrollerHelper;
.super Ljava/lang/Object;
.source "ScrollerHelper.java"


# instance fields
.field private mOverflingDistance:I

.field private mOverflingEnabled:Z

.field private mScroller:Lcn/nubia/gallery3d/common/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcn/nubia/gallery3d/common/OverScroller;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mOverflingDistance:I

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 0

    .line 46
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/common/OverScroller;->computeScrollOffset()Z

    move-result p1

    return p1
.end method

.method public fling(III)V
    .locals 11

    .line 75
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v1

    .line 76
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mOverflingEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mOverflingDistance:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v10}, Lcn/nubia/gallery3d/common/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public forceFinished()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/common/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setOverfling(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mOverflingEnabled:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 6

    .line 66
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/common/OverScroller;->startScroll(IIIII)V

    .line 71
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/common/OverScroller;->abortAnimation()V

    return-void
.end method

.method public startScroll(III)I
    .locals 7

    .line 86
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller;->getCurrX()I

    move-result v2

    .line 87
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    .line 88
    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller;->getFinalX()I

    move-result v0

    :goto_0
    add-int/2addr v0, p1

    .line 89
    invoke-static {v0, p2, p3}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ScrollerHelper;->mScroller:Lcn/nubia/gallery3d/common/OverScroller;

    const/4 v3, 0x0

    sub-int v4, p1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/common/OverScroller;->startScroll(IIIII)V

    :cond_1
    sub-int/2addr v0, p1

    return v0
.end method
