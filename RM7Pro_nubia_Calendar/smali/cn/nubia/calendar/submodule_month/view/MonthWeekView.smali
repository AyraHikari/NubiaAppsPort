.class public Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
.super Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;
.source "MonthWeekView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;,
        Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;
    }
.end annotation


# static fields
.field private static BOUND:I = 0x0

.field private static CONFLICT_COLOR:I = 0x0

.field private static DAY_SEPARATOR_INNER_WIDTH:I = 0x0

.field private static DAY_SEPARATOR_OUTER_WIDTH:I = 0x0

.field private static DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I = 0x0

.field private static DAY_SEPARATOR_VERTICAL_LENGTH:I = 0x0

.field private static final DEBUG_LAYOUT:Z = false

.field private static DEFAULT_EDGE_SPACING:I = 0x0

.field private static DNA_ALL_DAY_HEIGHT:I = 0x0

.field private static DNA_ALL_DAY_WIDTH:I = 0x0

.field private static DNA_MARGIN:I = 0x0

.field private static DNA_MIN_SEGMENT_HEIGHT:I = 0x0

.field private static DNA_SIDE_PADDING:I = 0x0

.field private static DNA_WIDTH:I = 0x0

.field private static EVENT_BOTTOM_PADDING:I = 0x0

.field private static EVENT_LINE_PADDING:I = 0x0

.field private static EVENT_RIGHT_PADDING:I = 0x0

.field private static EVENT_SQUARE_BORDER:I = 0x0

.field private static EVENT_SQUARE_WIDTH:I = 0x0

.field private static EVENT_TEXT_COLOR:I = 0x0

.field private static EVENT_X_OFFSET_LANDSCAPE:I = 0x0

.field private static EVENT_Y_OFFSET_LANDSCAPE:I = 0x0

.field private static EVENT_Y_OFFSET_PORTRAIT:I = 0x0

.field private static LUNARY:I = 0x0

.field private static MIN_WEEK_WIDTH:I = 0x0

.field private static MONTHVIEW_LUNARTEXT_SIZE:I = 0x0

.field private static MONTHVIEW_SOLARTEXT_SIZE:I = 0x0

.field private static PORTOFFSET:I = 0x0

.field private static PORT_LUNAR_OFFSET:I = 0x0

.field private static PORT_NUM_OFFSET:I = 0x0

.field private static SIDE_PADDING_MONTH_NUMBER:I = 0x0

.field private static SIDE_PADDING_WEEK_NUMBER:I = 0x0

.field private static SPACING_WEEK_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field private static TEXT_SIZE_EVENT:I = 0x0

.field private static TEXT_SIZE_EVENT_TITLE:I = 0x0

.field private static TEXT_SIZE_MONTH_NAME:I = 0x0

.field private static TEXT_SIZE_MONTH_NUMBER:I = 0x0

.field private static TEXT_SIZE_MORE_EVENTS:I = 0x0

.field private static TEXT_SIZE_WEEK_NUM:I = 0x0

.field private static TODAY_HIGHLIGHT_WIDTH:I = 0x0

.field private static TOP_PADDING:I = 0x0

.field private static TOP_PADDING_MONTH_NUMBER:I = 0x0

.field private static TOP_PADDING_WEEK_NUMBER:I = 0x0

.field public static final VIEW_PARAMS_ANIMATE_TODAY:Ljava/lang/String; = "animate_today"

.field public static final VIEW_PARAMS_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final mClickedAlpha:I = 0x80

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mInitialized:Z

.field private static mShowDetailsInMonth:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private CIRCALSIXE:I

.field private MONTH_CIRCEL_RADIUS:F

.field private countLines:I

.field private countStartNum:I

.field private isNowDayWeekView:Z

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private final mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

.field private mCIRCALSIXE:I

.field private mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

.field private mCircelEventSize:I

.field private mClickedDayColor:I

.field public mClickedDayIndex:I

.field private mContext:Landroid/content/Context;

.field private mCountry:Ljava/lang/String;

.field private mCurMonthLunarDateTextColor:I

.field private mCurMonthSolarDateTextColor:I

.field protected mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

.field protected mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

.field protected mDNAAllDayPaint:Landroid/graphics/Paint;

.field protected mDNATimePaint:Landroid/graphics/Paint;

.field protected mDaySeparatorInnerColor:I

.field protected mDaySeparatorWhiteColor:I

