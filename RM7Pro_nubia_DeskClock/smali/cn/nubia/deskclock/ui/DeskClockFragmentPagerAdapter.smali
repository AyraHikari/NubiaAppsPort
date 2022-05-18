.class public abstract Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;
.super Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;
.source "DeskClockFragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DeskClockFragmentPagerAdapter"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurTransaction:Landroid/app/FragmentTransaction;

.field protected mCurrentPrimaryItem:Landroid/app/Fragment;

.field protected final mFragmentManager:Landroid/app/FragmentManager;

.field private mTabImages:[Landroid/graphics/drawable/Drawable;

.field private mTabTitles:[Ljava/lang/String;

.field protected mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 52
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabTitles:[Ljava/lang/String;

    .line 53
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabImages:[Landroid/graphics/drawable/Drawable;

    .line 54
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    .line 55
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 56
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabTitles:[Ljava/lang/String;

    const v2, 0x7f0d0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 58
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabTitles:[Ljava/lang/String;

    const v2, 0x7f0d0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 59
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabTitles:[Ljava/lang/String;

    const v2, 0x7f0d0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 60
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabTitles:[Ljava/lang/String;

    const v2, 0x7f0d0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 61
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabImages:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 62
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabImages:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0201b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 63
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabImages:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0201b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 64
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabImages:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0201b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 65
    return-void
.end method

.method protected static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 182
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
.method public destory()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 171
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 118
    :cond_0
    const-string v1, "DeskClockFragmentPagerAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching item #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->getFragmentItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": f="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " v="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 119
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 121
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 151
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public getCurrentFragemt()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    return-object v0
.end method

.method public getFragmentItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 195
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPageImage(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabImages:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mTabTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 82
    iget-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 83
    iget-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 85
    :cond_0
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p0, p2}, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->getFragmentItemId(I)J

    move-result-wide v2

    .line 89
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4, v2, v3}, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 91
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 93
    const-string v4, "DeskClockFragmentPagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attaching item #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 102
    :goto_0
    iget-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_1

    .line 103
    invoke-static {v0, v7}, Lcn/nubia/deskclock/ui/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 104
    invoke-static {v0, v7}, Lcn/nubia/deskclock/ui/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 105
    instance-of v4, v0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 109
    :cond_1
    return-object v0

    .line 96
    :cond_2
    invoke-virtual {p0, p2}, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 98
    const-string v4, "DeskClockFragmentPagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding item #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

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
    .line 175
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 166
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

    .line 125
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 126
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Lcn/nubia/deskclock/ui/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 129
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Lcn/nubia/deskclock/ui/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 130
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    instance-of v1, v1, Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    .line 135
    invoke-static {v0, v3}, Lcn/nubia/deskclock/ui/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 136
    invoke-static {v0, v3}, Lcn/nubia/deskclock/ui/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 137
    instance-of v1, v0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 141
    :cond_1
    iput-object v0, p0, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 143
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    return-void
.end method
