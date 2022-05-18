.class public Lcn/nubia/calendar/submodule_month/view/MyListView;
.super Landroid/widget/ListView;
.source "MyListView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final HEIGHT:I = 0x99

.field private static final LOWER_LIMIT_MINI_HEIGHT:I = 0x96

.field private static final TAG:Ljava/lang/String; = "MyListView"

.field private static final THRESHOLD_CLICK_Y:I = 0x5

.field public static ViewPagerHEIGHT:I


# instance fields
.field i:I

.field private lastY:F

.field private mActDownPosition:I

.field private mChineseHoliday:Landroid/widget/TextView;

.field private mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

.field private mMiniMonthViewPager:Landroid/support/v4/view/ViewPager;

.field private mState:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

.field private otherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPagerHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x2fd

    sput v0, Lcn/nubia/calendar/submodule_month/view/MyListView;->ViewPagerHEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mState:I

    .line 59
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->i:I

    .line 61
    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->viewPagerHeight:I

    .line 95
    return-void
.end method


# virtual methods
.method public getWeatherViewContainer()Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    return-object v0
.end method

.method public getmChineseHoliday()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mChineseHoliday:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmMiniMonthViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mMiniMonthViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getmViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public setLayout(Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;)V
    .locals 0
    .param p1, "layout"    # Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .line 99
    return-void
.end method

.method public setWeatherView(Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    .locals 0
    .param p1, "mWeatherViewContainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .line 83
    return-void
.end method

.method public setmChineseHoliday(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mChineseHoliday"    # Landroid/widget/TextView;

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mChineseHoliday:Landroid/widget/TextView;

    .line 79
    return-void
.end method

.method public setmMiniMonthViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mMiniMonthViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mMiniMonthViewPager:Landroid/support/v4/view/ViewPager;

    .line 53
    return-void
.end method

.method public setmViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MyListView;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 91
    return-void
.end method
