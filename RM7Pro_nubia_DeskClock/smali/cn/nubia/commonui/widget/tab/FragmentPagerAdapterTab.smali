.class public abstract Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;
.super Lcn/nubia/commonui/widget/tab/PagerAdapterTab;
.source "FragmentPagerAdapterTab.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapterTab"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/PagerAdapterTab;-><init>()V

    .line 69
    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 70
    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 73
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 74
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 149
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 91
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 92
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->getItemId(I)J

    move-result-wide v2

    .line 98
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4, v2, v3}, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 100
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 102
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 109
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v4, :cond_1

    .line 110
    invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 111
    invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 114
    :cond_1
    return-object v0

    .line 104
    :cond_2
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 106
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {v4, v5, v0, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 163
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 130
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 131
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 133
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 135
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 139
    :cond_1
    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 141
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    return-void
.end method
