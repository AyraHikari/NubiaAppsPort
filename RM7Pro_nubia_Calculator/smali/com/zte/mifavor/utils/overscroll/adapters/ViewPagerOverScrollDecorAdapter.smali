.class public Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "ViewPagerOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field protected mLastPagerPosition:I

.field protected mLastPagerScrollOffset:F

.field protected final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerPosition:I

    .line 21
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 23
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 25
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerPosition:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerScrollOffset:F

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 3

    .line 42
    iget v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerPosition:I

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const v0, -0x472e48e9    # -1.0E-4f

    iget v1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerScrollOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerScrollOffset:F

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isInAbsoluteStart()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerPosition:I

    if-nez v0, :cond_0

    const v0, -0x472e48e9    # -1.0E-4f

    iget v1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerScrollOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerScrollOffset:F

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerPosition:I

    .line 49
    iput p2, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->mLastPagerScrollOffset:F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
