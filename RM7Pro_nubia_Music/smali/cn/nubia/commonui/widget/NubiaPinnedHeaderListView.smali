.class public Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;
.super Landroid/widget/ListView;
.source "NubiaPinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAdapter:Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 6

    .prologue
    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v1

    .line 104
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v1, v3, p1, v0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 115
    :cond_1
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 120
    :pswitch_2
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 122
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 126
    if-ge v1, v3, :cond_3

    .line 127
    sub-int/2addr v1, v3

    .line 128
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    .line 134
    :goto_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v3, v4, p1, v0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 139
    :cond_2
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 131
    goto :goto_1

    .line 104
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

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 150
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 153
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->configureHeaderView(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 75
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    .line 76
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    .line 78
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    check-cast p1, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    .line 94
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->setFadingEdgeLength(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaPinnedHeaderListView;->requestLayout()V

    .line 89
    return-void
.end method
