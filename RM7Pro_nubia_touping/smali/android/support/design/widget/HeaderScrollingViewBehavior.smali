.class abstract Landroid/support/design/widget/HeaderScrollingViewBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field final mTempRect1:Landroid/graphics/Rect;

.field final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 49
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 151
    if-nez p0, :cond_0

    const p0, 0x800033

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 146
    iget v1, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 146
    invoke-static {v1, v0, v2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 12
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v6

    .line 104
    .local v6, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v7

    .line 106
    .local v7, "header":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 109
    .local v8, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v3, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 110
    .local v3, "available":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 111
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 112
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 113
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v5, v11

    .line 114
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v5, v11

    iget v11, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    .line 110
    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v10

    .line 117
    .local v10, "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    if-eqz v10, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 123
    iget v0, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 126
    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 127
    .local v4, "out":Landroid/graphics/Rect;
    iget v0, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p3

    .line 127
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 130
    invoke-virtual {p0, v7}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v9

    .line 132
    .local v9, "overlap":I
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v9

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v9

    invoke-virtual {p2, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 133
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 139
    .end local v3    # "available":Landroid/graphics/Rect;
    .end local v4    # "out":Landroid/graphics/Rect;
    .end local v8    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "overlap":I
    .end local v10    # "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    goto :goto_0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 11
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    .local v7, "childLpHeight":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    const/4 v0, -0x2

    if-ne v7, v0, :cond_4

    .line 61
    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    .line 62
    .local v8, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v8}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v9

    .line 63
    .local v9, "header":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 64
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 70
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 73
    const/4 v0, 0x1

    .line 97
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "header":Landroid/view/View;
    :goto_0
    return v0

    .line 77
    .restart local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v9    # "header":Landroid/view/View;
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 78
    .local v6, "availableHeight":I
    if-nez v6, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 83
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v6, v0

    .line 84
    invoke-virtual {p0, v9}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    .line 85
    .local v10, "height":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "heightMeasureSpec":I
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v5, p6

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "heightMeasureSpec":I
    :cond_3
    const/high16 v0, -0x80000000

    goto :goto_1

    .line 97
    .end local v6    # "availableHeight":I
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "header":Landroid/view/View;
    .end local v10    # "height":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "overlayTop"    # I

    .prologue
    .line 173
    iput p1, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 174
    return-void
.end method
