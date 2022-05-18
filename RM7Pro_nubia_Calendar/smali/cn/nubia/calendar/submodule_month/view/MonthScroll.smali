.class public Lcn/nubia/calendar/submodule_month/view/MonthScroll;
.super Landroid/app/Fragment;
.source "MonthScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;,
        Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_EVENTS_RELOAD:Ljava/lang/String; = "ACTION_EVENTS_RELOAD"

.field private static final AGENDA_SORT_ORDER:Ljava/lang/String; = "dtstart ASC, dtend ASC, title ASC"

.field public static final COUNTRY_NAME_ZH:Ljava/lang/String; = "zh"

.field protected static DEFAULT_DAYS_PER_WEEK:I = 0x0

.field protected static DEFAULT_MONTH_FOCUS:I = 0x0

.field public static final INDEX_ALL_DAY:I = 0x7

.field public static final INDEX_BEGIN:I = 0x5

.field public static final INDEX_CALENDAR_ID:I = 0x8

.field public static final INDEX_CALENDAR_NAME:I = 0x9

.field public static final INDEX_CALENDAR_TYPE:I = 0xa

.field public static final INDEX_COLOR:I = 0x4

.field public static final INDEX_DESCRIPTION:I = 0x3

.field public static final INDEX_END:I = 0x6

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_EVENT_RDATE:I = 0xb

.field public static final INDEX_INSTANCE_ROW_ID:I = 0x0

.field public static final INDEX_ROW_ID:I = 0x0

.field public static final INDEX_TINSTANCE_BEGIN:I = 0x2

.field public static final INDEX_TINSTANCE_END:I = 0x3

.field public static final INDEX_TINSTANCE_EVENT_ID:I = 0x1

.field public static final INDEX_TITLE:I = 0x1

.field private static final INSTANCE_SORT_ORDER:Ljava/lang/String; = "begin ASC, end ASC"

.field private static final MIN_YEAR:I = 0x7b2

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_INSTANCE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MonthScroll"

.field private static final TIMEDURATION:J = 0x2710L

.field public static mIsMiniView:Z = false

.field public static mNumWeeks:I = 0x0

.field public static final marginBottom:I = 0x25

.field private static num:I


# instance fields
.field private countDown:Landroid/widget/ImageView;

.field private footerListView:Landroid/widget/ListView;

.field private lastGetDataTime:J

.field private lastRequestData:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mBottomPanel:Landroid/widget/RelativeLayout;

.field private mBottomPanelSon:Landroid/widget/RelativeLayout;

.field private mChineseHoliday:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurUserActionListAdapter:Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

.field private mCurrentMonthPageNum:I

.field private mCursor:Landroid/database/Cursor;

.field private mDateInterval:Landroid/widget/TextView;

