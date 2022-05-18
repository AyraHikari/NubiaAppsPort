.class Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "IcsLinearLayout.java"


# static fields
.field private static final LL:[I

.field private static final LL_DIVIDER:I = 0x0

.field private static final LL_DIVIDER_PADDING:I = 0x2

.field private static final LL_SHOW_DIVIDER:I = 0x1


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mShowDividers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->LL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v1, 0x0

    sget-object v2, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->LL:[I

    invoke-virtual {p1, v1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerPadding:I

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mShowDividers:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 131
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 132
    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 135
    invoke-direct {p0, v2}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->hasDividerBeforeChildAtIndex(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v3, v6, v7

    .line 138
    .local v3, "left":I
    invoke-direct {p0, p1, v3}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 131
    .end local v3    # "left":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->hasDividerBeforeChildAtIndex(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .restart local v0    # "child":Landroid/view/View;
    const/4 v5, 0x0

    .line 146
    .local v5, "right":I
    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .line 152
    :goto_1
    invoke-direct {p0, p1, v5}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 154
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "right":I
    :cond_2
    return-void

    .line 150
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_1
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 104
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 105
    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 108
    invoke-direct {p0, v3}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->hasDividerBeforeChildAtIndex(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v5, v6, v7

    .line 111
    .local v5, "top":I
    invoke-direct {p0, p1, v5}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 104
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->hasDividerBeforeChildAtIndex(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 119
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 120
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 125
    :goto_1
    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 127
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 123
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 164
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 163
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method private hasDividerBeforeChildAtIndex(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget v2, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 175
    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 176
    const/4 v0, 0x1

    .line 177
    goto :goto_0

    .line 174
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v5, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 64
    .local v1, "index":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 65
    .local v2, "orientation":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->hasDividerBeforeChildAtIndex(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    if-ne v2, v5, :cond_2

    .line 69
    iget v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 77
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    .line 78
    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->hasDividerBeforeChildAtIndex(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    if-ne v2, v5, :cond_3

    .line 80
    iget v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 86
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 88
    return-void

    .line 72
    .end local v0    # "count":I
    :cond_2
    iget v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 82
    .restart local v0    # "count":I
    :cond_3
    iget v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void

    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 49
    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerWidth:I

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerHeight:I

    .line 56
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->requestLayout()V

    goto :goto_0

    .line 53
    :cond_2
    iput v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerWidth:I

    .line 54
    iput v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->mDividerHeight:I

    goto :goto_1
.end method
