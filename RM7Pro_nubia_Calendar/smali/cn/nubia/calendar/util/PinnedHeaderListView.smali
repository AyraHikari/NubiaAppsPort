.class public Lcn/nubia/calendar/util/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mDrawFlag:Z

.field private mHeaderView:Landroid/view/View;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mPinnedHeaderAdapter:Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mSearchStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 48
    return-void
.end method


# virtual methods
.method public controlPinnedHeader(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 137
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 142
    invoke-interface {v5, p1}, Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v2

    .line 143
    .local v2, "pinnedHeaderState":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iput-boolean v8, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v6, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    .line 150
    invoke-interface {v5, v6, p1, v8}, Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 151
    iput-boolean v7, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 152
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v6, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredWidth:I

    iget v7, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredHeight:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v6, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    .line 157
    invoke-interface {v5, v6, p1, v8}, Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 158
    iput-boolean v7, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 160
    invoke-virtual {p0, v8}, Lcn/nubia/calendar/util/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, "topItem":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 164
    .local v0, "bottom":I
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 167
    .local v1, "height":I
    if-ge v0, v1, :cond_2

    .line 168
    sub-int v5, v0, v1

    add-int/lit8 v4, v5, 0x1

    .line 173
    .local v4, "y":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 174
    iget-object v5, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v6, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredWidth:I

    iget v7, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v8, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 170
    .end local v4    # "y":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "y":I
    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mDrawFlag:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcn/nubia/calendar/util/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 125
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredWidth:I

    iget v2, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 114
    invoke-virtual {p0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->controlPinnedHeader(I)V

    .line 116
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 117
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 104
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredWidth:I

    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mMeasuredHeight:I

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    check-cast p1, Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 70
    return-void
.end method

.method public setPinnedHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "pHeader"    # Landroid/view/View;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->requestLayout()V

    .line 63
    return-void
.end method

.method public setSearchStatus(Z)V
    .locals 0
    .param p1, "isSearch"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcn/nubia/calendar/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 203
    return-void
.end method
