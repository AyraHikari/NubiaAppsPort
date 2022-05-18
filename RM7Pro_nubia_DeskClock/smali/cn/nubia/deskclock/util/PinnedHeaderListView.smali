.class public Lcn/nubia/deskclock/util/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PinnedHeaderListView"


# instance fields
.field private mDrawFlag:Z

.field private mHeadViewDividerDown:Landroid/view/View;

.field private mHeadViewDividerUp:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mPinnedHeaderAdapter:Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mSearchStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 40
    return-void
.end method

.method private pinnedHeaderInBottom(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 164
    iget-object v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    .line 168
    .local v0, "bottomItem":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 178
    .local v1, "y":I
    iget-object v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 179
    iget-object v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    .line 180
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    .line 179
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private pinnedHeaderInTop(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 141
    iget-object v4, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v2, 0x0

    .line 145
    .local v2, "topItem":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 148
    .local v0, "bottom":I
    iget-object v4, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 150
    .local v1, "height":I
    if-ge v0, v1, :cond_2

    .line 151
    sub-int v4, v0, v1

    add-int/lit8 v3, v4, 0x1

    .line 156
    .local v3, "y":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 157
    iget-object v4, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v5, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    iget v6, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v7, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 153
    .end local v3    # "y":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "y":I
    goto :goto_1
.end method


# virtual methods
.method public controlPinnedHeader(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    iget-object v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v0

    .line 109
    .local v0, "pinnedHeaderState":I
    const-string v1, "PinnedHeaderListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlPinnedHeader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iput-boolean v5, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v1, v2, p1, v5}, Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 117
    iput-boolean v4, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 118
    iget-boolean v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getHeight()I

    move-result v2

    iget v3, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    .line 120
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getHeight()I

    move-result v4

    .line 119
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    iget v3, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v1, v2, p1, v5}, Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 129
    iput-boolean v4, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    .line 130
    iget-boolean v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v1, :cond_2

    .line 131
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->pinnedHeaderInBottom(I)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->pinnedHeaderInTop(I)V

    goto :goto_0

    .line 110
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
    .line 96
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    const-string v0, "PinnedHeaderListView"

    const-string v1, "dispatchDraw"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mDrawFlag:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 101
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v0, :cond_0

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 81
    const-string v0, "PinnedHeaderListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    iget-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    .line 85
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getHeight()I

    move-result v3

    .line 84
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->controlPinnedHeader(I)V

    .line 91
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 92
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    iget v2, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 74
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredWidth:I

    .line 75
    iget-object v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mMeasuredHeight:I

    .line 77
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    if-eqz v0, :cond_0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    check-cast p1, Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mPinnedHeaderAdapter:Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 51
    return-void
.end method

.method public setPinnedHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "pHeader"    # Landroid/view/View;

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->requestLayout()V

    .line 45
    return-void
.end method

.method public setSearchStatus(Z)V
    .locals 0
    .param p1, "isSearch"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcn/nubia/deskclock/util/PinnedHeaderListView;->mSearchStatus:Z

    .line 215
    return-void
.end method
