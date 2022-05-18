.class public Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;
.super Ljava/lang/Object;
.source "ScrollableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;
    }
.end annotation


# instance fields
.field private mCurrentScrollableContainer:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->mCurrentScrollableContainer:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->mCurrentScrollableContainer:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;

    invoke-interface {v0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;->getScrollableView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isTop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->getScrollableView()Landroid/view/View;

    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/widget/ScrollView;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 41
    :cond_2
    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scrollableView must be a instance of AdapterView|ScrollView|RecyclerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentScrollableContainer(Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->mCurrentScrollableContainer:Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;

    .line 23
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcn/nubia/music/ui/scrolllayout/ScrollableHelper;->getScrollableView()Landroid/view/View;

    move-result-object v0

    .line 48
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 49
    check-cast v0, Landroid/widget/AbsListView;

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->fling(I)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 55
    :cond_2
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_3

    .line 56
    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0

    .line 57
    :cond_3
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_4

    .line 58
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/RecyclerView;->b(II)Z

    goto :goto_0

    .line 59
    :cond_4
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v2, p1}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_0
.end method