.field protected mDayLabels:[Ljava/lang/String;

.field protected mDayNameColor:I

.field private mDayNamesHeader:Landroid/widget/RelativeLayout;

.field protected mDaysPerWeek:I

.field private mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

.field protected mFirstDayOfWeek:I

.field protected mFirstJulianDay:I

.field protected mFocusMonth:I

.field protected mHomeTimeZone:Ljava/lang/String;

.field private mIsGoTo:Z

.field private mLanguage:Ljava/lang/String;

.field private mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

.field private mLunarText:Landroid/widget/TextView;

.field private mLunarView:Landroid/view/View;

.field private mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

.field private mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field private mMonthViewCurrentMonth:I

.field private mMonthViewMgr:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

.field private mNoDate:Landroid/widget/TextView;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOfficialHolidayColor:I

.field private mOfficialWorkdayColor:I

.field protected mOrientation:I

.field private mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

.field private mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

.field private mOutterHandler:Landroid/os/Handler;

.field private mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

.field private mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

.field protected mSaturdayColor:I

.field protected mSelectedWeek:I

.field protected mShowWeekNumber:Z

.field private mSplitline:Landroid/widget/ImageView;

.field private mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

.field protected mSundayColor:I

.field private final mTZUpdater:Ljava/lang/Runnable;

.field protected mTempTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private final mTimezoneUpdater:Ljava/lang/Runnable;

.field protected mToday:Landroid/text/format/Time;

.field private final mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mWeatherCityName:Landroid/widget/TextView;

.field private mWeatherTmp:Landroid/widget/TextView;

.field private mWeatherType:Landroid/widget/TextView;

.field private mWeatherTypeIcon:Landroid/widget/ImageView;

.field private final mWeatherUpdater:Ljava/lang/Runnable;

.field private mWeatherView:Landroid/view/View;

.field private mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

.field private mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    sput v2, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->DEFAULT_MONTH_FOCUS:I

    .line 101
    sput-boolean v2, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    .line 102
    const/4 v0, 0x7

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->DEFAULT_DAYS_PER_WEEK:I

    .line 105
    const/4 v0, 0x5

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mNumWeeks:I

    .line 136
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "begin"

    aput-object v1, v0, v4

    const-string v1, "end"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->PROJECTION_INSTANCE:[Ljava/lang/String;

    .line 147
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "eventLocation"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rdate"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->PROJECTION:[Ljava/lang/String;

    .line 782
    sput v3, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->num:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .param p3, "outterHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 197
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 95
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mShowWeekNumber:Z

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOrientation:I

    .line 100
    sget v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->DEFAULT_MONTH_FOCUS:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFocusMonth:I

    .line 103
    sget v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->DEFAULT_DAYS_PER_WEEK:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDaysPerWeek:I

    .line 115
    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewCurrentMonth:I

    .line 119
    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSaturdayColor:I

    .line 120
    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSundayColor:I

    .line 121
    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayNameColor:I

    .line 122
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsGoTo:Z

    .line 123
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 124
    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCurrentMonthPageNum:I

    .line 179
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$2;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherUpdater:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTZUpdater:Ljava/lang/Runnable;

    .line 610
    iput-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mObserver:Landroid/database/ContentObserver;

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastRequestData:Ljava/lang/String;

    .line 778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastGetDataTime:J

    .line 1215
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$10;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$10;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1265
    iput-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 1266
    iput-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewMgr:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    .line 1267
    iput-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    .line 1268
    iput-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOutterHandler:Landroid/os/Handler;

    .line 1269
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .line 198
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    .line 199
    iput-object p3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOutterHandler:Landroid/os/Handler;

    .line 200
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 201
    new-instance v0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;-><init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewMgr:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    .line 202
    new-instance v0, Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;-><init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    .line 203
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimezoneUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTempTime:Landroid/text/format/Time;

    .line 205
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mHomeTimeZone:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFirstDayOfWeek:I

    .line 208
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mShowWeekNumber:Z

    .line 209
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOrientation:I

    .line 211
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mToday:Landroid/text/format/Time;

    .line 212
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 213
    sput-boolean v4, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsGoTo:Z

    .line 216
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewCurrentMonth:I

    invoke-static {p1, v0}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOfficialHolidayColor:I

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOfficialWorkdayColor:I

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimezoneUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doMiniViewPagerChange(I)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->updateTopBar()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCurrentMonthPageNum:I

    return v0
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewMgr:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$2102(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCurUserActionListAdapter:Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

    return-object v0
.end method

.method static synthetic access$2300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherCityName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherTmp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherTypeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDateInterval:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLunarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLunarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mNoDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/text/format/Time;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # Landroid/text/format/Time;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->showOrHideMiniView(Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/text/format/Time;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # Landroid/text/format/Time;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->calcMonthPageNum(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_month/view/MonthScroll;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doMonthViewPagerChange(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_month/view/MonthScroll;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doPageSelected(II)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 68
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->showInfoAndRequestData()V

    return-void
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 686
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 687
    .local v1, "rootUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 688
    .local v0, "builder":Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 689
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 691
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private calcMiniMonthPageNum(Landroid/text/format/Time;)I
    .locals 14
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1032
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1033
    .local v3, "destTime":Landroid/text/format/Time;
    invoke-virtual {v3, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 1034
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFirstDayOfWeek:I

    invoke-virtual {v7, v3, v8}, Lcn/nubia/calendar/util/MonthUtil;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 1036
    new-instance v1, Landroid/text/format/Time;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v1, "curTime":Landroid/text/format/Time;
    const/16 v7, 0x7b2

    invoke-virtual {v1, v12, v13, v7}, Landroid/text/format/Time;->set(III)V

    .line 1038
    invoke-virtual {v1, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 1039
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFirstDayOfWeek:I

    invoke-virtual {v7, v1, v8}, Lcn/nubia/calendar/util/MonthUtil;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 1040
    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget-wide v10, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1042
    .local v0, "curJulianDay":I
    invoke-virtual {v3, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget-wide v10, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1045
    .local v2, "destJulianDay":I
    sub-int v7, v2, v0

    rem-int/lit8 v6, v7, 0x7

    .line 1046
    .local v6, "mod":I
    sub-int v7, v2, v0

    div-int/lit8 v4, v7, 0x7

    .line 1047
    .local v4, "diff":I
    if-ltz v4, :cond_2

    .line 1048
    if-eqz v6, :cond_0

    .line 1049
    add-int/lit8 v4, v4, 0x1

    .line 1057
    :cond_0
    :goto_0
    move v5, v4

    .line 1058
    .local v5, "miniNum":I
    if-eqz p1, :cond_1

    .line 1059
    const-string v7, "%d-%d-%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Landroid/text/format/Time;->year:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    iget v9, p1, Landroid/text/format/Time;->month:I

    .line 1060
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x2

    iget v10, p1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1059
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1062
    :cond_1
    return v5

    .line 1052
    .end local v5    # "miniNum":I
    :cond_2
    if-eqz v6, :cond_0

    .line 1053
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private calcMonthPageNum(Landroid/text/format/Time;)I
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v5, 0x1

    .line 990
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 991
    .local v1, "destTime":Landroid/text/format/Time;
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 992
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "curTime":Landroid/text/format/Time;
    const/4 v3, 0x0

    const/16 v4, 0x7b2

    invoke-virtual {v0, v5, v3, v4}, Landroid/text/format/Time;->set(III)V

    .line 994
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 995
    iget v3, v1, Landroid/text/format/Time;->year:I

    mul-int/lit8 v3, v3, 0xc

    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/text/format/Time;->year:I

    mul-int/lit8 v4, v4, 0xc

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 997
    .local v2, "num":I
    return v2
.end method

.method private doMiniViewPagerChange(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 1001
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1003
    .local v0, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    invoke-virtual {v3, p1}, Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;->get(I)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    move-result-object v1

    .line 1004
    .local v1, "mf":Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    if-nez v1, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1007
    :cond_0
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    if-eqz v3, :cond_1

    .line 1008
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->calcNewTimeByPageNum(Landroid/text/format/Time;Landroid/content/Context;I)V

    .line 1010
    :cond_1
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->isSameDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1011
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->setGotoTime(J)V

    .line 1013
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    .line 1014
    invoke-virtual {v4, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v6, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    iget v5, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFirstDayOfWeek:I

    .line 1013
    invoke-virtual {v3, v4, v5}, Lcn/nubia/calendar/util/MonthUtil;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    .line 1017
    .local v2, "tmpJulianWeek":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setmListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V

    .line 1018
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setmMonthViewCurrentMonth(I)V

    .line 1019
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setMonthWeekCurrentMonth(I)V

    .line 1020
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    sput v3, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMonthViewCurMonth:I

    .line 1021
    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setParams(I)V

    .line 1023
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    if-eqz v3, :cond_3

    .line 1024
    const-string v3, "%d-%d-%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    .line 1025
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1024
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1028
    :cond_3
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mChineseHoliday:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    invoke-virtual {v1, v3, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    goto/16 :goto_0
.end method

.method private doMonthViewPagerChange(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 946
    const-string v3, "MonthScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "month doMonthViewPagerChange,pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 947
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewMgr:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    invoke-virtual {v3, p1}, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->get(I)Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    move-result-object v1

    .line 949
    .local v1, "mf":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    if-nez v1, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    if-eqz v3, :cond_2

    .line 955
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->calcNewTimeByPageNum(Landroid/text/format/Time;Landroid/content/Context;I)V

    .line 958
    :cond_2
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->isSameDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 959
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->setGotoTime(J)V

    .line 961
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setmListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V

    .line 962
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setListViewLayout(Lcn/nubia/calendar/submodule_month/view/MyListView;)V

    .line 963
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setmMonthViewCurrentMonth(I)V

    .line 964
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setMonthWeekCurrentMonth(I)V

    .line 965
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    sput v3, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewCurMonth:I

    .line 967
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 968
    .local v0, "firstDayTime":Landroid/text/format/Time;
    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 969
    invoke-virtual {v0, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 970
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 971
    invoke-virtual {v0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFirstDayOfWeek:I

    iput v5, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstDayOfWeek:I

    .line 970
    invoke-virtual {v3, v4, v5}, Lcn/nubia/calendar/util/MonthUtil;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    .line 974
    .local v2, "tmpJulianweek":I
    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setParams(I)V

    .line 975
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    if-eqz v3, :cond_4

    .line 976
    const-string v3, "%d-%d-%d"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    .line 977
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 976
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 979
    :cond_4
    iget-object v3, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mChineseHoliday:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    invoke-virtual {v1, v3, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 980
    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->agendRefresh()V

    .line 981
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 982
    const-string v3, "%d-%d-%d"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 983
    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 984
    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 985
    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 982
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private doPageSelected(II)V
    .locals 5
    .param p1, "nowPosition"    # I
    .param p2, "oldPosition"    # I

    .prologue
    .line 480
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCurrentMonthPageNum:I

    .line 481
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->updateTopBar()V

    .line 482
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsGoTo:Z

    if-eqz v2, :cond_4

    .line 483
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsGoTo:Z

    .line 484
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 485
    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 486
    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v4

    .line 484
    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v0

    .line 487
    .local v0, "lineNum":I
    const/4 v1, 0x0

    .line 488
    .local v1, "mBottomTranslationDis":F
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 489
    sget v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_4LINE_HEIGHT:F

    .line 495
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->getmBottomPanel()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 497
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setBottomTranslationY()V

    .line 512
    .end local v0    # "lineNum":I
    .end local v1    # "mBottomTranslationDis":F
    :cond_1
    :goto_1
    return-void

    .line 490
    .restart local v0    # "lineNum":I
    .restart local v1    # "mBottomTranslationDis":F
    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 491
    sget v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_5LINE_HEIGHT:F

    goto :goto_0

    .line 492
    :cond_3
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 493
    sget v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->SCROLLER_6LINE_HEIGHT:F

    goto :goto_0

    .line 499
    .end local v0    # "lineNum":I
    .end local v1    # "mBottomTranslationDis":F
    :cond_4
    if-ge p2, p1, :cond_5

    .line 500
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToNext()V

    .line 503
    :cond_5
    if-le p2, p1, :cond_6

    .line 504
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToPre()V

    .line 507
    :cond_6
    if-ne p1, p2, :cond_1

    .line 508
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceToCurr()V

    goto :goto_1
.end method

.method private getContentObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 612
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mObserver:Landroid/database/ContentObserver;

    .line 630
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private getImg2show(I)I
    .locals 1
    .param p1, "countDown"    # I

    .prologue
    .line 756
    const v0, 0x7f0200d0

    .line 757
    .local v0, "countDownPicID":I
    packed-switch p1, :pswitch_data_0

    .line 774
    :goto_0
    return v0

    .line 759
    :pswitch_0
    const v0, 0x7f0200d0

    .line 760
    goto :goto_0

    .line 762
    :pswitch_1
    const v0, 0x7f0200d1

    .line 763
    goto :goto_0

    .line 765
    :pswitch_2
    const v0, 0x7f0200d2

    .line 766
    goto :goto_0

    .line 768
    :pswitch_3
    const v0, 0x7f0200d3

    .line 769
    goto :goto_0

    .line 771
    :pswitch_4
    const v0, 0x7f0200d4

    goto :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private goTo(Landroid/text/format/Time;ZZ)V
    .locals 2
    .param p1, "goToTime"    # Landroid/text/format/Time;
    .param p2, "ignoreTime"    # Z
    .param p3, "animateToday"    # Z

    .prologue
    .line 908
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    if-nez v1, :cond_0

    .line 920
    :goto_0
    return-void

    .line 912
    :cond_0
    :try_start_0
    sget-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    if-eqz v1, :cond_1

    .line 913
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->syncMiniMonthView(Landroid/text/format/Time;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 915
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->syncMonthView(Landroid/text/format/Time;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isSameDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z
    .locals 2
    .param p1, "srcTime"    # Landroid/text/format/Time;
    .param p2, "destTime"    # Landroid/text/format/Time;

    .prologue
    .line 1243
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/text/format/Time;->month:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iget v1, p2, Landroid/text/format/Time;->monthDay:I

    if-ne v0, v1, :cond_0

    .line 1245
    const/4 v0, 0x1

    .line 1247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryUserActionsByTime(Landroid/text/format/Time;)V
    .locals 12
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 655
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 656
    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    iget v0, v0, Landroid/text/format/Time;->month:I

    iget v1, p1, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 657
    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v0, v1, :cond_1

    .line 658
    const-string v0, "%d-%d-%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p1, Landroid/text/format/Time;->month:I

    .line 659
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget v4, p1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 658
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 661
    .local v11, "timeString":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initHolidayOrWorkDay(Landroid/text/format/Time;)V

    .line 666
    invoke-virtual {p1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v6, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 667
    .local v10, "startDay":I
    move v9, v10

    .line 670
    .local v9, "endDay":I
    const/4 v5, 0x0

    .line 671
    .local v5, "condition":Ljava/lang/String;
    :try_start_0
    const-string v5, "visible=1"

    .line 673
    invoke-direct {p0, v10, v9}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 674
    .local v3, "queryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v4, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->PROJECTION_INSTANCE:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "begin ASC, end ASC"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v3    # "queryUri":Landroid/net/Uri;
    .end local v5    # "condition":Ljava/lang/String;
    .end local v9    # "endDay":I
    .end local v10    # "startDay":I
    .end local v11    # "timeString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 679
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v9    # "endDay":I
    .restart local v10    # "startDay":I
    .restart local v11    # "timeString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 680
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setGotoTime(J)V
    .locals 5
    .param p1, "millisTime"    # J

    .prologue
    .line 1251
    const-string v1, "MonthScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GOTO_TIME] setGotoTime() millisTime ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    .line 1253
    .local v0, "time":Landroid/text/format/Time;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 1254
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->isSameDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->queryUserActionsByTime(Landroid/text/format/Time;)V

    .line 1258
    :cond_0
    return-void
.end method

.method private declared-synchronized showInfoAndRequestData()V
    .locals 28

    .prologue
    .line 786
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v24, :cond_1

    .line 892
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 790
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v20

    .line 792
    .local v20, "time":Landroid/text/format/Time;
    if-eqz v20, :cond_0

    .line 795
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getDataString(III)Ljava/lang/String;

    move-result-object v7

    .line 797
    .local v7, "data":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 798
    .local v8, "currentSystemTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastRequestData:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 799
    .local v15, "sameTime":Z
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastGetDataTime:J

    move-wide/from16 v24, v0

    sub-long v24, v8, v24

    const-wide/16 v26, 0x2710

    cmp-long v24, v24, v26

    if-gtz v24, :cond_2

    const/4 v5, 0x1

    .line 800
    .local v5, "cantShowInfo":Z
    :goto_1
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastGetDataTime:J

    move-wide/from16 v24, v0

    sub-long v24, v8, v24

    const-wide/16 v26, 0x2710

    cmp-long v24, v24, v26

    if-ltz v24, :cond_3

    const/16 v16, 0x1

    .line 803
    .local v16, "sameTimeAndtimeDiff":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;

    move-result-object v13

    .line 805
    .local v13, "listSwitch":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    if-nez v5, :cond_0

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setVisibility(I)V

    .line 811
    move-object/from16 v0, p0

    iput-object v7, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastRequestData:Ljava/lang/String;

    .line 812
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->lastGetDataTime:J

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->hasWORLDCUP(Landroid/content/Context;)Z

    move-result v11

    .line 818
    .local v11, "hasWorldCup":Z
    if-eqz v11, :cond_5

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getWorldCupBeginTime(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    .line 820
    .local v19, "startTime":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getDiffValueWorldCup(Landroid/content/Context;Landroid/text/format/Time;Ljava/lang/String;)I

    move-result v23

    .line 822
    .local v23, "worldCupCountDown":I
    if-lez v23, :cond_5

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    .line 823
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 824
    .local v14, "phoneTime":Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 825
    invoke-static {v14}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getYEARMonthDay(Landroid/text/format/Time;)I

    move-result v6

    .line 826
    .local v6, "currentPhoneTimeInt":I
    invoke-static/range {v20 .. v20}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getYEARMonthDay(Landroid/text/format/Time;)I

    move-result v4

    .line 827
    .local v4, "calendarCurrentTimeInt":I
    if-gt v6, v4, :cond_4

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getImg2show(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 786
    .end local v4    # "calendarCurrentTimeInt":I
    .end local v5    # "cantShowInfo":Z
    .end local v6    # "currentPhoneTimeInt":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "currentSystemTime":J
    .end local v11    # "hasWorldCup":Z
    .end local v13    # "listSwitch":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    .end local v14    # "phoneTime":Landroid/text/format/Time;
    .end local v15    # "sameTime":Z
    .end local v16    # "sameTimeAndtimeDiff":Z
    .end local v19    # "startTime":Ljava/lang/String;
    .end local v20    # "time":Landroid/text/format/Time;
    .end local v23    # "worldCupCountDown":I
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 799
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v8    # "currentSystemTime":J
    .restart local v15    # "sameTime":Z
    .restart local v20    # "time":Landroid/text/format/Time;
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 800
    .restart local v5    # "cantShowInfo":Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 832
    .restart local v4    # "calendarCurrentTimeInt":I
    .restart local v6    # "currentPhoneTimeInt":I
    .restart local v11    # "hasWorldCup":Z
    .restart local v13    # "listSwitch":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    .restart local v14    # "phoneTime":Landroid/text/format/Time;
    .restart local v16    # "sameTimeAndtimeDiff":Z
    .restart local v19    # "startTime":Ljava/lang/String;
    .restart local v23    # "worldCupCountDown":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 839
    .end local v4    # "calendarCurrentTimeInt":I
    .end local v6    # "currentPhoneTimeInt":I
    .end local v14    # "phoneTime":Landroid/text/format/Time;
    .end local v19    # "startTime":Ljava/lang/String;
    .end local v23    # "worldCupCountDown":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->hasSportsInTimeDay(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/List;)Z

    move-result v10

    .line 840
    .local v10, "hasSportsBeginandEndTimeToday":Z
    if-eqz v10, :cond_0

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataList()Ljava/util/List;

    move-result-object v12

    .line 847
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_6

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setVisibility(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getSelectCurrentDayListData(Landroid/text/format/Time;Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 851
    .local v17, "showList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->setDataList(Ljava/util/List;)V

    .line 854
    .end local v17    # "showList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    :cond_6
    if-eqz v15, :cond_7

    if-eqz v16, :cond_0

    .line 855
    :cond_7
    new-instance v24, Lcn/nubia/calendar/util/SharedPrefUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    const-string v25, "sportsMatchesVersion"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 856
    .local v18, "sportsMatchesVersion":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v22, 0x0

    .line 857
    .local v22, "version":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 859
    .local v21, "timeZoneID":Ljava/lang/String;
    new-instance v24, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-static {v7, v0, v1, v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requestSportsMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .end local v21    # "timeZoneID":Ljava/lang/String;
    .end local v22    # "version":Ljava/lang/String;
    :cond_8
    move-object/from16 v22, v18

    .line 856
    goto :goto_3
.end method

.method private showOrHideMiniView(Landroid/text/format/Time;)V
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 895
    sget-boolean v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    if-eqz v0, :cond_1

    .line 896
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->syncMiniMonthView(Landroid/text/format/Time;)V

    .line 900
    :goto_0
    if-eqz p1, :cond_0

    .line 901
    const-string v0, "%d-%d-%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Landroid/text/format/Time;->year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Landroid/text/format/Time;->month:I

    .line 902
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 901
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 904
    :cond_0
    return-void

    .line 898
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->syncMonthView(Landroid/text/format/Time;)V

    goto :goto_0
.end method

.method private syncMiniMonthView(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 923
    const-string v1, "MonthScroll"

    const-string v2, "[GOTO_TODAY] syncMiniMonthView begin"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->calcMiniMonthPageNum(Landroid/text/format/Time;)I

    move-result v0

    .line 926
    .local v0, "miniViewPageNum":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setCurrentItem(IZ)V

    .line 928
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doMiniViewPagerChange(I)V

    .line 930
    :cond_0
    return-void
.end method

.method private syncMonthView(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->calcMonthPageNum(Landroid/text/format/Time;)I

    move-result v0

    .line 935
    .local v0, "monthViewPageNum":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    if-eqz v1, :cond_1

    .line 936
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 937
    invoke-direct {p0, v0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doPageSelected(II)V

    .line 939
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setCurrentItem(IZ)V

    .line 941
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doMonthViewPagerChange(I)V

    .line 942
    const-string v1, "MonthScroll"

    const-string v2, "syncMonthView end"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method private updateTopBar()V
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setUpdateTopBarTrigger()V

    .line 1262
    return-void
.end method


# virtual methods
.method protected doResumeUpdates()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFirstDayOfWeek:I

    .line 696
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mShowWeekNumber:Z

    .line 697
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getDaysPerWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDaysPerWeek:I

    .line 698
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->updateHeader()V

    .line 699
    return-void
.end method

.method public goToTime(Landroid/text/format/Time;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/16 v5, 0x8

    .line 732
    const/4 v2, 0x0

    .line 733
    .local v2, "ignoreTime":Z
    const/4 v0, 0x1

    .line 734
    .local v0, "animateToday":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsGoTo:Z

    .line 735
    invoke-direct {p0, p1, v2, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->goTo(Landroid/text/format/Time;ZZ)V

    .line 736
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->queryUserActionsByTime(Landroid/text/format/Time;)V

    .line 738
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSwitchInfo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 740
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->showInfoAndRequestData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 745
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 746
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v3, "showList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    invoke-virtual {v4, v3}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->setDataList(Ljava/util/List;)V

    .line 748
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initDateInterval(Landroid/content/Context;Landroid/text/format/Time;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v7, 0x1

    .line 531
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDateInterval:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 532
    new-instance v3, Landroid/text/format/Time;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 533
    .local v3, "tempTime":Landroid/text/format/Time;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 534
    .local v2, "curTime":Landroid/text/format/Time;
    invoke-virtual {v3, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 535
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 536
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 537
    .local v4, "mTempMillis":J
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 538
    .local v0, "curMillis":J
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDateInterval:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    .end local v0    # "curMillis":J
    .end local v2    # "curTime":Landroid/text/format/Time;
    .end local v3    # "tempTime":Landroid/text/format/Time;
    .end local v4    # "mTempMillis":J
    :cond_0
    return-void
.end method

.method public initHolidayOrWorkDay(Landroid/text/format/Time;)V
    .locals 5
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v4, 0x0

    .line 543
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v2, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->isWorkDayORHoliday(Landroid/text/format/Time;)I

    move-result v0

    .line 544
    .local v0, "isHolidayOrWorkday":I
    const-string v1, ""

    .line 545
    .local v1, "mWorkOROfficialHolidayText":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 589
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    .line 591
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 547
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 548
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 553
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewCurrentMonth:I

    .line 557
    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    .line 559
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 563
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 564
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 565
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 568
    :cond_3
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 569
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    :cond_4
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOfficialWorkdayColor:I

    .line 573
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    .line 575
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 579
    :pswitch_2
    const-string v1, ""

    .line 580
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 581
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    :cond_5
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    .line 585
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initLunarDay(Landroid/content/Context;Landroid/text/format/Time;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 515
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mChineseHoliday:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 516
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, "tempTime":Landroid/text/format/Time;
    invoke-virtual {v1, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 518
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewCurrentMonth:I

    .line 519
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewCurrentMonth:I

    .line 521
    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    :cond_0
    new-instance v0, Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 525
    invoke-virtual {v0}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 526
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mChineseHoliday:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/calendar/util/ChineseCalendar;->getAll()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    .end local v0    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    .end local v1    # "tempTime":Landroid/text/format/Time;
    :cond_1
    return-void
.end method

.method public initMonthView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 243
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTZUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTimeZone:Ljava/lang/String;

    .line 244
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 245
    .local v12, "v":Landroid/view/View;
    const v0, 0x7f110068

    .line 246
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 247
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 249
    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setBottomTranslationY(Landroid/text/format/Time;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthScroll$4;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$4;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    .line 251
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setOnRefreshPageListener(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;)V

    .line 259
    const v0, 0x7f11006a

    .line 260
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    .line 261
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 262
    const v0, 0x7f110069

    .line 263
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    .line 264
    const v0, 0x7f11006f

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayNamesHeader:Landroid/widget/RelativeLayout;

    .line 265
    const v0, 0x7f11006b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mBottomPanel:Landroid/widget/RelativeLayout;

    .line 266
    const v0, 0x7f11006c

    .line 267
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mBottomPanelSon:Landroid/widget/RelativeLayout;

    .line 268
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    .line 272
    :cond_0
    const v0, 0x7f11006d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MyListView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 273
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MyListView;->setDividerHeight(I)V

    .line 274
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 276
    .local v7, "headerView":Landroid/view/View;
    const v0, 0x7f11019b

    .line 277
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkOROfficialHolidayTextView:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f11019e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSplitline:Landroid/widget/ImageView;

    .line 279
    const v0, 0x7f11019c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mChineseHoliday:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f1101a1

    .line 281
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDateInterval:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f1101a2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherView:Landroid/view/View;

    .line 284
    const v0, 0x7f1101a6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherCityName:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f1101a5

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherTmp:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f1101a7

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherType:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f1101a3

    .line 288
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherTypeIcon:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f11019f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLunarView:Landroid/view/View;

    .line 290
    const v0, 0x7f1100d1

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLunarText:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f1101a4

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mNoDate:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->setView()V

    .line 293
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initHolidayOrWorkDay(Landroid/text/format/Time;)V

    .line 294
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcn/nubia/calendar/submodule_month/view/MyListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 295
    const-string v0, "zh"

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const v0, 0x7f11019d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mChineseHoliday:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MyListView;->setmChineseHoliday(Landroid/widget/TextView;)V

    .line 303
    const v0, 0x7f1101a2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWeatherViewContainer:Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MyListView;->setWeatherView(Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 306
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initLunarDay(Landroid/content/Context;Landroid/text/format/Time;)V

    .line 309
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    const v2, 0x7f030064

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;-><init>(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCurUserActionListAdapter:Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

    .line 314
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 315
    .local v6, "footerView":Landroid/view/View;
    const v0, 0x7f1101a9

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    .line 317
    const v0, 0x7f1101a8

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->countDown:Landroid/widget/ImageView;

    .line 318
    new-instance v0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    .line 319
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->footerListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mSportsListAdapter:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lcn/nubia/calendar/submodule_month/view/MyListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 323
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mCurUserActionListAdapter:Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    .line 327
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    .line 328
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMonthViewMgr:Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    .line 333
    sget-boolean v0, Lcn/nubia/calendar/HomeActivity;->FIRST_START:Z

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->setShowLayze(Z)V

    .line 335
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 337
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    .line 338
    .local v10, "monthViewAdapter2":Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    .line 339
    .local v8, "mExpanTopViewPager2":Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOutterHandler:Landroid/os/Handler;

    .line 340
    .local v9, "mOutterHandler2":Landroid/os/Handler;
    if-eqz v9, :cond_1

    .line 341
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;

    invoke-direct {v0, p0, v10, v8}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/HomeActivity;->FIRST_START:Z

    .line 365
    .end local v8    # "mExpanTopViewPager2":Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;
    .end local v9    # "mOutterHandler2":Landroid/os/Handler;
    .end local v10    # "monthViewAdapter2":Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthScroll$6;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$6;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    .line 366
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 409
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    .line 410
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mMiniMonthViewManager:Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;Lcn/nubia/calendar/ui_component/deftui/MiniMonthViewManager;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    .line 412
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->setmViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 413
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 414
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->calcMiniMonthPageNum(Landroid/text/format/Time;)I

    move-result v11

    .line 415
    .local v11, "num":I
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    invoke-virtual {v0, v11}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setCurrentItem(I)V

    .line 416
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    .line 417
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 472
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mBottomPanel:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mBottomPanelSon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setBottomPanel(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    .line 473
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mBottomPanelSon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setBottomPanel(Landroid/widget/RelativeLayout;)V

    .line 474
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    .line 475
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->showOrHideMiniView(Landroid/text/format/Time;)V

    .line 476
    return-object v12

    .line 299
    .end local v6    # "footerView":Landroid/view/View;
    .end local v11    # "num":I
    :cond_2
    const v0, 0x7f11019d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 361
    .restart local v6    # "footerView":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->setShowLayze(Z)V

    .line 362
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 605
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 606
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->setUpHeader()V

    .line 607
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 600
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mActivity:Landroid/app/Activity;

    .line 601
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContentResolver:Landroid/content/ContentResolver;

    .line 225
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLanguage:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initMonthView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1331
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1332
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContext:Landroid/content/Context;

    .line 1333
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1306
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1308
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->onDestroy()V

    .line 1310
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    .line 1313
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->onDestroy()V

    .line 1315
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherTopViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    .line 1318
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->onDestroy()V

    .line 1320
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->monthViewAdapter:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    .line 1323
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    if-eqz v0, :cond_3

    .line 1324
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;->onDestroy()V

    .line 1325
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mOtherPagerAdapter:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewAdapter;

    .line 1327
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 647
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 648
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 649
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mObserver:Landroid/database/ContentObserver;

    .line 652
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 638
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 639
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->doResumeUpdates()V

    .line 640
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 641
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    .line 640
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 642
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->goToTime(Landroid/text/format/Time;)V

    .line 643
    return-void
.end method

.method protected setUpHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 724
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayLabels:[Ljava/lang/String;

    .line 725
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 726
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x1e

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    .line 727
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_0
    return-void
.end method

.method protected updateHeader()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, "label":Landroid/widget/TextView;
    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mFirstDayOfWeek:I

    add-int/lit8 v3, v5, -0x1

    .line 704
    .local v3, "offset":I
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayNamesHeader:Landroid/widget/RelativeLayout;

    const v6, 0x7f110070

    .line 705
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 706
    .local v2, "monthWeekHeader":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 707
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "label":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 708
    .restart local v1    # "label":Landroid/widget/TextView;
    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDaysPerWeek:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_1

    .line 709
    add-int v5, v3, v0

    rem-int/lit8 v4, v5, 0x7

    .line 710
    .local v4, "position":I
    const-string v5, "zh"

    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 711
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayLabels:[Ljava/lang/String;

    aget-object v5, v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    .end local v4    # "position":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    .restart local v4    # "position":I
    :cond_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayLabels:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 717
    .end local v4    # "position":I
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 720
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mDayNamesHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 721
    return-void
.end method
