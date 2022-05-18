.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1595
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1600
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1590
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    .line 1601
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1602
    if-eqz v0, :cond_0

    .line 1604
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1608
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_home_title_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    .line 1612
    return-void
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1645
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1653
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->e:I

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->e:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1651
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1638
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->e:I

    .line 1639
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->g:Landroid/graphics/drawable/Drawable;

    .line 1640
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c()V

    .line 1641
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1624
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1615
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1616
    return-void

    .line 1615
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1702
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c:I

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1627
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->g:Landroid/graphics/drawable/Drawable;

    .line 1628
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->e:I

    .line 1629
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c()V

    .line 1630
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 1619
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1620
    return-void

    .line 1619
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->f:Landroid/graphics/drawable/Drawable;

    .line 1634
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c()V

    .line 1635
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1687
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1668
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1669
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1658
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1659
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->e:I

    if-eqz v0, :cond_0

    .line 1661
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c()V

    .line 1663
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1692
    sget v0, Lcn/nubia/commonui/R$id;->up:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    .line 1693
    sget v0, Lcn/nubia/commonui/R$id;->home:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    .line 1694
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->f:Landroid/graphics/drawable/Drawable;

    .line 1695
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1773
    sub-int v0, p5, p3

    div-int/lit8 v4, v0, 0x2

    .line 1774
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 1775
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v2

    .line 1776
    const/4 v0, 0x0

    .line 1777
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    .line 1778
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    .line 1779
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1780
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 1781
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 1782
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v0

    .line 1783
    div-int/lit8 v0, v1, 0x2

    sub-int v7, v4, v0

    .line 1784
    add-int v8, v7, v1

    .line 1787
    if-eqz v5, :cond_0

    .line 1789
    sub-int v0, v2, v6

    .line 1790
    sub-int/2addr p4, v3

    move v1, v2

    .line 1803
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutDirection()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 1804
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    sub-int/2addr v0, v9

    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    sub-int/2addr v1, v9

    invoke-virtual {v6, v0, v7, v1, v8}, Landroid/widget/ImageView;->layout(IIII)V

    move v1, v3

    .line 1810
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    .line 1811
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1812
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 1813
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 1814
    sub-int v7, p4, p2

    div-int/lit8 v7, v7, 0x2

    .line 1815
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v4, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1817
    add-int/2addr v3, v4

    .line 1820
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    .line 1821
    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1822
    if-eqz v5, :cond_2

    .line 1823
    sub-int v1, v2, v1

    sub-int v0, v1, v0

    .line 1824
    sub-int v1, v0, v6

    .line 1829
    :goto_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1830
    return-void

    .line 1798
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    add-int v1, v6, v0

    .line 1799
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    .line 1801
    add-int/2addr p2, v3

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v7, v1, v8}, Landroid/widget/ImageView;->layout(IIII)V

    move v1, v3

    goto :goto_1

    .line 1826
    :cond_2
    add-int/2addr v1, v0

    .line 1827
    add-int v0, v1, v6

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 1707
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1709
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1710
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    .line 1711
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c:I

    .line 1712
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->d:I

    .line 1718
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_0

    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    .line 1721
    :goto_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    .line 1724
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 1725
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1727
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    .line 1728
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1729
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v7, v2

    .line 1731
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    .line 1732
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1731
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1740
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1741
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1742
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1743
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1745
    sparse-switch v3, :sswitch_data_0

    .line 1756
    :goto_2
    sparse-switch v4, :sswitch_data_1

    .line 1767
    :goto_3
    invoke-virtual {p0, v7, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1768
    return-void

    .line 1718
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->h:I

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->d:I

    add-int v7, v1, v4

    goto :goto_0

    .line 1734
    :cond_1
    if-gez v2, :cond_2

    .line 1737
    sub-int/2addr v7, v2

    move v0, v1

    goto :goto_1

    .line 1747
    :sswitch_0
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2

    :sswitch_1
    move v7, v2

    .line 1751
    goto :goto_2

    .line 1758
    :sswitch_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :sswitch_3
    move v0, v1

    .line 1762
    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1745
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1756
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1675
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1676
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1677
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    :cond_0
    return-void
.end method
