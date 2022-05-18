.class public Lcom/zte/mifavor/widget/NoScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private noScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NoScrollViewPager;->noScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NoScrollViewPager;->noScroll:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public scrollTo(II)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-super {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setNoScroll(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NoScrollViewPager;->noScroll:Z

    return-void
.end method
