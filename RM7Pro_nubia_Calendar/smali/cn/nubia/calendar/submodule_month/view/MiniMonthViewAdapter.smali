.class public Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "MiniMonthViewAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTimePos:I

.field private mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

.field private mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mv:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;
    .param p4, "miniMonthViewManager"    # Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    .line 51
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 53
    iput-object p4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    .line 54
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->getCurTimePos()V

    .line 55
    return-void
.end method

.method private getCurTimePos()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 86
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 87
    .local v1, "curTime":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 88
    invoke-virtual {v1, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 89
    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget-wide v10, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 90
    .local v0, "curDay":I
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 91
    .local v6, "startTime":Landroid/text/format/Time;
    const/4 v7, 0x0

    const/16 v8, 0x7b2

    invoke-virtual {v6, v12, v7, v8}, Landroid/text/format/Time;->set(III)V

    .line 92
    invoke-virtual {v6, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget-wide v10, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 94
    .local v5, "startDay":I
    new-instance v7, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v7}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    .line 95
    .local v3, "firstWeekDay":I
    const/4 v2, 0x3

    .line 96
    .local v2, "diff":I
    if-nez v3, :cond_2

    .line 97
    const/4 v2, 0x4

    .line 101
    :cond_0
    :goto_0
    sub-int v7, v0, v5

    add-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x7

    iput v7, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mCurTimePos:I

    .line 102
    sub-int v7, v0, v5

    rem-int/lit8 v4, v7, 0x7

    .line 103
    .local v4, "mod":I
    if-lez v4, :cond_1

    .line 104
    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mCurTimePos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mCurTimePos:I

    .line 106
    :cond_1
    return-void

    .line 98
    .end local v4    # "mod":I
    :cond_2
    const/4 v7, 0x6

    if-ne v3, v7, :cond_0

    .line 99
    const/4 v2, 0x5

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0xddd

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->getItem(I)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "mf":Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;->getMonthViewCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 61
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-static {p1, v5, v2, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->create(ILandroid/app/ActionBar;Landroid/support/v4/view/ViewPager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    move-result-object v1

    .line 79
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    invoke-virtual {v2, p1, v1}, Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;->put(ILcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    .line 82
    :cond_0
    return-object v1

    .line 68
    :cond_1
    :try_start_0
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mCurTimePos:I

    if-ne p1, v2, :cond_2

    .line 69
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-static {p1, v2, v3, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->create(ILandroid/app/ActionBar;Landroid/support/v4/view/ViewPager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->create(ILandroid/app/ActionBar;Landroid/support/v4/view/ViewPager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getmListView()Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method public getmViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public setmListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V
    .locals 0
    .param p1, "mListView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 38
    return-void
.end method

.method public setmViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 46
    return-void
.end method