.field private mDayXs:[I

.field protected mDeclinedEventPaint:Landroid/text/TextPaint;

.field mDna:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventAscentHeight:I

.field private mEventBgColor:I

.field protected mEventChipOutlineColor:I

.field protected mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

.field protected mEventExtrasPaint:Landroid/text/TextPaint;

.field protected mEventHeight:I

.field protected mEventPaint:Landroid/text/TextPaint;

.field protected mEventSquarePaint:Landroid/graphics/Paint;

.field private mEventStartDayLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mExtrasAscentHeight:I

.field protected mExtrasDescent:I

.field protected mExtrasHeight:I

.field private mFirstDayOfWeek:I

.field private mFirstMonthWeekStar:J

.field protected mFramedEventPaint:Landroid/text/TextPaint;

.field protected mHasToday:Z

.field protected mHoliday:Ljava/lang/String;

.field private mHolidayText:Ljava/lang/String;

.field private mHolidayTextColor:I

.field private mHolidayTextPaddingRight:I

.field private mHolidayTextPaddingTop:I

.field private mHolidayTextPaint:Landroid/graphics/Paint;

.field private mHolidayTextSize:F

.field private mHomeTimeZone:Ljava/lang/String;

.field mIsChineseHolidayVisible:Z

.field mIsLunarVisible:Z

.field protected mIsOfficalHoliday:[Z

.field protected mIsWeekendOnWork:[Z

.field mIsWesternHolidayVisible:Z

.field private mLanguage:Ljava/lang/String;

.field private mLunarLaber:Ljava/lang/String;

.field protected mMonthBGColor:I

.field protected mMonthBGOtherColor:I

.field protected mMonthBGTodayColor:I

.field protected mMonthBusyBitsBgColor:I

.field protected mMonthBusyBitsBusyTimeColor:I

.field protected mMonthBusyBitsConflictTimeColor:I

.field protected mMonthDayDisplay:[Ljava/lang/String;

.field private mMonthDayWidth:I

.field protected mMonthDeclinedEventColor:I

.field protected mMonthDeclinedExtrasColor:I

.field protected mMonthEventColor:I

.field private mMonthEventDatecolor:I

.field protected mMonthEventExtraColor:I

.field protected mMonthEventExtraOtherColor:I

.field protected mMonthEventOtherColor:I

.field private mMonthLunarDateBottomMargin:I

.field private mMonthLunarDateColor:I

.field protected mMonthLunarDateTextSize:F

.field protected mMonthLunarDayFullName:[Ljava/lang/String;

.field protected mMonthNameColor:I

.field protected mMonthNameOtherColor:I

.field protected mMonthNamePaint:Landroid/graphics/Paint;

.field protected mMonthNumAscentHeight:I

.field protected mMonthNumColor:I

.field protected mMonthNumHeight:I

.field protected mMonthNumOtherColor:I

.field protected mMonthNumTodayColor:I

.field private mMonthSolarDateMarginBottom:I

.field protected mMonthSolarDateTextSize:F

.field private mMonthTodayLunarDateTextColor:I

.field private mMonthTodaySolarDateTextColor:I

.field protected mMonthTodaySolarDateTextSize:F

.field public mMonthViewCurrentMonth:I

.field protected mMonthWeekNumColor:I

.field private mMonthclickDateTextColor:I

.field protected mNewYear:Ljava/lang/String;

.field protected mNewYearEve:Ljava/lang/String;

.field protected mOrientation:I

.field private mOtherMonthLunarDateTextColor:I

.field private mOtherMonthSolarDateTextColor:I

.field private mPaddingEvent:I

.field private mShowAllMonth:Z

.field protected mSolidBackgroundEventPaint:Landroid/text/TextPaint;

.field protected mToday:Landroid/text/format/Time;

.field protected mTodayAnimateColor:I

.field private mTodayAnimator:Landroid/animation/ObjectAnimator;

.field protected mTodayIndex:I

.field protected mUnsortedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field protected mWeekDayColor:I

.field protected mWeekDayOtherColor:I

.field protected mWeekNumAscentHeight:I

.field protected mWeekNumPaint:Landroid/graphics/Paint;

.field protected mWeekTodayColor:I

.field private mWeekendOnWorkPaint:Landroid/graphics/Paint;

.field private mWeekendOnWorkText:Ljava/lang/String;

.field private mWeekendOnWorkTextColor:I

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mXpostion0:I

.field private mXpostion1:I

.field private mYPandding:I

.field private rememberOtherMonthDay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public storeLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$LocationXY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 100
    const/high16 v0, -0x1000000

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CONFLICT_COLOR:I

    .line 101
    const/4 v0, -0x1

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_TEXT_COLOR:I

    .line 103
    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DEFAULT_EDGE_SPACING:I

    .line 104
    sput v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 105
    sput v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_MONTH_NUMBER:I

    .line 106
    sput v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_WEEK_NUMBER:I

    .line 107
    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING:I

    .line 109
    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 110
    const/4 v0, 0x1

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 119
    sput v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    .line 120
    sput v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_LINE_PADDING:I

    .line 121
    sput v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_RIGHT_PADDING:I

    .line 122
    const/4 v0, 0x3

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_BOTTOM_PADDING:I

    .line 124
    sput v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 127
    sput-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mInitialized:Z

    .line 133
    sput v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORTOFFSET:I

    .line 134
    const/16 v0, 0x55

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->BOUND:I

    .line 135
    sput v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_LUNAR_OFFSET:I

    .line 136
    const/16 v0, 0xc

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_NUM_OFFSET:I

    .line 138
    sput v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->LUNARY:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 150
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFormatter:Ljava/util/Formatter;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    .line 140
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    .line 141
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOrientation:I

    .line 143
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    .line 144
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 145
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    .line 202
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 206
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventChipOutlineColor:I

    .line 217
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateTodayAlpha:I

    .line 218
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 234
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 321
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayWidth:I

    .line 350
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowAllMonth:Z

    .line 352
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->isNowDayWeekView:Z

    .line 376
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    .line 1362
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    .line 1363
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countStartNum:I

    .line 1365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    .line 431
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 432
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLanguage:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 434
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCountry:Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadLunarAndHolidayControl()V

    .line 437
    new-instance v0, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 439
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstDayOfWeek:I

    .line 440
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SetDisplaySize(Landroid/content/Context;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 444
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    .line 140
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    .line 141
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOrientation:I

    .line 143
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    .line 144
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 145
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    .line 202
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 206
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventChipOutlineColor:I

    .line 217
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateTodayAlpha:I

    .line 218
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 234
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 321
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayWidth:I

    .line 350
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowAllMonth:Z

    .line 352
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->isNowDayWeekView:Z

    .line 376
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    .line 1362
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    .line 1363
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countStartNum:I

    .line 1365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    .line 447
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 448
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLanguage:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 450
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCountry:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadLunarAndHolidayControl()V

    .line 452
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->initNowTime(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    .line 453
    new-instance v0, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 454
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstDayOfWeek:I

    .line 455
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SetDisplaySize(Landroid/content/Context;)V

    .line 456
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateTodayAlpha:I

    return p1
.end method

.method private computeDayLeftPosition(I)I
    .locals 5
    .param p1, "day"    # I

    .prologue
    .line 1242
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    .line 1243
    .local v0, "effectiveWidth":I
    const/4 v1, 0x0

    .line 1244
    .local v1, "x":I
    const/4 v2, 0x0

    .line 1245
    .local v2, "xOffset":I
    iget-boolean v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowWeekNum:Z

    if-eqz v3, :cond_0

    .line 1246
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int v2, v3, v4

    .line 1247
    sub-int/2addr v0, v2

    .line 1249
    :cond_0
    mul-int v3, p1, v0

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    div-int/2addr v3, v4

    add-int v1, v3, v2

    .line 1250
    return v1
.end method

.method private computeDayRtlPosition(I)I
    .locals 5
    .param p1, "day"    # I

    .prologue
    .line 1254
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    .line 1255
    .local v0, "effectiveWidth":I
    const/4 v1, 0x0

    .line 1256
    .local v1, "x":I
    const/4 v2, 0x0

    .line 1257
    .local v2, "xOffset":I
    iget-boolean v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowWeekNum:Z

    if-eqz v3, :cond_0

    .line 1258
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int v2, v3, v4

    .line 1259
    sub-int/2addr v0, v2

    .line 1261
    :cond_0
    mul-int v3, p1, v0

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    div-int/2addr v3, v4

    add-int/2addr v3, v2

    sub-int v1, v0, v3

    .line 1262
    return v1
.end method

.method private drawClick(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, -0x1

    const/16 v9, 0x780

    .line 1305
    const/4 v5, 0x0

    .line 1306
    .local v5, "xyMax":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 1307
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    .line 1308
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1309
    .local v4, "win":Landroid/view/WindowManager;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1310
    .local v3, "size":Landroid/graphics/Point;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1311
    .local v2, "dis":Landroid/view/Display;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1312
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_3

    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 1314
    .end local v2    # "dis":Landroid/view/Display;
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "win":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-eq v6, v8, :cond_6

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-eq v6, v7, :cond_6

    .line 1315
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodaySolarDateTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1316
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1318
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1319
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1320
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    sget v7, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1321
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1322
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 1323
    .local v0, "cx":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xc

    add-int v1, v6, v7

    .line 1324
    .local v1, "cy":I
    if-le v5, v9, :cond_1

    .line 1325
    add-int/lit16 v6, v5, -0x780

    div-int/lit8 v6, v6, 0x20

    sub-int/2addr v1, v6

    .line 1326
    :cond_1
    int-to-float v6, v0

    int-to-float v7, v1

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CIRCALSIXE:I

    int-to-float v8, v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1356
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_2
    :goto_1
    return-void

    .line 1312
    .restart local v2    # "dis":Landroid/view/Display;
    .restart local v3    # "size":Landroid/graphics/Point;
    .restart local v4    # "win":Landroid/view/WindowManager;
    :cond_3
    iget v5, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1328
    .end local v2    # "dis":Landroid/view/Display;
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "win":Landroid/view/WindowManager;
    :cond_4
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1329
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1330
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    sget v7, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1331
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1332
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 1333
    .restart local v0    # "cx":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xc

    add-int v1, v6, v7

    .line 1334
    .restart local v1    # "cy":I
    if-le v5, v9, :cond_5

    .line 1335
    add-int/lit16 v6, v5, -0x780

    div-int/lit8 v6, v6, 0x20

    sub-int/2addr v1, v6

    .line 1336
    :cond_5
    int-to-float v6, v0

    int-to-float v7, v1

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CIRCALSIXE:I

    int-to-float v8, v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1338
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_6
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-eq v6, v8, :cond_2

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-ne v6, v7, :cond_2

    .line 1339
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodaySolarDateTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1340
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1342
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1343
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1348
    :goto_2
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    sget v7, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1349
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1350
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 1351
    .restart local v0    # "cx":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xc

    add-int v1, v6, v7

    .line 1352
    .restart local v1    # "cy":I
    if-le v5, v9, :cond_7

    .line 1353
    add-int/lit16 v6, v5, -0x780

    div-int/lit8 v6, v6, 0x20

    sub-int/2addr v1, v6

    .line 1354
    :cond_7
    int-to-float v6, v0

    int-to-float v7, v1

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CIRCALSIXE:I

    int-to-float v8, v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1345
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_8
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1346
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto :goto_2
.end method

.method private initNowTime(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcn/nubia/calendar/util/MonthUtil;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "now":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 461
    iget v1, v0, Landroid/text/format/Time;->month:I

    return v1
.end method

.method private setClickedDayByIndex(ILandroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "viewContainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .prologue
    const/4 v6, 0x0

    .line 1929
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 1961
    :goto_0
    return-void

    .line 1932
    :cond_0
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 1933
    if-eqz p2, :cond_2

    .line 1934
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v4, v4, p1

    .line 1935
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1934
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1936
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    aget-object v0, v3, v4

    .line 1937
    .local v0, "fullName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    aget-object v2, v3, v4

    .line 1938
    .local v2, "shortNameOrHoliday":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLunarLaber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1940
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1941
    :cond_1
    iget-object v3, p3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->lunarView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1946
    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 1947
    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    .line 1946
    invoke-static {v3, v4, v5}, Lcn/nubia/calendar/util/CalendarUtils;->getGapCountFromNowCount(Landroid/content/Context;J)I

    move-result v1

    .line 1948
    .local v1, "intervalCount":I
    if-nez v1, :cond_4

    .line 1949
    iget-object v3, p3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->interval:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1953
    :goto_2
    iget-object v3, p3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->interval:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 1955
    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v6

    .line 1954
    invoke-static {v4, v6, v7}, Lcn/nubia/calendar/util/CalendarUtils;->getGapCountFromNow(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1953
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, v1}, Lcn/nubia/calendar/util/WeatherUtils;->setWeatherView(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;I)V

    .line 1960
    .end local v0    # "fullName":Ljava/lang/String;
    .end local v1    # "intervalCount":I
    .end local v2    # "shortNameOrHoliday":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    goto :goto_0

    .line 1943
    .restart local v0    # "fullName":Ljava/lang/String;
    .restart local v2    # "shortNameOrHoliday":Ljava/lang/String;
    :cond_3
    iget-object v3, p3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->lunarView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1944
    iget-object v3, p3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->lunarText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1951
    .restart local v1    # "intervalCount":I
    :cond_4
    iget-object v3, p3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->interval:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public SetDisplaySize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090263

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 242
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 244
    const v1, 0x7f09025f

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT:I

    .line 246
    const v1, 0x7f09025e

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT_TITLE:I

    .line 248
    const v1, 0x7f090261

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MORE_EVENTS:I

    .line 250
    const v1, 0x7f090260

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NAME:I

    .line 252
    const v1, 0x7f090262

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 252
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_WEEK_NUM:I

    .line 255
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    .line 256
    const v1, 0x7f090168

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_HEIGHT:I

    .line 258
    const v1, 0x7f09016a

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 258
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 261
    const v1, 0x7f09018d

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTHVIEW_SOLARTEXT_SIZE:I

    .line 263
    const v1, 0x7f09018a

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTHVIEW_LUNARTEXT_SIZE:I

    .line 266
    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_WIDTH:I

    .line 267
    const v1, 0x7f090169

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    .line 269
    const v1, 0x7f09016b

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_SIDE_PADDING:I

    .line 272
    const v1, 0x7f090255

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 272
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 274
    const v1, 0x7f09015c

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 276
    const v1, 0x7f09015d

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 276
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 278
    const v1, 0x7f090185

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MIN_WEEK_WIDTH:I

    .line 281
    const v1, 0x7f090171

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 281
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 283
    const v1, 0x7f090172

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 283
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 286
    const v1, 0x7f090173

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 286
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 288
    const v1, 0x7f090170

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_WIDTH:I

    .line 291
    const v1, 0x7f090257

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    .line 291
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    .line 293
    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CIRCALSIXE:I

    .line 294
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPaddingEvent:I

    .line 295
    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mXpostion0:I

    .line 296
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mXpostion1:I

    .line 297
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCircelEventSize:I

    .line 298
    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mYPandding:I

    .line 299
    return-void
.end method

.method public clearClickedDay()V
    .locals 1

    .prologue
    .line 1964
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 1965
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 1966
    return-void
.end method

.method public createDna(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unsortedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    const/4 v2, 0x0

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->storeLocation:Ljava/util/HashMap;

    .line 534
    if-eqz p1, :cond_0

    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MIN_WEEK_WIDTH:I

    if-le v0, v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 538
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 539
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 543
    :cond_2
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 546
    sget-boolean v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowDetailsInMonth:Z

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 548
    .local v11, "numDays":I
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v10, v0, v1

    .line 549
    .local v10, "effectiveWidth":I
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowWeekNum:Z

    if-eqz v0, :cond_3

    .line 550
    sget v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v10, v0

    .line 552
    :cond_3
    div-int v0, v10, v11

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    .line 553
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 554
    new-array v0, v11, [I

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayXs:[I

    .line 555
    const/4 v9, 0x0

    .local v9, "day":I
    :goto_1
    if-ge v9, v11, :cond_4

    .line 557
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayXs:[I

    invoke-direct {p0, v9}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_SIDE_PADDING:I

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 555
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 562
    :cond_4
    sget v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    add-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 564
    .local v3, "top":I
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    sub-int v4, v0, v1

    .line 565
    .local v4, "bottom":I
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    sget v5, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MIN_SEGMENT_HEIGHT:I

    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayXs:[I

    .line 566
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->storeLocation:Ljava/util/HashMap;

    move-object v2, p1

    .line 565
    invoke-virtual/range {v0 .. v8}, Lcn/nubia/calendar/util/MonthUtil;->createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    goto :goto_0
.end method

.method protected drawChineseWeekNums(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1093
    const/4 v1, 0x0

    .line 1094
    .local v1, "i":I
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    .line 1095
    .local v6, "todayIndex":I
    const/4 v8, 0x0

    .line 1096
    .local v8, "x":I
    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    .line 1097
    .local v4, "numCount":I
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDateBottomMargin:I

    sub-int v9, v10, v11

    .line 1098
    .local v9, "y":I
    :goto_0
    if-ge v1, v4, :cond_9

    .line 1099
    const/4 v3, 0x0

    .line 1100
    .local v3, "monthOfday":I
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonth:[I

    if-eqz v10, :cond_0

    .line 1101
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowWeekNum:Z

    if-eqz v10, :cond_6

    .line 1102
    add-int/lit8 v10, v1, 0x1

    iget-object v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonth:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-gt v10, v11, :cond_0

    .line 1103
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonth:[I

    add-int/lit8 v11, v1, 0x1

    aget v3, v10, v11

    .line 1111
    :cond_0
    :goto_1
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    aget-object v10, v10, v1

    .line 1112
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1113
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    sget v11, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTHVIEW_LUNARTEXT_SIZE:I

    int-to-float v11, v11

    .line 1114
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1115
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1117
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDateColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1118
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-ne v10, v1, :cond_1

    .line 1119
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthclickDateTextColor:I

    .line 1120
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1122
    :cond_1
    if-ne v6, v1, :cond_2

    .line 1123
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodayLunarDateTextColor:I

    .line 1124
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1125
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-ne v6, v10, :cond_2

    .line 1126
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthclickDateTextColor:I

    .line 1127
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1130
    :cond_2
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    aget-object v11, v11, v1

    .line 1131
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v5, v10

    .line 1132
    .local v5, "textWidth":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1133
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v8

    .line 1138
    :goto_2
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayWidth:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    div-int/lit8 v11, v5, 0x2

    sub-int v2, v10, v11

    .line 1140
    .local v2, "lunarDateX":I
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowAllMonth:Z

    if-eqz v10, :cond_8

    .line 1142
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    aget-object v10, v10, v1

    int-to-float v11, v2

    sget v12, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->LUNARY:I

    add-int/2addr v12, v9

    int-to-float v12, v12

    iget-object v13, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1152
    .end local v2    # "lunarDateX":I
    .end local v5    # "textWidth":I
    :cond_3
    :goto_3
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-eqz v10, :cond_5

    .line 1153
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    aget-boolean v10, v10, v1

    if-eqz v10, :cond_4

    .line 1154
    add-int/lit8 v10, v1, 0x1

    invoke-direct {p0, v10}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v10

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaddingRight:I

    sub-int v0, v10, v11

    .line 1156
    .local v0, "holidayX":I
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-eq v10, v1, :cond_4

    .line 1157
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1158
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayText:Ljava/lang/String;

    int-to-float v11, v0

    iget v12, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaddingTop:I

    int-to-float v12, v12

    iget-object v13, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1163
    .end local v0    # "holidayX":I
    :cond_4
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    aget-boolean v10, v10, v1

    if-eqz v10, :cond_5

    .line 1164
    add-int/lit8 v10, v1, 0x1

    invoke-direct {p0, v10}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v10

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaddingRight:I

    sub-int v7, v10, v11

    .line 1166
    .local v7, "weekendOnWorkX":I
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-eq v10, v1, :cond_5

    .line 1167
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkText:Ljava/lang/String;

    int-to-float v11, v7

    iget v12, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaddingTop:I

    int-to-float v12, v12

    iget-object v13, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1098
    .end local v7    # "weekendOnWorkX":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1106
    :cond_6
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonth:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-gt v1, v10, :cond_0

    .line 1107
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonth:[I

    aget v3, v10, v1

    goto/16 :goto_1

    .line 1136
    .restart local v5    # "textWidth":I
    :cond_7
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v8

    goto/16 :goto_2

    .line 1145
    .restart local v2    # "lunarDateX":I
    :cond_8
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    if-ne v10, v3, :cond_3

    .line 1146
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    aget-object v10, v10, v1

    int-to-float v11, v2

    sget v12, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->LUNARY:I

    add-int/2addr v12, v9

    int-to-float v12, v12

    iget-object v13, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1175
    .end local v2    # "lunarDateX":I
    .end local v3    # "monthOfday":I
    .end local v5    # "textWidth":I
    :cond_9
    return-void
.end method

.method protected drawDNA(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1741
    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    .line 1743
    .local v7, "temp":I
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventDatecolor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1744
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1745
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1746
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    if-eqz v9, :cond_7

    .line 1747
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 1749
    .local v6, "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->color:I

    sget v11, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CONFLICT_COLOR:I

    if-eq v9, v11, :cond_0

    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    array-length v9, v9

    if-eqz v9, :cond_0

    .line 1754
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    array-length v9, v9

    div-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x1

    if-gt v1, v9, :cond_0

    .line 1755
    const/4 v0, 0x1

    .line 1756
    .local v0, "flag":Z
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1757
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1758
    .local v4, "m":I
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->storeLocation:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1759
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->storeLocation:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$LocationXY;

    .line 1760
    .local v3, "lxy":Lcn/nubia/calendar/util/MonthUtil$LocationXY;
    iget v9, v3, Lcn/nubia/calendar/util/MonthUtil$LocationXY;->x0:F

    iget-object v11, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    aget v11, v11, v1

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1

    iget v9, v3, Lcn/nubia/calendar/util/MonthUtil$LocationXY;->y0:F

    iget-object v11, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    add-int/lit8 v12, v1, 0x1

    aget v11, v11, v12

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1

    .line 1762
    const/4 v0, 0x0

    .line 1756
    .end local v3    # "lxy":Lcn/nubia/calendar/util/MonthUtil$LocationXY;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1766
    .end local v4    # "m":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1767
    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    aget v9, v9, v1

    const/high16 v11, 0x42600000    # 56.0f

    add-float/2addr v9, v11

    iget-object v11, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    add-int/lit8 v12, v1, 0x1

    aget v11, v11, v12

    const/high16 v12, 0x42080000    # 34.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x40800000    # 4.0f

    iget-object v13, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1754
    :cond_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 1775
    .end local v0    # "flag":Z
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v6    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    :cond_4
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDna:Ljava/util/HashMap;

    sget v10, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CONFLICT_COLOR:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 1776
    .restart local v6    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    if-eqz v6, :cond_6

    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    array-length v9, v9

    if-eqz v9, :cond_6

    .line 1778
    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    .line 1779
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    array-length v9, v9

    div-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x1

    if-gt v1, v9, :cond_6

    .line 1780
    if-lez v7, :cond_5

    .line 1781
    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    aget v9, v9, v1

    const/high16 v10, 0x42600000    # 56.0f

    add-float/2addr v9, v10

    iget-object v10, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    add-int/lit8 v11, v1, 0x1

    aget v10, v10, v11

    const/high16 v11, 0x42080000    # 34.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1785
    add-int/lit8 v7, v7, -0x1

    .line 1779
    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 1789
    .end local v1    # "i":I
    :cond_6
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayXs:[I

    if-nez v9, :cond_8

    .line 1812
    .end local v6    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    :cond_7
    return-void

    .line 1792
    .restart local v6    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    :cond_8
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayXs:[I

    array-length v5, v9

    .line 1793
    .local v5, "numDays":I
    sget v9, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    sget v10, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_WIDTH:I

    sub-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x2

    .line 1794
    .local v8, "xOffset":I
    if-eqz v6, :cond_7

    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    if-eqz v9, :cond_7

    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    array-length v9, v9

    if-ne v9, v5, :cond_7

    .line 1796
    const/4 v1, 0x0

    .line 1797
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v5, :cond_7

    .line 1798
    iget-object v9, v6, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    aget v9, v9, v1

    if-eqz v9, :cond_9

    .line 1799
    iget v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1800
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1801
    iget v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    if-eq v1, v9, :cond_9

    .line 1802
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayXs:[I

    aget v9, v9, v1

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    sget v10, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    sget v11, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x72

    int-to-float v10, v10

    const/high16 v11, 0x40800000    # 4.0f

    iget-object v12, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1797
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 1267
    const/16 v9, 0x20

    new-array v3, v9, [F

    .line 1268
    .local v3, "lines":[F
    const/16 v0, 0x18

    .line 1269
    .local v0, "count":I
    const/4 v4, 0x0

    .line 1270
    .local v4, "wkNumOffset":I
    const/4 v1, 0x0

    .line 1271
    .local v1, "i":I
    iget-boolean v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowWeekNum:Z

    if-eqz v9, :cond_0

    .line 1273
    sget v9, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int v6, v9, v10

    .line 1274
    .local v6, "xOffset":I
    add-int/lit8 v0, v0, 0x4

    .line 1275
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 1276
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput v11, v3, v2

    .line 1277
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 1278
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    int-to-float v9, v9

    aput v9, v3, v2

    .line 1279
    add-int/lit8 v4, v4, 0x1

    .line 1281
    .end local v6    # "xOffset":I
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 1282
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aput v11, v3, v1

    .line 1283
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput v11, v3, v2

    .line 1284
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    iget v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    int-to-float v9, v9

    aput v9, v3, v1

    .line 1285
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput v11, v3, v2

    .line 1286
    const/4 v7, 0x0

    .line 1287
    .local v7, "y0":I
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    .local v8, "y1":I
    move v2, v1

    .line 1289
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1290
    div-int/lit8 v9, v2, 0x4

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v5

    .line 1291
    .local v5, "x":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 1292
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    int-to-float v9, v7

    aput v9, v3, v1

    .line 1293
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 1294
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    int-to-float v9, v8

    aput v9, v3, v1

    goto :goto_0

    .line 1297
    .end local v5    # "x":I
    :cond_1
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDaySeparatorInnerColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1298
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1299
    const/4 v9, 0x0

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v0, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1301
    return-void
.end method

.method protected drawEvent(Landroid/graphics/Canvas;Lcn/nubia/calendar/model/Event;IIIZZZ)I
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "event"    # Lcn/nubia/calendar/model/Event;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "rightEdge"    # I
    .param p6, "moreEvents"    # Z
    .param p7, "showTimes"    # Z
    .param p8, "doDraw"    # Z

    .prologue
    .line 1600
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    add-int/lit8 v10, v2, 0x1

    .line 1602
    .local v10, "BORDER_SPACE":I
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    div-int/lit8 v11, v2, 0x2

    .line 1605
    .local v11, "STROKE_WIDTH_ADJ":I
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcn/nubia/calendar/model/Event;->allDay:Z

    .line 1606
    .local v12, "allDay":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventHeight:I

    move/from16 v16, v0

    .line 1607
    .local v16, "eventRequiredSpace":I
    if-eqz v12, :cond_2

    .line 1609
    mul-int/lit8 v2, v10, 0x2

    add-int v16, v16, v2

    .line 1614
    :cond_0
    :goto_0
    sget v18, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_BOTTOM_PADDING:I

    .line 1616
    .local v18, "reservedSpace":I
    if-eqz p6, :cond_1

    .line 1618
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_LINE_PADDING:I

    add-int v16, v16, v2

    .line 1625
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasHeight:I

    add-int v18, v18, v2

    .line 1628
    :cond_1
    add-int v2, p4, v16

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    if-le v2, v3, :cond_3

    move/from16 v2, p4

    .line 1717
    :goto_1
    return v2

    .line 1610
    .end local v18    # "reservedSpace":I
    :cond_2
    if-eqz p7, :cond_0

    .line 1612
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasHeight:I

    add-int v16, v16, v2

    goto :goto_0

    .line 1631
    .restart local v18    # "reservedSpace":I
    :cond_3
    if-nez p8, :cond_4

    .line 1632
    add-int v2, p4, v16

    goto :goto_1

    .line 1635
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/16 v17, 0x1

    .line 1636
    .local v17, "isDeclined":Z
    :goto_2
    move-object/from16 v0, p2

    iget v15, v0, Lcn/nubia/calendar/model/Event;->color:I

    .line 1640
    .local v15, "color":I
    if-eqz v12, :cond_9

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    sub-int v3, p5, v11

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    add-int v3, p4, v11

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventHeight:I

    add-int v3, v3, p4

    mul-int/lit8 v4, v10, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v11

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1650
    add-int v23, p3, v10

    .line 1651
    .local v23, "textX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventAscentHeight:I

    add-int v2, v2, p4

    add-int v24, v2, v10

    .line 1652
    .local v24, "textY":I
    sub-int v22, p5, v10

    .line 1664
    .local v22, "textRightEdge":I
    :goto_3
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 1665
    .local v14, "boxStyle":Landroid/graphics/Paint$Style;
    const/16 v19, 0x0

    .line 1666
    .local v19, "solidBackground":Z
    move-object/from16 v0, p2

    iget v2, v0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 1667
    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 1668
    if-eqz v12, :cond_5

    .line 1669
    const/16 v19, 0x1

    .line 1672
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1676
    sub-int v2, v22, v23

    int-to-float v13, v2

    .line 1677
    .local v13, "avail":F
    move-object/from16 v0, p2

    iget-object v2, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v13, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1680
    .local v20, "text":Ljava/lang/CharSequence;
    if-eqz v19, :cond_a

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .line 1694
    .local v21, "textPaint":Landroid/graphics/Paint;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1695
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventHeight:I

    add-int p4, p4, v2

    .line 1696
    if-eqz v12, :cond_6

    .line 1697
    mul-int/lit8 v2, v10, 0x2

    add-int p4, p4, v2

    .line 1700
    :cond_6
    if-eqz p7, :cond_7

    if-nez v12, :cond_7

    .line 1702
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasAscentHeight:I

    add-int v24, p4, v2

    .line 1703
    sget-object v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    const v8, 0x80001

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Lcn/nubia/calendar/util/MonthUtil;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 1704
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 1707
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    invoke-static {v0, v2, v13, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1710
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v24

    int-to-float v5, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1712
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasHeight:I

    add-int p4, p4, v2

    .line 1715
    :cond_7
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_LINE_PADDING:I

    add-int p4, p4, v2

    move/from16 v2, p4

    .line 1717
    goto/16 :goto_1

    .line 1635
    .end local v13    # "avail":F
    .end local v14    # "boxStyle":Landroid/graphics/Paint$Style;
    .end local v15    # "color":I
    .end local v17    # "isDeclined":Z
    .end local v19    # "solidBackground":Z
    .end local v20    # "text":Ljava/lang/CharSequence;
    .end local v21    # "textPaint":Landroid/graphics/Paint;
    .end local v22    # "textRightEdge":I
    .end local v23    # "textX":I
    .end local v24    # "textY":I
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1655
    .restart local v15    # "color":I
    .restart local v17    # "isDeclined":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_WIDTH:I

    add-int v3, v3, p3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventAscentHeight:I

    add-int v3, v3, p4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_WIDTH:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1659
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_WIDTH:I

    add-int v2, v2, p3

    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_RIGHT_PADDING:I

    add-int v23, v2, v3

    .line 1660
    .restart local v23    # "textX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventAscentHeight:I

    add-int v24, p4, v2

    .line 1661
    .restart local v24    # "textY":I
    move/from16 v22, p5

    .restart local v22    # "textRightEdge":I
    goto/16 :goto_3

    .line 1683
    .restart local v13    # "avail":F
    .restart local v14    # "boxStyle":Landroid/graphics/Paint$Style;
    .restart local v19    # "solidBackground":Z
    .restart local v20    # "text":Ljava/lang/CharSequence;
    :cond_a
    if-eqz v17, :cond_b

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .restart local v21    # "textPaint":Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 1686
    .end local v21    # "textPaint":Landroid/graphics/Paint;
    :cond_b
    if-eqz v12, :cond_c

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFramedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v15}, Landroid/text/TextPaint;->setColor(I)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFramedEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .restart local v21    # "textPaint":Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 1692
    .end local v21    # "textPaint":Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .restart local v21    # "textPaint":Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 1710
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    goto :goto_5
.end method

.method protected drawEvents(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1559
    :cond_0
    return-void

    .line 1506
    :cond_1
    const/16 v20, -0x1

    .line 1507
    .local v20, "day":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 1508
    .local v22, "eventDay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    add-int/lit8 v20, v20, 0x1

    .line 1509
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1513
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v3

    sget v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 1515
    .local v6, "xSquare":I
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v8

    .line 1517
    .local v8, "rightEdge":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1518
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_PORTRAIT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumHeight:I

    add-int/2addr v3, v4

    sget v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v15, v3, v4

    .line 1520
    .local v15, "ySquare":I
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v8, v3

    .line 1527
    :goto_1
    const/4 v10, 0x1

    .line 1528
    .local v10, "showTimes":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1529
    .local v23, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/model/Event;>;"
    move v7, v15

    .line 1530
    .local v7, "yTest":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1531
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/model/Event;

    .line 1533
    .local v5, "event":Lcn/nubia/calendar/model/Event;
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1532
    invoke-virtual/range {v3 .. v11}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawEvent(Landroid/graphics/Canvas;Lcn/nubia/calendar/model/Event;IIIZZZ)I

    move-result v24

    .line 1534
    .local v24, "newY":I
    move/from16 v0, v24

    if-ne v0, v7, :cond_6

    .line 1535
    const/4 v10, 0x0

    .line 1541
    .end local v5    # "event":Lcn/nubia/calendar/model/Event;
    .end local v24    # "newY":I
    :cond_3
    const/16 v21, 0x0

    .line 1542
    .local v21, "eventCount":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1543
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1544
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/model/Event;

    .line 1546
    .restart local v5    # "event":Lcn/nubia/calendar/model/Event;
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v5

    move v14, v6

    move/from16 v16, v8

    move/from16 v18, v10

    .line 1545
    invoke-virtual/range {v11 .. v19}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawEvent(Landroid/graphics/Canvas;Lcn/nubia/calendar/model/Event;IIIZZZ)I

    move-result v24

    .line 1547
    .restart local v24    # "newY":I
    move/from16 v0, v24

    if-ne v0, v15, :cond_7

    .line 1554
    .end local v5    # "event":Lcn/nubia/calendar/model/Event;
    .end local v24    # "newY":I
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v25, v3, v21

    .line 1555
    .local v25, "remaining":I
    if-lez v25, :cond_2

    .line 1556
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawMoreEvents(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 1522
    .end local v7    # "yTest":I
    .end local v10    # "showTimes":Z
    .end local v15    # "ySquare":I
    .end local v21    # "eventCount":I
    .end local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/model/Event;>;"
    .end local v25    # "remaining":I
    :cond_5
    sget v15, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 1523
    .restart local v15    # "ySquare":I
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_X_OFFSET_LANDSCAPE:I

    sub-int/2addr v8, v3

    goto :goto_1

    .line 1538
    .restart local v5    # "event":Lcn/nubia/calendar/model/Event;
    .restart local v7    # "yTest":I
    .restart local v10    # "showTimes":Z
    .restart local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/model/Event;>;"
    .restart local v24    # "newY":I
    :cond_6
    move/from16 v7, v24

    .line 1539
    goto :goto_2

    .line 1550
    .restart local v21    # "eventCount":I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 1551
    move/from16 v15, v24

    .line 1552
    goto :goto_3
.end method

.method protected drawMoreEvents(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "remainingEvents"    # I
    .param p3, "x"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1721
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasDescent:I

    sget v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_BOTTOM_PADDING:I

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 1722
    .local v1, "y":I
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1725
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1726
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p3

    int-to-float v4, v1

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1728
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1729
    return-void
.end method

.method protected drawToday(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1215
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1216
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1219
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1220
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1221
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1224
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    .line 1225
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1232
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1234
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimateColor:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateTodayAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1235
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1236
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1237
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1229
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    .line 1230
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1380
    const/4 v7, 0x0

    .line 1381
    .local v7, "i":I
    const/4 v10, 0x0

    .line 1382
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    .line 1383
    .local v15, "todayIndex":I
    const/16 v16, 0x0

    .line 1384
    .local v16, "x":I
    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    .line 1385
    .local v9, "numCount":I
    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    .line 1386
    .local v13, "tempJulianday":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1499
    :cond_0
    return-void

    .line 1389
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventDatecolor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x66

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1393
    :goto_0
    if-ge v7, v9, :cond_0

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTHVIEW_SOLARTEXT_SIZE:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1396
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthSolarDateMarginBottom:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 1397
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOtherMonthSolarDateTextColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1399
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_2

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthclickDateTextColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1402
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    if-ne v15, v7, :cond_3

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodaySolarDateTextColor:I

    move/from16 v19, v0

    .line 1404
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1406
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthclickDateTextColor:I

    move/from16 v19, v0

    .line 1408
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1411
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    .line 1412
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1413
    .local v14, "textWidth":I
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1414
    sub-int v18, v7, v10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v16

    .line 1415
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v18

    const/16 v19, 0x1

    .line 1416
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayRtlPosition(I)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayWidth:I

    .line 1422
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v16

    div-int/lit8 v19, v14, 0x2

    sub-int v11, v18, v19

    .line 1423
    .local v11, "solarDateX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowAllMonth:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLanguage:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLanguage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "zh"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    int-to-float v0, v11

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1393
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1418
    .end local v11    # "solarDateX":I
    :cond_5
    sub-int v18, v7, v10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v16

    .line 1419
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v18

    const/16 v19, 0x1

    .line 1420
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->computeDayLeftPosition(I)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayWidth:I

    goto :goto_1

    .line 1428
    .restart local v11    # "solarDateX":I
    :cond_6
    const/4 v8, 0x0

    .line 1429
    .local v8, "monthweekview_shownum":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09018e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v8, v0

    .line 1432
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    int-to-float v0, v11

    move/from16 v19, v0

    add-int v20, v17, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1437
    .end local v8    # "monthweekview_shownum":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonth:[I

    move-object/from16 v19, v0

    aget v19, v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1438
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLanguage:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLanguage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "zh"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    int-to-float v0, v11

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1451
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventStartDayLists:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventStartDayLists:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstMonthWeekStar:J

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1453
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_4

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1455
    .local v6, "dayNum":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    .line 1456
    .local v12, "temp":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0d0050

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1459
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1460
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mXpostion0:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPaddingEvent:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTH_CIRCEL_RADIUS:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1444
    .end local v6    # "dayNum":I
    .end local v12    # "temp":Landroid/graphics/Paint;
    :cond_a
    const/4 v8, 0x0

    .line 1445
    .restart local v8    # "monthweekview_shownum":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09018e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v8, v0

    .line 1448
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDayNumbers:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    int-to-float v0, v11

    move/from16 v19, v0

    add-int v20, v17, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1467
    .end local v8    # "monthweekview_shownum":I
    .restart local v6    # "dayNum":I
    .restart local v12    # "temp":Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mXpostion1:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPaddingEvent:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTH_CIRCEL_RADIUS:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1475
    :cond_d
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v6, v0, :cond_e

    .line 1476
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mXpostion0:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPaddingEvent:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mYPandding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTH_CIRCEL_RADIUS:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1482
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mXpostion1:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPaddingEvent:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mYPandding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTH_CIRCEL_RADIUS:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1494
    .end local v6    # "dayNum":I
    .end local v12    # "temp":Landroid/graphics/Paint;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countStartNum:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countStartNum:I

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 6
    .param p1, "x"    # F

    .prologue
    const v4, 0x253d8c    # 3.419992E-39f

    const/4 v5, 0x1

    .line 1848
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayIndexFromLocation(F)I

    move-result v1

    .line 1849
    .local v1, "dayPosition":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1850
    const/4 v2, 0x0

    .line 1867
    :goto_0
    return-object v2

    .line 1852
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    add-int v0, v3, v1

    .line 1854
    .local v0, "day":I
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v2, "time":Landroid/text/format/Time;
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeek:I

    if-nez v3, :cond_1

    .line 1857
    if-ge v0, v4, :cond_2

    .line 1858
    add-int/lit8 v0, v0, 0x1

    .line 1866
    :cond_1
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    goto :goto_0

    .line 1859
    :cond_2
    if-ne v0, v4, :cond_1

    .line 1860
    const/4 v3, 0x0

    const/16 v4, 0x7b2

    invoke-virtual {v2, v5, v3, v4}, Landroid/text/format/Time;->set(III)V

    .line 1861
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public getDayIndexFromLocation(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 1833
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowWeekNum:Z

    if-eqz v1, :cond_1

    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int v0, v1, v2

    .line 1834
    .local v0, "dayStart":I
    :goto_0
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 1835
    :cond_0
    const/4 v1, -0x1

    .line 1841
    :goto_1
    return v1

    .line 1833
    .end local v0    # "dayStart":I
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    goto :goto_0

    .line 1838
    .restart local v0    # "dayStart":I
    :cond_2
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1839
    int-to-float v1, v0

    sub-float v1, p1, v1

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    rsub-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 1841
    :cond_3
    int-to-float v1, v0

    sub-float v1, p1, v1

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method public getHoliday(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1182
    if-nez p1, :cond_0

    move-object v0, p1

    .line 1189
    .end local p1    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1185
    .end local v0    # "str":Ljava/lang/String;
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 1186
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1187
    .end local p1    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "str":Ljava/lang/String;
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 1189
    .end local p1    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getmEventStartDayLists()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventStartDayLists:Ljava/util/HashMap;

    return-object v0
.end method

.method public getmMonthViewCurrentMonth()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    return v0
.end method

.method public hasTheDay(Landroid/text/format/Time;)Z
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v0, 0x1

    .line 1985
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 1986
    .local v1, "julian":I
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1989
    .local v0, "hasDay":Z
    :goto_0
    return v0

    .line 1986
    .end local v0    # "hasDay":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCountVar()V
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->countLines:I

    .line 1179
    return-void
.end method

.method protected initView()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 697
    invoke-super {p0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->initView()V

    .line 699
    sget-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mInitialized:Z

    if-nez v1, :cond_2

    .line 700
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 701
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f000a

    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/util/MonthUtil;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowDetailsInMonth:Z

    .line 703
    const v1, 0x7f100003

    .line 704
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT_TITLE:I

    .line 705
    const v1, 0x7f100002

    .line 706
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 707
    const v1, 0x7f0d0110

    .line 708
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->CONFLICT_COLOR:I

    .line 709
    const v1, 0x7f0d002a

    .line 710
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_TEXT_COLOR:I

    .line 711
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 712
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_MONTH_NUMBER:I

    .line 713
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_WEEK_NUMBER:I

    .line 714
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING:I

    .line 715
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 716
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 717
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    .line 718
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 719
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT:I

    .line 720
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT_TITLE:I

    .line 721
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MORE_EVENTS:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MORE_EVENTS:I

    .line 722
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NAME:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NAME:I

    .line 723
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_WEEK_NUM:I

    .line 724
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_OUTER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 725
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 726
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 727
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 728
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_X_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 729
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 730
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 731
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_WIDTH:I

    .line 732
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    .line 733
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_LINE_PADDING:I

    .line 734
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_BOTTOM_PADDING:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_BOTTOM_PADDING:I

    .line 735
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_RIGHT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_RIGHT_PADDING:I

    .line 736
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    .line 737
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_WIDTH:I

    .line 738
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_HEIGHT:I

    .line 739
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MIN_SEGMENT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 740
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_SIDE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_SIDE_PADDING:I

    .line 741
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DEFAULT_EDGE_SPACING:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DEFAULT_EDGE_SPACING:I

    .line 742
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    .line 743
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 745
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORTOFFSET:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORTOFFSET:I

    .line 746
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->BOUND:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->BOUND:I

    .line 747
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_LUNAR_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_LUNAR_OFFSET:I

    .line 748
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_NUM_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_NUM_OFFSET:I

    .line 751
    :cond_0
    sget-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1

    .line 752
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_MONTH_NUMBER:I

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_HEIGHT:I

    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TOP_PADDING_MONTH_NUMBER:I

    .line 754
    :cond_1
    sput-boolean v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mInitialized:Z

    .line 756
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DEFAULT_EDGE_SPACING:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    .line 757
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadColors(Landroid/content/Context;)V

    .line 759
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 760
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 761
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 762
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 763
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 765
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 766
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    .line 767
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 768
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 769
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 770
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 771
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 772
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 773
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    .line 774
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 775
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 776
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 777
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 779
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 780
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    .line 781
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 782
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 783
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 784
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 785
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 786
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayNumsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 787
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumAscentHeight:I

    .line 788
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 789
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumHeight:I

    .line 790
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    .line 791
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 792
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 793
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 794
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 795
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    .line 796
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 797
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFramedEventPaint:Landroid/text/TextPaint;

    .line 798
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    .line 799
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 800
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 801
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 802
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDeclinedEventColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 803
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventAscentHeight:I

    .line 804
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventHeight:I

    .line 805
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    .line 806
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 807
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 808
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 809
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 810
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventExtraColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 811
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 812
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 813
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    .line 814
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasHeight:I

    .line 815
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasAscentHeight:I

    .line 816
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mExtrasDescent:I

    .line 818
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    .line 819
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 820
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 821
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 822
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 823
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDeclinedExtrasColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 824
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 825
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 827
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 828
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 829
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 830
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 831
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 832
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 833
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 835
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekNumAscentHeight:I

    .line 837
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    .line 838
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    .line 839
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventDatecolor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 840
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 841
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 842
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 843
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventDatecolor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 844
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 845
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 846
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 848
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventSquarePaint:Landroid/graphics/Paint;

    .line 849
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventSquarePaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 850
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 851
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    .line 852
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthLunarDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 854
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    .line 855
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurrentMonthSolarDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 857
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaint:Landroid/graphics/Paint;

    .line 858
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTHVIEW_LUNARTEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 860
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 862
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkPaint:Landroid/graphics/Paint;

    .line 863
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTHVIEW_LUNARTEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 864
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 866
    return-void
.end method

.method public isNowDayWeekView()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->isNowDayWeekView:Z

    return v0
.end method

.method protected loadColors(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 586
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHoliday:Ljava/lang/String;

    .line 587
    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNewYear:Ljava/lang/String;

    .line 588
    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNewYearEve:Ljava/lang/String;

    .line 589
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthWeekNumColor:I

    .line 590
    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumColor:I

    .line 591
    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumOtherColor:I

    .line 593
    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayColor:I

    .line 594
    const v1, 0x7f0d017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekDayOtherColor:I

    .line 595
    const v1, 0x7f0d017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekTodayColor:I

    .line 597
    const v1, 0x7f0d011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumTodayColor:I

    .line 598
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumColor:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNameColor:I

    .line 599
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNumOtherColor:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthNameOtherColor:I

    .line 600
    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventColor:I

    .line 601
    const v1, 0x7f0d00a9

    .line 602
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDeclinedEventColor:I

    .line 603
    const v1, 0x7f0d00ab

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDeclinedExtrasColor:I

    .line 605
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventExtraColor:I

    .line 606
    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventOtherColor:I

    .line 607
    const v1, 0x7f0d0113

    .line 608
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventExtraOtherColor:I

    .line 609
    const v1, 0x7f0d011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthBGTodayColor:I

    .line 610
    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthBGOtherColor:I

    .line 611
    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthBGColor:I

    .line 612
    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDaySeparatorInnerColor:I

    .line 613
    const v1, 0x7f0d0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mDaySeparatorWhiteColor:I

    .line 614
    const v1, 0x7f0d0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimateColor:I

    .line 615
    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayColor:I

    .line 617
    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDateColor:I

    .line 621
    const v1, 0x7f09000d

    .line 622
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    .line 623
    const v1, 0x7f090015

    .line 624
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 625
    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MONTH_CIRCEL_RADIUS:F

    .line 626
    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->DEFAULT_HEIGHT:F

    .line 627
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->MIN_HEIGHT:I

    .line 630
    const v1, 0x7f090267

    .line 631
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->WHITE_SEPARATOR_SIZE:I

    .line 633
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORTOFFSET:I

    .line 634
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->BOUND:I

    .line 635
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_LUNAR_OFFSET:I

    .line 636
    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->PORT_NUM_OFFSET:I

    .line 643
    const v1, 0x7f0d003a

    .line 644
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurMonthSolarDateTextColor:I

    .line 645
    const v1, 0x7f0d006d

    .line 646
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOtherMonthSolarDateTextColor:I

    .line 647
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodaySolarDateTextColor:I

    .line 650
    const v1, 0x7f0d010c

    .line 651
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthclickDateTextColor:I

    .line 652
    const v1, 0x7f0d004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthEventDatecolor:I

    .line 653
    const v1, 0x7f0900b4

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthSolarDateTextSize:F

    .line 655
    const v1, 0x7f0900b2

    .line 656
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDateTextSize:F

    .line 658
    const v1, 0x7f090011

    .line 659
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodaySolarDateTextSize:F

    .line 661
    const v1, 0x7f09018c

    .line 662
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthSolarDateMarginBottom:I

    .line 664
    const v1, 0x7f0d00dd

    .line 665
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCurMonthLunarDateTextColor:I

    .line 666
    const v1, 0x7f0d006c

    .line 667
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOtherMonthLunarDateTextColor:I

    .line 668
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthTodayLunarDateTextColor:I

    .line 671
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventBgColor:I

    .line 673
    const v1, 0x7f0900a8

    .line 674
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaddingTop:I

    .line 675
    const v1, 0x7f0900a7

    .line 676
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextPaddingRight:I

    .line 677
    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextSize:F

    .line 678
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayTextColor:I

    .line 680
    const v1, 0x7f0c0152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHolidayText:Ljava/lang/String;

    .line 682
    const v1, 0x7f0d017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkTextColor:I

    .line 683
    const v1, 0x7f0c0240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekendOnWorkText:Ljava/lang/String;

    .line 685
    const v1, 0x7f09002b

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDateBottomMargin:I

    .line 687
    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLunarLaber:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public loadLunarAndHolidayControl()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 470
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    .line 476
    :goto_0
    const-string v1, "is_lunar_visible"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCountry:Ljava/lang/String;

    .line 479
    invoke-virtual {v1, v4}, Lcn/nubia/calendar/util/MonthUtil;->isChineseHolidayVisible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    .line 480
    const-string v1, "is_holiday_visible"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCountry:Ljava/lang/String;

    .line 483
    invoke-virtual {v1, v4}, Lcn/nubia/calendar/util/MonthUtil;->isChineseHolidayVisible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    .line 484
    const-string v1, "is_western_holiday_visible"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mCountry:Ljava/lang/String;

    .line 487
    invoke-virtual {v1, v4}, Lcn/nubia/calendar/util/MonthUtil;->isChineseHolidayVisible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    .line 489
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-eqz v1, :cond_4

    .line 491
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->All:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    .line 514
    :goto_4
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    const-string v4, "custom_calendar"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 479
    goto :goto_1

    :cond_2
    move v1, v3

    .line 483
    goto :goto_2

    :cond_3
    move v2, v3

    .line 487
    goto :goto_3

    .line 492
    :cond_4
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-nez v1, :cond_5

    .line 494
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4

    .line 495
    :cond_5
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-eqz v1, :cond_6

    .line 497
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->WesternAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4

    .line 498
    :cond_6
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-eqz v1, :cond_7

    .line 500
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndWestern:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4

    .line 501
    :cond_7
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-eqz v1, :cond_8

    .line 503
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Western:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4

    .line 504
    :cond_8
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-nez v1, :cond_9

    .line 506
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Chinese:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4

    .line 507
    :cond_9
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsLunarVisible:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsChineseHolidayVisible:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWesternHolidayVisible:Z

    if-nez v1, :cond_a

    .line 509
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Lunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4

    .line 511
    :cond_a
    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->None:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->initCountVar()V

    .line 1196
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawClick(Landroid/graphics/Canvas;)V

    .line 1197
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 1198
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawChineseWeekNums(Landroid/graphics/Canvas;)V

    .line 1199
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->drawToday(Landroid/graphics/Canvas;)V

    .line 1202
    :cond_0
    sget-boolean v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowDetailsInMonth:Z

    if-eqz v0, :cond_1

    .line 1211
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->rememberOtherMonthDay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1212
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1875
    .local v3, "context":Landroid/content/Context;
    const-string v2, "accessibility"

    .line 1876
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    .line 1877
    .local v10, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1878
    :cond_0
    invoke-super/range {p0 .. p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1917
    :goto_0
    return v2

    .line 1880
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    .line 1881
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v16

    .line 1882
    .local v16, "hover":Landroid/text/format/Time;
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLastHoverTime:Landroid/text/format/Time;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 1883
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 1885
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 1886
    .local v17, "millis":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1887
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x10

    .line 1886
    invoke-virtual/range {v2 .. v8}, Lcn/nubia/calendar/util/MonthUtil;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 1888
    .local v11, "date":Ljava/lang/String;
    const/16 v2, 0x40

    .line 1889
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v9

    .line 1890
    .local v9, "accessEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1891
    sget-boolean v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowDetailsInMonth:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1892
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int v13, v2, v4

    .line 1893
    .local v13, "dayStart":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v4, v13

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    sub-int/2addr v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v12, v2

    .line 1895
    .local v12, "dayPosition":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1896
    .local v15, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v18

    .line 1897
    .local v18, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/nubia/calendar/model/Event;

    .line 1898
    .local v14, "e":Lcn/nubia/calendar/model/Event;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcn/nubia/calendar/model/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    const/16 v8, 0x14

    .line 1901
    .local v8, "flags":I
    iget-boolean v2, v14, Lcn/nubia/calendar/model/Event;->allDay:Z

    if-nez v2, :cond_4

    .line 1902
    or-int/lit8 v8, v8, 0x1

    .line 1903
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1904
    or-int/lit16 v8, v8, 0x80

    .line 1909
    :cond_3
    :goto_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-wide v4, v14, Lcn/nubia/calendar/model/Event;->startMillis:J

    iget-wide v6, v14, Lcn/nubia/calendar/model/Event;->endMillis:J

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/calendar/util/MonthUtil;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1907
    :cond_4
    or-int/lit16 v8, v8, 0x2000

    goto :goto_2

    .line 1913
    .end local v8    # "flags":I
    .end local v12    # "dayPosition":I
    .end local v13    # "dayStart":I
    .end local v14    # "e":Lcn/nubia/calendar/model/Event;
    .end local v15    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    .end local v18    # "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1914
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 1917
    .end local v9    # "accessEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v11    # "date":Ljava/lang/String;
    .end local v16    # "hover":Landroid/text/format/Time;
    .end local v17    # "millis":Ljava/lang/Long;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 1086
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateTodayAlpha:I

    .line 1087
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 1088
    return-void
.end method

.method public setClickedDay(FLandroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    .locals 1
    .param p1, "xLocation"    # F
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "viewContainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .prologue
    .line 1922
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayIndexFromLocation(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 1923
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickedDayByIndex(ILandroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 1925
    return-void
.end method

.method public setClickedDayByTime(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "viewcontainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .prologue
    .line 1970
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1971
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstDayOfWeek:I

    .line 1972
    :cond_0
    const-string v2, "%d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstDayOfWeek:I

    .line 1973
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1972
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, "timeString":Ljava/lang/String;
    iget v2, p1, Landroid/text/format/Time;->weekDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstDayOfWeek:I

    sub-int v0, v2, v3

    .line 1975
    .local v0, "index":I
    if-eqz v0, :cond_1

    .line 1976
    if-gez v0, :cond_1

    .line 1977
    add-int/lit8 v0, v0, 0x7

    .line 1981
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickedDayByIndex(ILandroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 1982
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "sortedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;>;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    .line 573
    if-nez p1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    if-eq v0, v1, :cond_0

    .line 577
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events size must be same as days displayed: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEvents:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvents(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "sortedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;>;"
    .local p2, "unsortedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setEvents(Ljava/util/List;)V

    .line 524
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->createDna(Ljava/util/ArrayList;)V

    .line 525
    return-void
.end method

.method public setNowDayWeekView(Z)V
    .locals 0
    .param p1, "isNowDayWeekView"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->isNowDayWeekView:Z

    .line 360
    return-void
.end method

.method public setShowAllMonth()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mShowAllMonth:Z

    .line 373
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 18
    .param p2, "tz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-super/range {p0 .. p2}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 882
    const-string v12, "week"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeek:I

    .line 883
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeek:I

    invoke-virtual {v12, v13}, Lcn/nubia/calendar/util/MonthUtil;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v7

    .line 884
    .local v7, "julianMonday":I
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 885
    .local v9, "time":Landroid/text/format/Time;
    invoke-virtual {v9, v7}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 886
    const-string v12, "week_start"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 887
    .local v11, "weekstart":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 888
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekStart:I

    .line 893
    :cond_0
    iget v12, v9, Landroid/text/format/Time;->weekDay:I

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekStart:I

    if-eq v12, v13, :cond_2

    .line 894
    iget v12, v9, Landroid/text/format/Time;->weekDay:I

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekStart:I

    sub-int v4, v12, v13

    .line 895
    .local v4, "diff":I
    if-gez v4, :cond_1

    .line 896
    add-int/lit8 v4, v4, 0x7

    .line 898
    :cond_1
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v12, v4

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 899
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 901
    .end local v4    # "diff":I
    :cond_2
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    iget-wide v14, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v12, v13, v14, v15}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstMonthWeekStar:J

    .line 903
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->All:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_6

    .line 904
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    .line 905
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    .line 906
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 907
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 908
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 909
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 911
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getAll()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 912
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 913
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 914
    iget v12, v9, Landroid/text/format/Time;->month:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmMonthViewCurrentMonth()I

    move-result v13

    if-ne v12, v13, :cond_5

    .line 915
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->isWorkDayORHoliday(Landroid/text/format/Time;)I

    move-result v10

    .line 916
    .local v10, "tmp":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    const/4 v12, 0x1

    if-ne v12, v10, :cond_3

    const/4 v12, 0x1

    :goto_1
    aput-boolean v12, v13, v5

    .line 917
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    if-nez v10, :cond_4

    const/4 v12, 0x1

    :goto_2
    aput-boolean v12, v13, v5

    move v5, v6

    .line 922
    .end local v6    # "i":I
    .end local v10    # "tmp":I
    .restart local v5    # "i":I
    :goto_3
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 923
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0

    .line 916
    .restart local v10    # "tmp":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 917
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 919
    .end local v6    # "i":I
    .end local v10    # "tmp":I
    .restart local v5    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v5

    .line 920
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    const/4 v13, 0x0

    aput-boolean v13, v12, v5

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 925
    .end local v5    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndWestern:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_7

    .line 926
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    .line 927
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 928
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    .line 929
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 930
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 932
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 935
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 936
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseAndWesternHoliday()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 937
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 938
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 939
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->isWeekendOnWork()Z

    move-result v13

    aput-boolean v13, v12, v5

    .line 940
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->isOfficalHoliday()Z

    move-result v13

    aput-boolean v13, v12, v5

    .line 941
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 942
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .line 944
    .end local v5    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->WesternAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_8

    .line 945
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 946
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 947
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 949
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 951
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 952
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 953
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 954
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getWesternHolidayAndLunar()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 955
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 956
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_5

    .line 958
    .end local v5    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_c

    .line 959
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    .line 961
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 962
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    .line 963
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 964
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 965
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 967
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 968
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseHolidayAndLunar()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 970
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 971
    iget v12, v9, Landroid/text/format/Time;->month:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmMonthViewCurrentMonth()I

    move-result v13

    if-ne v12, v13, :cond_b

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 973
    .local v2, "begin":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->isWorkDayORHoliday(Landroid/text/format/Time;)I

    move-result v10

    .line 974
    .restart local v10    # "tmp":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    const/4 v12, 0x1

    if-ne v12, v10, :cond_9

    const/4 v12, 0x1

    :goto_7
    aput-boolean v12, v13, v5

    .line 975
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    if-nez v10, :cond_a

    const/4 v12, 0x1

    :goto_8
    aput-boolean v12, v13, v5

    move v5, v6

    .line 980
    .end local v2    # "begin":J
    .end local v6    # "i":I
    .end local v10    # "tmp":I
    .restart local v5    # "i":I
    :goto_9
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 981
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_6

    .line 974
    .restart local v2    # "begin":J
    .restart local v10    # "tmp":I
    :cond_9
    const/4 v12, 0x0

    goto :goto_7

    .line 975
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_a
    const/4 v12, 0x0

    goto :goto_8

    .line 977
    .end local v2    # "begin":J
    .end local v6    # "i":I
    .end local v10    # "tmp":I
    .restart local v5    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v5

    .line 978
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    const/4 v13, 0x0

    aput-boolean v13, v12, v5

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_9

    .line 983
    .end local v5    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Lunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_d

    .line 984
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 985
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 986
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 990
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 991
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunar()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 992
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 993
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_a

    .line 995
    .end local v5    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Chinese:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_e

    .line 996
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    .line 997
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 998
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    .line 999
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 1000
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseHoliday()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 1004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 1005
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 1006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->isWeekendOnWork()Z

    move-result v13

    aput-boolean v13, v12, v5

    .line 1007
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->isOfficalHoliday()Z

    move-result v13

    aput-boolean v13, v12, v5

    .line 1008
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 1009
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_b

    .line 1011
    .end local v5    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Western:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_f

    .line 1012
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 1013
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 1014
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v12}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 1018
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 1019
    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 1020
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v13}, Lcn/nubia/calendar/util/ChineseCalendar;->getWesternHoliday()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 1021
    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroid/text/format/Time;->monthDay:I

    .line 1022
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->normalize(Z)J

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_c

    .line 1024
    .end local v5    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mVisibleState:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v13, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->None:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    if-ne v12, v13, :cond_10

    .line 1025
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    .line 1026
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    .line 1027
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    .line 1028
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    .line 1029
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    if-ge v5, v12, :cond_10

    .line 1030
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthDayDisplay:[Ljava/lang/String;

    const-string v13, ""

    aput-object v13, v12, v5

    .line 1031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthLunarDayFullName:[Ljava/lang/String;

    const-string v13, ""

    aput-object v13, v12, v5

    .line 1032
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsOfficalHoliday:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v5

    .line 1033
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mIsWeekendOnWork:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v5

    .line 1029
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1038
    .end local v5    # "i":I
    :cond_10
    const-string v12, "orientation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1039
    .local v8, "orientation":Ljava/lang/Integer;
    if-eqz v8, :cond_11

    .line 1040
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mOrientation:I

    .line 1043
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->updateToday(Ljava/lang/String;)Z

    .line 1044
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumCells:I

    .line 1045
    const-string v12, "animate_today"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    if-eqz v12, :cond_13

    .line 1046
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    monitor-enter v13

    .line 1047
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v12, :cond_12

    .line 1048
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1049
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1051
    :cond_12
    const-string v12, "animateTodayAlpha"

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateTodayAlpha:I

    move/from16 v16, v0

    const/16 v17, 0x50

    .line 1052
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0xff

    aput v16, v14, v15

    .line 1051
    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 1054
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x96

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12, v14}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimatorListener:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;

    invoke-virtual {v12, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1058
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mAnimateToday:Z

    .line 1059
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->start()V

    .line 1060
    monitor-exit v13

    .line 1062
    :cond_13
    return-void

    .line 1060
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method public setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 0
    .param p1, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 237
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 238
    return-void
.end method

.method public setmEventStartDayLists(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, "mEventStartDayLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mEventStartDayLists:Ljava/util/HashMap;

    .line 1374
    return-void
.end method

.method public setmMonthViewCurrentMonth(I)V
    .locals 1
    .param p1, "mMonthViewCurrentMonth"    # I

    .prologue
    .line 367
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mMonthViewCurrentMonth:I

    .line 368
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadColors(Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 1816
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_1

    .line 1817
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWeekStart:I

    sub-int v1, v2, v3

    .line 1818
    .local v1, "selectedPosition":I
    if-gez v1, :cond_0

    .line 1819
    add-int/lit8 v1, v1, 0x7

    .line 1821
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mWidth:I

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1822
    .local v0, "effectiveWidth":I
    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v2

    .line 1823
    mul-int v2, v1, v0

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedLeft:I

    .line 1825
    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v0

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedRight:I

    .line 1827
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedLeft:I

    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedLeft:I

    .line 1828
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedRight:I

    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mSelectedRight:I

    .line 1830
    .end local v0    # "effectiveWidth":I
    .end local v1    # "selectedPosition":I
    :cond_1
    return-void
.end method

.method public updateToday(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1068
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    iput-object p1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1069
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1070
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1071
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mToday:Landroid/text/format/Time;

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1073
    .local v0, "julianToday":I
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1075
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    .line 1076
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->isNowDayWeekView:Z

    .line 1077
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mFirstJulianDay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    .line 1082
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    return v1

    .line 1079
    :cond_0
    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mHasToday:Z

    .line 1080
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mTodayIndex:I

    goto :goto_0
.end method
