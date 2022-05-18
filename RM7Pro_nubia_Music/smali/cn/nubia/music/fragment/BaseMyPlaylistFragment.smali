.class public abstract Lcn/nubia/music/fragment/BaseMyPlaylistFragment;
.super Lcn/nubia/music/fragment/LazyLoadFragment;
.source "BaseMyPlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActionMenuView:Landroid/widget/LinearLayout;

.field protected mActionMode:Z

.field protected mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

.field protected mContext:Landroid/content/Context;

.field protected mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field protected mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mResetActionMenuFlag:Z

.field protected mSelectText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMode:Z

    .line 29
    iput-object v1, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 31
    iput-object v1, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mResetActionMenuFlag:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 52
    const v0, 0x7f100077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 53
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 58
    :cond_0
    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 62
    const v0, 0x7f100078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 63
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v4, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 66
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/c;

    invoke-direct {v3}, Landroid/support/v7/widget/c;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 67
    new-instance v2, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;

    iget-object v3, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f03002f

    invoke-direct {v2, p0, v3, v4}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;-><init>(Lcn/nubia/music/fragment/BaseMyPlaylistFragment;Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    .line 120
    const v2, 0x7f1000e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f1000e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f100055

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->addHeaderView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->addEmptyView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract actionModeItemClick(Landroid/view/View;I)V
.end method

.method public exitActionMode()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 144
    :cond_0
    return-void
.end method

.method protected abstract headItemClick(Landroid/view/View;)V
.end method

.method protected abstract itemClick(I)V
.end method

.method protected abstract itemLongClick(Landroid/view/View;I)V
.end method

.method protected loadData()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected loadDataVisibleFirst(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->initView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->loading()V

    .line 133
    return-void
.end method

.method protected loading()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->loadData()V

    .line 183
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/LazyLoadFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->headItemClick(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/LazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onPause()V

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onResume()V

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onStart()V

    .line 154
    return-void
.end method

.method protected setActionbarMenuLayout()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mResetActionMenuFlag:Z

    if-eqz v0, :cond_4

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 189
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 194
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v3

    .line 196
    :goto_0
    if-ge v5, v6, :cond_4

    .line 197
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.internal.widget.ActionBarContainer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 200
    check-cast v1, Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v3

    .line 202
    :goto_1
    if-ge v4, v7, :cond_3

    .line 203
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 205
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.widget.ActionMenuView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 206
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 207
    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    .line 208
    iput-boolean v3, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mResetActionMenuFlag:Z

    .line 210
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    move v2, v3

    .line 211
    :goto_2
    if-ge v2, v8, :cond_2

    .line 212
    iget-object v9, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 213
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 214
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.internal.view.menu.ActionMenuItemView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    .line 216
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 196
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 225
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 228
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :cond_5
    return-void
.end method

.method protected setupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContentView:Landroid/view/View;

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method
