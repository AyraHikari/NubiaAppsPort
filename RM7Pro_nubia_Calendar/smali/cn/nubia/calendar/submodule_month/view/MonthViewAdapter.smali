.class public Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "MonthViewAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTimePosition:I

.field private mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

.field private mMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

.field private mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field public showLayze:Z


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;
    .param p4, "parentLayout"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
    .param p5, "monthViewMgr"    # Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->showLayze:Z

    .line 46
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 48
    iput-object p4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 49
    iput-object p5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    .line 50
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->getCurTimePos()V

    .line 52
    return-void
.end method

.method private getCurTimePos()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 56
    .local v0, "curTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 58
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7b2

    mul-int/lit8 v1, v1, 0xc

    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mCurTimePosition:I

    .line 59
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->showLayze:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x330

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->getItem(I)Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->showLayze:Z

    if-eqz v1, :cond_1

    .line 66
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .end local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mCurTimePosition:I

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V

    .line 83
    .restart local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->put(ILcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    .line 87
    :cond_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->getMonthViewCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 70
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .end local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V

    .restart local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    goto :goto_0

    .line 73
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mCurTimePosition:I

    if-ne p1, v1, :cond_3

    .line 74
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .end local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V

    .restart local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .end local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V

    .restart local v0    # "monthFrag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    goto :goto_0
.end method

.method public getmListView()Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method public getmViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setShowLayze(Z)V
    .locals 0
    .param p1, "showLayze"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->showLayze:Z

    .line 104
    return-void
.end method

.method public setmListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V
    .locals 0
    .param p1, "mListView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 32
    return-void
.end method

.method public setmViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 40
    return-void
.end method
