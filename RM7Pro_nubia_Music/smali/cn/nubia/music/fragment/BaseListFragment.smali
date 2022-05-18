.class public abstract Lcn/nubia/music/fragment/BaseListFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/BaseListFragment$State;
    }
.end annotation


# static fields
.field protected static final mNumberPerPage:I = 0x14

.field protected static mPageNumber:I


# instance fields
.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mCurrCount:I

.field protected mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

.field protected mListAdapter:Landroid/widget/BaseAdapter;

.field protected mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

.field protected mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcn/nubia/music/fragment/BaseListFragment;->mPageNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 99
    new-instance v0, Lcn/nubia/music/fragment/BaseListFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/BaseListFragment$2;-><init>(Lcn/nubia/music/fragment/BaseListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    return-void
.end method

.method private showLoadingData()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "showLoadingData "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/EmptyViewLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->showLoading()V

    .line 122
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract itemClick(I)V
.end method

.method protected loadData()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected loading()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseListFragment;->showLoadingData()V

    .line 114
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseListFragment;->loadData()V

    .line 115
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    new-instance v1, Lcn/nubia/music/fragment/BaseListFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/BaseListFragment$1;-><init>(Lcn/nubia/music/fragment/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/EmptyViewLayout;->setRefreshListener(Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;)V

    .line 67
    return-void
.end method

.method protected onComplete()V
    .locals 1

    .prologue
    .line 134
    sget v0, Lcn/nubia/music/fragment/BaseListFragment;->mPageNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/music/fragment/BaseListFragment;->mPageNumber:I

    .line 135
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->onRefreshComplete()V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    sput v0, Lcn/nubia/music/fragment/BaseListFragment;->mPageNumber:I

    .line 39
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 49
    const v0, 0x7f030086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    const v0, 0x7f10016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollRefreshListView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    .line 51
    const v0, 0x7f100076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/EmptyViewLayout;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    .line 52
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->setNetView()V

    .line 53
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseListFragment;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 83
    const-string v0, "onResume "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 91
    return-void
.end method

.method protected showNoData()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->showEmpty()V

    .line 129
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 131
    :cond_0
    return-void
.end method
