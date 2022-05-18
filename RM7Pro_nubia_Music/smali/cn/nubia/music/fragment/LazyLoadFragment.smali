.class public abstract Lcn/nubia/music/fragment/LazyLoadFragment;
.super Landroid/support/v4/app/Fragment;
.source "LazyLoadFragment.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHasLoadedData:Z

.field protected mIsDestroy:Z

.field protected mIsDetach:Z

.field protected mIsViewInflated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mHasLoadedData:Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected isActive()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsDestroy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsDetach:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDataVisibleFirst(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected loadDataVisibleResume()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mActivity:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/fragment/LazyLoadFragment;->setupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsViewInflated:Z

    .line 95
    invoke-virtual {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/LazyLoadFragment;->setUserVisibleHint(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsDestroy:Z

    .line 45
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 106
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsViewInflated:Z

    .line 111
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsDetach:Z

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 85
    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsDestroy:Z

    .line 86
    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mIsDetach:Z

    .line 87
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 62
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mHasLoadedData:Z

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/LazyLoadFragment;->loadDataVisibleFirst(Landroid/view/View;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mHasLoadedData:Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/LazyLoadFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->loadDataVisibleResume()V

    goto :goto_0
.end method

.method protected abstract setupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected updateFragmentTheme()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
