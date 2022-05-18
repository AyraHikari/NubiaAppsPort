.class public Lcn/nubia/weather/ui/view/DragSortItemView;
.super Landroid/view/ViewGroup;
.source "DragSortItemView.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0x30

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortItemView;->mGravity:I

    .line 34
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/view/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortItemView;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/view/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortItemView;->mGravity:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortItemView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortItemView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortItemView;->getMeasuredWidth()I

    move-result v2

    .line 60
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortItemView;->getMeasuredHeight()I

    move-result v3

    .line 59
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 71
    .local v1, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 73
    .local v4, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 75
    .local v2, "heightMode":I
    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0, v6, v4}, Lcn/nubia/weather/ui/view/DragSortItemView;->setMeasuredDimension(II)V

    .line 98
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 83
    invoke-virtual {p0, v0, p1, v5}, Lcn/nubia/weather/ui/view/DragSortItemView;->measureChild(Landroid/view/View;II)V

    .line 87
    :cond_1
    if-nez v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 90
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_3

    .line 91
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcn/nubia/weather/ui/view/DragSortItemView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 93
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 41
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortItemView;->mGravity:I

    .line 42
    return-void
.end method
