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


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mPaddingStart:I

.field private mStartOffset:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1595
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1600
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1590
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    .line 1601
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1602
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    .line 1604
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1608
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_home_title_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    .line 1612
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1645
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1653
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1651
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
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
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1668
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1669
    const/4 v0, 0x1

    return v0
.end method

.method public getNubiaStartOffset()I
    .locals 1

    .prologue
    .line 1834
    const/4 v0, 0x0

    return v0
.end method

.method public getStartOffset()I
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpWidth()I
    .locals 1

    .prologue
    .line 1702
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1658
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1659
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    .line 1661
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

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

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1693
    sget v0, Lcn/nubia/commonui/R$id;->home:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1694
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1695
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1773
    sub-int v25, p5, p3

    div-int/lit8 v23, v25, 0x2

    .line 1774
    .local v23, "vCenter":I
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    .line 1775
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v24

    .line 1776
    .local v24, "width":I
    const/16 v19, 0x0

    .line 1777
    .local v19, "upOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 1779
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 1780
    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    .line 1781
    .local v16, "upHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v22

    .line 1782
    .local v22, "upWidth":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 1783
    div-int/lit8 v25, v16, 0x2

    sub-int v21, v23, v25

    .line 1784
    .local v21, "upTop":I
    add-int v15, v21, v16

    .line 1787
    .local v15, "upBottom":I
    if-eqz v13, :cond_1

    .line 1788
    move/from16 v20, v24

    .line 1789
    .local v20, "upRight":I
    sub-int v17, v20, v22

    .line 1790
    .local v17, "upLeft":I
    sub-int p4, p4, v19

    .line 1803
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutDirection()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    move/from16 v26, v0

    sub-int v26, v17, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    move/from16 v27, v0

    sub-int v27, v20, v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1810
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 1811
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1812
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 1813
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 1814
    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    div-int/lit8 v5, v25, 0x2

    .line 1815
    .local v5, "hCenter":I
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    div-int/lit8 v26, v7, 0x2

    sub-int v26, v23, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1817
    .local v11, "iconTop":I
    add-int v6, v11, v7

    .line 1820
    .local v6, "iconBottom":I
    invoke-virtual {v9}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v14

    .line 1821
    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    sub-int v25, v5, v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1822
    .local v4, "delta":I
    if-eqz v13, :cond_3

    .line 1823
    sub-int v25, v24, v19

    sub-int v10, v25, v4

    .line 1824
    .local v10, "iconRight":I
    sub-int v8, v10, v12

    .line 1829
    .local v8, "iconLeft":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1830
    return-void

    .line 1798
    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    move/from16 v25, v0

    add-int v20, v22, v25

    .line 1799
    .restart local v20    # "upRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    move/from16 v17, v0

    .line 1801
    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    goto/16 :goto_0

    .line 1806
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    .line 1826
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_3
    add-int v8, v19, v4

    .line 1827
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1707
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1709
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1710
    .local v10, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v11, v0, v1

    .line 1711
    .local v11, "upMargins":I
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1712
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v0, v11

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1718
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    .line 1721
    .local v3, "width":I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1724
    .local v6, "height":I
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 1725
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1727
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1728
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1729
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1731
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1732
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1731
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1740
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1741
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1742
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1743
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1745
    .local v8, "heightSize":I
    sparse-switch v12, :sswitch_data_0

    .line 1756
    :goto_2
    sparse-switch v7, :sswitch_data_1

    .line 1767
    :goto_3
    invoke-virtual {p0, v3, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1768
    return-void

    .line 1718
    .end local v3    # "width":I
    .end local v6    # "height":I
    .end local v7    # "heightMode":I
    .end local v8    # "heightSize":I
    .end local v12    # "widthMode":I
    .end local v13    # "widthSize":I
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mPaddingStart:I

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    add-int v3, v0, v1

    goto :goto_0

    .line 1734
    .restart local v3    # "width":I
    .restart local v6    # "height":I
    :cond_2
    if-gez v11, :cond_0

    .line 1737
    sub-int/2addr v3, v11

    goto :goto_1

    .line 1747
    .restart local v7    # "heightMode":I
    .restart local v8    # "heightSize":I
    .restart local v12    # "widthMode":I
    .restart local v13    # "widthSize":I
    :sswitch_0
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1748
    goto :goto_2

    .line 1750
    :sswitch_1
    move v3, v13

    .line 1751
    goto :goto_2

    .line 1758
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1759
    goto :goto_3

    .line 1761
    :sswitch_3
    move v6, v8

    .line 1762
    goto :goto_3

    .line 1745
    nop

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
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
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
    .local v0, "cdesc":Ljava/lang/CharSequence;
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

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1633
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1634
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1635
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1623
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1624
    return-void
.end method

.method public setNubiaShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    .line 1838
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1839
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    .line 1619
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

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

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    .line 1615
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

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

.method public setUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1639
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1640
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1641
    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1627
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1628
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1629
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1630
    return-void
.end method
