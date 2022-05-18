.class public Lcn/nubia/calendar/submodule_year/view/YearFragment;
.super Landroid/app/Fragment;
.source "YearFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;
    }
.end annotation


# static fields
.field private static final YEAR_COUNT:I = 0x44

.field private static myCalenar:Ljava/util/Calendar;


# instance fields
.field private initmYear:I

.field private mCalendarMonthFragments:[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

.field private mOutterHandler:Landroid/os/Handler;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mYear:I

.field private mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

.field private screenSlidePagerAdapter:Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 22
    const/16 v0, 0x44

    new-array v0, v0, [Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mCalendarMonthFragments:[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .line 123
    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mOutterHandler:Landroid/os/Handler;

    .line 124
    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 22
    const/16 v0, 0x44

    new-array v0, v0, [Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mCalendarMonthFragments:[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .line 123
    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mOutterHandler:Landroid/os/Handler;

    .line 124
    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 34
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mOutterHandler:Landroid/os/Handler;

    .line 35
    iput-object p2, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_year/view/YearFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 20
    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/submodule_year/view/YearFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_year/view/YearFragment;)[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mCalendarMonthFragments:[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    return-object v0
.end method

.method private getItemNum(I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 85
    const/4 v0, -0x1

    .line 86
    .local v0, "item":I
    add-int/lit16 v0, p1, -0x7b2

    .line 87
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const v3, 0x7f0300c4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "v":Landroid/view/View;
    new-instance v3, Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;

    .line 49
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;-><init>(Lcn/nubia/calendar/submodule_year/view/YearFragment;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->screenSlidePagerAdapter:Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    .local v0, "calenar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    .line 52
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 53
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 54
    .local v1, "t":Landroid/text/format/Time;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 55
    iget v3, v1, Landroid/text/format/Time;->year:I

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    .line 57
    .end local v1    # "t":Landroid/text/format/Time;
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->initmYear:I

    .line 58
    const v3, 0x7f11027a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->screenSlidePagerAdapter:Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->getItemNum(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;-><init>(Lcn/nubia/calendar/submodule_year/view/YearFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 130
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public updateGoToTime()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    .line 92
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->getItemNum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mCalendarMonthFragments:[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->getItemNum(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mCalendarMonthFragments:[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment;->mYear:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->getItemNum(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->updateYearView()V

    .line 98
    :cond_1
    return-void
.end method
