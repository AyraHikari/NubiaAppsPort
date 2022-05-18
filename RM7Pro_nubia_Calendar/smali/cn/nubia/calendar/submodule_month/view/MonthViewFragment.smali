.class public Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
.super Landroid/app/Fragment;
.source "MonthViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;"
    }
.end annotation


# static fields
.field public static final ACTION_EVENTS_RELOAD:Ljava/lang/String; = "ACTION_EVENTS_RELOAD"

.field public static final ARG_PAGE:Ljava/lang/String; = "page"

.field private static final DEBUG:Z = false

.field protected static DEFAULT_DAYS_PER_WEEK:I = 0x0

.field protected static DEFAULT_MONTH_FOCUS:I = 0x0

.field private static final INSTANCES_SORT_ORDER:Ljava/lang/String; = "startDay,startMinute,title"

.field private static final LOADER_THROTTLE_DELAY:I = 0x1f4

.field public static MAX_MONTH:I = 0x0

.field public static MAX_YEAR:I = 0x0

.field private static final MIN_YEAR:I = 0x7b2

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static final WEEKS_BUFFER:I = 0x1

.field private static final WHERE_CALENDARS_VISIBLE:Ljava/lang/String; = "visible=1"

.field private static mHorizontalSnapBackThreshold:I = 0x0

.field public static mMonthViewCurMonth:I = 0x0

.field private static mMovedPixelToCancel:F = 0.0f

.field public static mNumWeeks:I = 0x0

.field private static mOnDownDelay:I = 0x0

.field private static final mOnTapDelay:I = 0x64

.field protected static mShowDetailsInMonth:Z

.field private static mTotalClickDelay:I


# instance fields
.field private actionbar:Landroid/app/ActionBar;

.field private clickTime:Landroid/text/format/Time;

.field private handler:Landroid/os/Handler;

.field public julianWeek:I

.field private mActivityContainer:Lcn/nubia/calendar/HomeActivity;

.field private mCalendar:Ljava/util/Calendar;

.field mClickTime:J

.field mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field mClickedXLocation:F

.field private mContext:Landroid/content/Context;

.field private mCurrentMonthViewItem:I

.field protected mDaysPerWeek:I

.field private final mDoClick:Ljava/lang/Runnable;

.field private final mDoSingleTapUp:Ljava/lang/Runnable;

.field protected mEventDayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private mEventUri:Landroid/net/Uri;

.field protected mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstDayOfWeek:I

.field protected mFirstJulianDay:I

.field protected mFirstLoadedJulianDay:I

.field protected mFocusMonth:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHasEventDays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:F

.field protected mHideDeclined:Z

.field protected mHomeTimeZone:Ljava/lang/String;

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field protected mLastLoadedJulianDay:I

.field private mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

.field private mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

.field private mLoader:Landroid/content/CursorLoader;

.field private mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field public mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

.field private mMonthViewCurrentMonth:I

.field protected mOrientation:I

.field private mPageNumber:I

.field private mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

.field private mPreviousDirection:I

.field protected mQueryDays:I

.field private mScrolling:Z

.field protected mSelectedWeek:I

.field private volatile mShouldLoad:Z

.field protected mShowWeekNumber:Z

.field mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private mStartingScroll:Z

.field protected mTempTime:Landroid/text/format/Time;

.field private final mTimezoneUpdater:Ljava/lang/Runnable;

.field protected mToday:Landroid/text/format/Time;

.field private mTouchMode:I

.field private final mUpdateLoader:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewStartX:I

.field private mViewStartY:I

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mmTempTime:Landroid/text/format/Time;

.field private monthviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_month/view/MonthWeekView;",
            ">;"
        }
    .end annotation
.end field

.field private mw:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private mw1:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private mw2:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private mw3:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private mw4:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private mw5:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private position:I

.field public start:Landroid/text/format/Time;

.field public sum:I

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x7

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->DEFAULT_DAYS_PER_WEEK:I

    .line 104
    const/4 v0, 0x6

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    .line 115
    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->DEFAULT_MONTH_FOCUS:I

    .line 122
    const/16 v0, 0x7f5

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->MAX_YEAR:I

    .line 123
    const/16 v0, 0xc

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->MAX_MONTH:I

    .line 557
    const/16 v0, 0x80

    sput v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHorizontalSnapBackThreshold:I

    .line 838
    sput-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShowDetailsInMonth:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 82
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 92
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mCurrentMonthViewItem:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    .line 113
    sget v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->DEFAULT_DAYS_PER_WEEK:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDaysPerWeek:I

    .line 114
    sget v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->DEFAULT_MONTH_FOCUS:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFocusMonth:I

    .line 127
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    .line 130
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 152
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$1;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 179
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShowWeekNumber:Z

    .line 180
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mOrientation:I

    .line 406
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mStartingScroll:Z

    .line 408
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->handler:Landroid/os/Handler;

    .line 480
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    .line 530
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoSingleTapUp:Ljava/lang/Runnable;

    .line 827
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sum:I

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShouldLoad:Z

    .line 901
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mUpdateLoader:Ljava/lang/Runnable;

    .line 985
    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHasEventDays:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;
    .param p3, "pageNum"    # I
    .param p4, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p5, "parentLayout"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 82
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 92
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mCurrentMonthViewItem:I

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    .line 113
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->DEFAULT_DAYS_PER_WEEK:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDaysPerWeek:I

    .line 114
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->DEFAULT_MONTH_FOCUS:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFocusMonth:I

    .line 127
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    .line 130
    new-instance v1, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v1}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 152
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$1;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 179
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShowWeekNumber:Z

    .line 180
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mOrientation:I

    .line 406
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mStartingScroll:Z

    .line 408
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->handler:Landroid/os/Handler;

    .line 480
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    .line 530
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoSingleTapUp:Ljava/lang/Runnable;

    .line 827
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sum:I

    .line 831
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShouldLoad:Z

    .line 901
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mUpdateLoader:Ljava/lang/Runnable;

    .line 985
    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    .line 987
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    .line 1064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHasEventDays:Ljava/util/ArrayList;

    .line 165
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 167
    iput p3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mPageNumber:I

    .line 168
    iput-object p4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 169
    iput-object p5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 170
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 171
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mOnDownDelay:I

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMovedPixelToCancel:F

    .line 173
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mOnDownDelay:I

    add-int/lit8 v1, v1, 0x64

    sput v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTotalClickDelay:I

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShouldLoad:Z

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/content/CursorLoader;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->stopLoader()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1702(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->updateUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p2, "x2"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->initClickTime(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->clickTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private clearClickedView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V
    .locals 2
    .param p1, "v"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .prologue
    .line 626
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 627
    monitor-enter p1

    .line 628
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->clearClickedDay()V

    .line 629
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 631
    return-void

    .line 629
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private clearPrevClickedView()V
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 644
    :cond_0
    return-void

    .line 638
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 639
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 640
    .local v0, "view":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    monitor-enter v0

    .line 641
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->clearClickedDay()V

    .line 642
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 778
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 779
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    .line 780
    return-void
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 751
    const-string v1, "Calendar"

    const-string v2, "doFling: 998 lines"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 754
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 755
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 756
    .local v0, "deltaX":I
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    .line 772
    .end local v0    # "deltaX":I
    :goto_0
    return-void

    .line 760
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    .line 761
    const-string v1, "Calendar"

    const-string v2, "doFling: no fling"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_1
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 767
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    .line 769
    const-string v1, "Calendar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling: mViewStartY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " velocityY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    goto :goto_0
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 740
    const-string v0, "Calendar"

    const-string v1, "doLongPress"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    if-eqz v0, :cond_0

    .line 742
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 897 lines doLongPress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->invalidateMonthView()V

    goto :goto_0
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 687
    iget-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mStartingScroll:Z

    if-eqz v8, :cond_0

    .line 688
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollX:F

    .line 689
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollY:F

    .line 690
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mStartingScroll:Z

    .line 693
    :cond_0
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollX:F

    add-float/2addr v8, p3

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollX:F

    .line 694
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollY:F

    add-float/2addr v8, p4

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollY:F

    .line 695
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollX:F

    float-to-int v3, v8

    .line 696
    .local v3, "distanceX":I
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mInitialScrollY:F

    float-to-int v4, v8

    .line 699
    .local v4, "distanceY":I
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 700
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 701
    .local v0, "absDistanceX":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 703
    .local v1, "absDistanceY":I
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mPreviousDirection:I

    .line 707
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 708
    .local v6, "time":Landroid/text/format/Time;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v8}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 709
    iget v7, v6, Landroid/text/format/Time;->year:I

    .line 710
    .local v7, "year":I
    iget v8, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v8, 0x1

    .line 711
    .local v5, "month":I
    if-le v0, v1, :cond_3

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->year:I

    const/16 v9, 0x7b2

    if-lt v8, v9, :cond_3

    .line 714
    if-ltz v3, :cond_1

    sget v8, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->MAX_YEAR:I

    if-ne v7, v8, :cond_1

    sget v8, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->MAX_MONTH:I

    if-eq v5, v8, :cond_2

    .line 715
    :cond_1
    const/16 v8, 0x40

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 716
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    .line 736
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    .end local v5    # "month":I
    .end local v6    # "time":Landroid/text/format/Time;
    .end local v7    # "year":I
    :cond_2
    :goto_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    .line 737
    return-void

    .line 720
    .restart local v0    # "absDistanceX":I
    .restart local v1    # "absDistanceY":I
    .restart local v5    # "month":I
    .restart local v6    # "time":Landroid/text/format/Time;
    .restart local v7    # "year":I
    :cond_3
    const/16 v8, 0x20

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    goto :goto_0

    .line 722
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    .end local v5    # "month":I
    .end local v6    # "time":Landroid/text/format/Time;
    .end local v7    # "year":I
    :cond_4
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2

    .line 725
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    .line 726
    if-eqz v3, :cond_2

    .line 727
    if-lez v3, :cond_5

    const/4 v2, 0x1

    .line 728
    .local v2, "direction":I
    :goto_1
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mPreviousDirection:I

    if-eq v2, v8, :cond_2

    .line 732
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mPreviousDirection:I

    goto :goto_0

    .line 727
    .end local v2    # "direction":I
    :cond_5
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 682
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    return-void
.end method

.method private initClickTime(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;
    .locals 3
    .param p1, "mClickedView"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p2, "mClickedXLocation"    # F

    .prologue
    .line 430
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 433
    invoke-virtual {p1, p2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayIndexFromLocation(F)I

    move-result v0

    .line 440
    .local v0, "mClickedDayIndex":I
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getFirstJulianDay()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 441
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 442
    return-object v1
.end method

.method private initViews(Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;)V
    .locals 3
    .param p1, "myLinearLayout"    # Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .prologue
    .line 285
    const v1, 0x7f1101b2

    invoke-virtual {p1, v1}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 286
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const v1, 0x7f1101b3

    invoke-virtual {p1, v1}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw1:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 288
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw1:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const v1, 0x7f1101b4

    invoke-virtual {p1, v1}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw2:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 290
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw2:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const v1, 0x7f1101b5

    invoke-virtual {p1, v1}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw3:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 292
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw3:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const v1, 0x7f1101b6

    invoke-virtual {p1, v1}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw4:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 294
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw4:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const v1, 0x7f1101b7

    invoke-virtual {p1, v1}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw5:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 296
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mw5:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 298
    .local v0, "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickable(Z)V

    .line 299
    invoke-virtual {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    goto :goto_0

    .line 302
    .end local v0    # "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    :cond_0
    return-void
.end method

.method private sendEventsToView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V
    .locals 5
    .param p1, "v"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .prologue
    const/4 v4, 0x0

    .line 845
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 846
    invoke-virtual {p1, v4, v4}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 857
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getFirstJulianDay()I

    move-result v2

    .line 850
    .local v2, "viewJulianDay":I
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 851
    .local v1, "start":I
    iget v3, p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mNumDays:I

    add-int v0, v1, v3

    .line 852
    .local v0, "end":I
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 853
    :cond_1
    invoke-virtual {p1, v4, v4}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setEventsToViews(Ljava/util/HashMap;)V
    .locals 3
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
    .line 305
    .local p1, "mEventStartDayLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 309
    .local v0, "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setmEventStartDayLists(Ljava/util/HashMap;)V

    .line 310
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    goto :goto_0
.end method

.method private stopLoader()V
    .locals 2

    .prologue
    .line 884
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 888
    :cond_0
    monitor-exit v1

    .line 889
    return-void

    .line 888
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLoadedDays()V
    .locals 8

    .prologue
    .line 970
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 971
    .local v4, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 972
    .local v5, "size":I
    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    add-int/lit8 v6, v5, -0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 976
    .local v0, "first":J
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 977
    .local v2, "last":J
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    if-eqz v6, :cond_0

    .line 978
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 979
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    .line 980
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 981
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    goto :goto_0
.end method

.method private updateTimeZones()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1043
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1044
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mToday:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1045
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1046
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method private updateUri()Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 860
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 861
    .local v1, "temp":Landroid/text/format/Time;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 862
    iput v10, v1, Landroid/text/format/Time;->monthDay:I

    .line 863
    const/4 v6, 0x0

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 864
    invoke-virtual {v1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 865
    invoke-virtual {v8}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v8

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    .line 864
    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    .line 866
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    add-int/lit8 v6, v6, -0x7

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    .line 867
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 868
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 869
    .local v4, "start":J
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    sget v7, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x7

    add-int/2addr v6, v7

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    .line 871
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    add-int/lit8 v6, v6, 0xf

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    .line 872
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 873
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 874
    .local v2, "end":J
    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 875
    const-wide v2, 0x7fffffffffffffffL

    .line 877
    :cond_0
    sget-object v6, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 878
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 879
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 880
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public agendRefresh()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .line 394
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 395
    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 396
    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 397
    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    .line 394
    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->queryEventsMonth(IIILcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;)V

    .line 399
    return-void
.end method

.method public calcNewTimeByPageNum(Landroid/text/format/Time;Landroid/content/Context;I)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 1051
    const/16 v1, 0x7b2

    iput v1, p1, Landroid/text/format/Time;->year:I

    .line 1052
    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1053
    iput p3, p1, Landroid/text/format/Time;->month:I

    .line 1054
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1056
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/util/MonthUtil;->getDaysOfCurrentMonth(Landroid/text/format/Time;)I

    move-result v0

    .line 1057
    .local v0, "endDay":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    iput v1, p1, Landroid/text/format/Time;->monthDay:I

    .line 1058
    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    if-le v1, v0, :cond_0

    .line 1059
    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    .line 1061
    :cond_0
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1062
    return-void
.end method

.method public getClickTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->clickTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public getLineNumSlideTo()I
    .locals 4

    .prologue
    .line 319
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 321
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 322
    .local v1, "mw":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->isNowDayWeekView()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    if-nez v0, :cond_1

    .line 324
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    .line 340
    .end local v0    # "i":I
    .end local v1    # "mw":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    :cond_0
    :goto_1
    return v0

    .line 325
    .restart local v0    # "i":I
    .restart local v1    # "mw":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 326
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v3, 0x43190000    # 153.0f

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 327
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 328
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v3, 0x43990000    # 306.0f

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 329
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 330
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const v3, 0x43e58000    # 459.0f

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 331
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 332
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v3, 0x44190000    # 612.0f

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 333
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const v3, 0x443f4000    # 765.0f

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 320
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    .end local v1    # "mw":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSum()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sum:I

    return v0
.end method

.method public getmLayout()Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    return-object v0
.end method

.method public getmListView()Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method public getmMonthViewAgendaHelper()Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    return-object v0
.end method

.method public invalidateClickedMonthView()V
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const/4 v2, -0x1

    iput v2, v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    return-void
.end method

.method public invalidateMonthView()V
    .locals 2

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v0, v1, :cond_1

    .line 413
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 893
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Landroid/content/CursorLoader;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLoader:Landroid/content/CursorLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    .line 238
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->clickTime:Landroid/text/format/Time;

    .line 240
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->clickTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 241
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    .line 243
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mPageNumber:I

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->calcNewTimeByPageNum(Landroid/text/format/Time;Landroid/content/Context;I)V

    .line 245
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 248
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstDayOfWeek:I

    .line 249
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShowWeekNumber:Z

    .line 250
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    .line 252
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mToday:Landroid/text/format/Time;

    .line 253
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mOrientation:I

    .line 254
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    .line 255
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 256
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    const/4 v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 257
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 258
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    const/4 v3, 0x1

    .line 259
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstDayOfWeek:I

    .line 258
    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/util/MonthUtil;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->julianWeek:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    .line 934
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mmTempTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 935
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v7

    .line 936
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->updateUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    .line 937
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->updateWhere()Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, "where":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    sget-object v3, Lcn/nubia/calendar/model/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay,startMinute,title"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    .local v0, "loader":Landroid/content/CursorLoader;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 941
    monitor-exit v7

    .line 942
    return-object v0

    .line 941
    .end local v0    # "loader":Landroid/content/CursorLoader;
    .end local v4    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 354
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sum:I

    .line 355
    const v2, 0x7f03006b

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "rootView":Landroid/view/View;
    move-object v2, v0

    .line 356
    check-cast v2, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .line 357
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->initList()V

    .line 358
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->initViews(Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;)V

    .line 359
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->julianWeek:I

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setParams(I)V

    .line 360
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setmMonthViewCurrentMonth(I)V

    .line 361
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->start:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setMonthWeekCurrentMonth(I)V

    .line 362
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 363
    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 364
    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_0

    .line 365
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->getLineNumSlideTo()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->initLists(I)V

    .line 367
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getmChineseHoliday()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 368
    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getWeatherViewContainer()Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    move-result-object v4

    .line 367
    invoke-virtual {p0, v2, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 370
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 372
    return-object v0
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "day"    # Landroid/text/format/Time;

    .prologue
    .line 548
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 549
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, "currTime":Landroid/text/format/Time;
    iget v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, p1, Landroid/text/format/Time;->hour:I

    .line 552
    iget v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, p1, Landroid/text/format/Time;->minute:I

    .line 553
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/text/format/Time;->allDay:Z

    .line 554
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 555
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1084
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1085
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1087
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    .line 1091
    :cond_0
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    .line 1092
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 947
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v4

    .line 948
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/CursorLoader;

    move-object v1, v0

    .line 949
    .local v1, "cLoader":Landroid/content/CursorLoader;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 950
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    .line 951
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->updateLoadedDays()V

    .line 953
    :cond_0
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 954
    monitor-exit v4

    .line 962
    :goto_0
    return-void

    .line 956
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    invoke-static {v2, p2, v3, v5, v6}, Lcn/nubia/calendar/model/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 959
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLastLoadedJulianDay:I

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstLoadedJulianDay:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v3, v5, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setEvents(IILjava/util/ArrayList;)V

    .line 961
    monitor-exit v4

    goto :goto_0

    .end local v1    # "cLoader":Landroid/content/CursorLoader;
    .end local v2    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onQueryEventComplete()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .line 1072
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->getmEventStartDayLists()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventStartDayLists:Ljava/util/HashMap;

    .line 1073
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventStartDayLists:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setEventsToViews(Ljava/util/HashMap;)V

    .line 1075
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 378
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .line 383
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 384
    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 385
    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 386
    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    .line 383
    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->queryEventsMonth(IIILcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;)V

    .line 388
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 562
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 563
    .local v0, "action":I
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 564
    .local v1, "flag":Z
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 565
    check-cast p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickTime:J

    sub-long v2, v6, v8

    .line 569
    .local v2, "delay":J
    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDoSingleTapUp:Ljava/lang/Runnable;

    sget v6, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTotalClickDelay:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const-wide/16 v6, 0x0

    :goto_0
    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    .end local v2    # "delay":J
    :cond_0
    :goto_1
    return v5

    .line 569
    .restart local v2    # "delay":J
    :cond_1
    sget v6, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTotalClickDelay:I

    int-to-long v6, v6

    sub-long/2addr v6, v2

    goto :goto_0

    .line 573
    .end local v2    # "delay":J
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 615
    :cond_3
    const-string v7, "Calendar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not MotionEvent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    .line 619
    goto :goto_1

    .line 575
    :pswitch_0
    const-string v6, "Calendar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_DOWN ev.getDownTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 575
    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    check-cast p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedXLocation:F

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickTime:J

    goto :goto_1

    .line 588
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedXLocation:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMovedPixelToCancel:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move-object v4, p1

    .line 589
    check-cast v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 590
    .local v4, "mv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    check-cast p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->clearClickedView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V

    goto/16 :goto_1

    .line 594
    .end local v4    # "mv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_2
    const-string v7, "Calendar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_UP Cnt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mViewStartX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_4

    .line 597
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    .line 602
    const-string v7, "Calendar"

    const-string v8, "- horizontal scroll: switch views"

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mViewStartX:I

    goto/16 :goto_1

    .line 609
    :cond_4
    :pswitch_3
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mScrolling:Z

    .line 610
    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mTouchMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_3

    goto/16 :goto_1

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 1029
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->updateTimeZones()V

    .line 1030
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->julianWeek:I

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setParams(I)V

    .line 1032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v0, v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sendEventsToView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V

    .line 1034
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadLunarAndHolidayControl()V

    .line 1035
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_0
    return-void
.end method

.method public resetLineNumSlideto(Ljava/util/ArrayList;Landroid/text/format/Time;I)I
    .locals 10
    .param p2, "clickTime"    # Landroid/text/format/Time;
    .param p3, "clickIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_month/view/MonthWeekView;",
            ">;",
            "Landroid/text/format/Time;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "monthviewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_month/view/MonthWeekView;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 448
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 449
    .local v5, "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmDayNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "mDayNumbers":[Ljava/lang/String;
    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmMonth()[I

    move-result-object v4

    .line 451
    .local v4, "mMonth":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v6, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_1

    .line 453
    aget-object v0, v3, v2

    .line 454
    .local v0, "day":Ljava/lang/String;
    aget v7, v4, v2

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmMonthViewCurrentMonth()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 455
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 458
    .end local v0    # "day":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    .restart local v0    # "day":Ljava/lang/String;
    iget v8, p2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 464
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "mDayNumbers":[Ljava/lang/String;
    .end local v4    # "mMonth":[I
    .end local v5    # "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .end local v6    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return v1

    .line 447
    .restart local v1    # "i":I
    .restart local v2    # "k":I
    .restart local v3    # "mDayNumbers":[Ljava/lang/String;
    .restart local v4    # "mMonth":[I
    .restart local v5    # "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .restart local v6    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v2    # "k":I
    .end local v3    # "mDayNumbers":[Ljava/lang/String;
    .end local v4    # "mMonth":[I
    .end local v5    # "mwv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .end local v6    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setClickTime(Landroid/text/format/Time;)V
    .locals 0
    .param p1, "clickTime"    # Landroid/text/format/Time;

    .prologue
    .line 475
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->clickTime:Landroid/text/format/Time;

    .line 476
    return-void
.end method

.method public setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    .locals 6
    .param p1, "day"    # Landroid/text/format/Time;
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "viewcontainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .prologue
    .line 785
    iget v3, p1, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v4

    iget v4, v4, Landroid/text/format/Time;->month:I

    if-ne v3, v4, :cond_8

    .line 786
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v4, p1, Landroid/text/format/Time;->monthDay:I

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 787
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 788
    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v4

    const/4 v5, 0x0

    .line 787
    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->resetLineNumSlideto(Ljava/util/ArrayList;Landroid/text/format/Time;I)I

    move-result v2

    .line 789
    .local v2, "resetLineNum":I
    if-nez v2, :cond_1

    .line 790
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    .line 804
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    invoke-virtual {v3, v2}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->initLists(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_1
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v1, v3, :cond_7

    .line 812
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v3, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->hasTheDay(Landroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 813
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 814
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v3, p1, p2, p3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickedDayByTime(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 811
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 791
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 792
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v4, 0x43190000    # 153.0f

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_0

    .line 793
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 794
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v4, 0x43990000    # 306.0f

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_0

    .line 795
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 796
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const v4, 0x43e58000    # 459.0f

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_0

    .line 797
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 798
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v4, 0x44190000    # 612.0f

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_0

    .line 799
    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 800
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mParentLayout:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const v4, 0x443f4000    # 765.0f

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 817
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->clearClickedDay()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 820
    :catch_1
    move-exception v0

    .line 821
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->invalidateMonthView()V

    .line 825
    .end local v1    # "i":I
    .end local v2    # "resetLineNum":I
    :cond_8
    return-void
.end method

.method public setEvents(IILjava/util/ArrayList;)V
    .locals 9
    .param p1, "firstJulianDay"    # I
    .param p2, "numDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    iput-object p3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEvents:Ljava/util/ArrayList;

    .line 992
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstJulianDay:I

    .line 993
    iput p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mQueryDays:I

    .line 994
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v2, "eventDayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 996
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 998
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 999
    :cond_1
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    .line 1000
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->refresh()V

    .line 1026
    :goto_1
    return-void

    .line 1003
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/model/Event;

    .line 1004
    .local v1, "event":Lcn/nubia/calendar/model/Event;
    iget v6, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstJulianDay:I

    sub-int v5, v6, v8

    .line 1005
    .local v5, "startDay":I
    iget v6, v1, Lcn/nubia/calendar/model/Event;->endDay:I

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstJulianDay:I

    sub-int/2addr v6, v8

    add-int/lit8 v0, v6, 0x1

    .line 1006
    .local v0, "endDay":I
    if-lt v5, p2, :cond_4

    if-ltz v0, :cond_3

    .line 1007
    :cond_4
    if-gez v5, :cond_5

    .line 1008
    const/4 v5, 0x0

    .line 1010
    :cond_5
    if-gt v5, p2, :cond_3

    .line 1013
    if-ltz v0, :cond_3

    .line 1016
    if-le v0, p2, :cond_6

    .line 1017
    move v0, p2

    .line 1019
    :cond_6
    move v4, v5

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 1020
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1024
    .end local v0    # "endDay":I
    .end local v1    # "event":Lcn/nubia/calendar/model/Event;
    .end local v4    # "j":I
    .end local v5    # "startDay":I
    :cond_7
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mEventDayList:Ljava/util/ArrayList;

    .line 1025
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->refresh()V

    goto :goto_1
.end method

.method public setListViewLayout(Lcn/nubia/calendar/submodule_month/view/MyListView;)V
    .locals 0
    .param p1, "mListView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 316
    return-void
.end method

.method public setMonthWeekCurrentMonth(I)V
    .locals 3
    .param p1, "mMonthViewCurrentMonth"    # I

    .prologue
    .line 271
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v1, v2, :cond_1

    .line 278
    :cond_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setmMonthViewCurrentMonth(I)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setParams(I)V
    .locals 6
    .param p1, "argJulianWeek"    # I

    .prologue
    const/4 v4, 0x1

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 185
    const/4 v2, -0x1

    .line 186
    .local v2, "selectedDay":I
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mSelectedWeek:I

    if-ne v3, p1, :cond_0

    .line 187
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v2, v3, Landroid/text/format/Time;->weekDay:I

    .line 189
    :cond_0
    const-string v3, "selected_day"

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 189
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v5, "show_wk_num"

    iget-boolean v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShowWeekNumber:Z

    if-eqz v3, :cond_2

    move v3, v4

    .line 192
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 191
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v3, "week_start"

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFirstDayOfWeek:I

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 193
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v3, "num_days"

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mDaysPerWeek:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v3, "focus_month"

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mFocusMonth:I

    .line 197
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 196
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v3, "orientation"

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mOrientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v1, v3, :cond_3

    .line 200
    const-string v3, "week"

    add-int v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 203
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadLunarAndHolidayControl()V

    .line 204
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 205
    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v5

    iget-object v5, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v0, v5}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickable(Z)V

    .line 199
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 209
    .restart local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    :goto_2
    sget v3, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    if-ge v1, v3, :cond_5

    .line 210
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 211
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sendEventsToView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V

    .line 212
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->monthviewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 209
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 215
    :cond_5
    return-void
.end method

.method public setSum(I)V
    .locals 0
    .param p1, "sum"    # I

    .prologue
    .line 348
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->sum:I

    .line 349
    return-void
.end method

.method public setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 1078
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 1079
    return-void
.end method

.method public setmLayout(Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;)V
    .locals 0
    .param p1, "mLayout"    # Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .line 100
    return-void
.end method

.method public setmListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V
    .locals 0
    .param p1, "mListView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 89
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 90
    return-void
.end method

.method public setmMonthViewAgendaHelper(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)V
    .locals 0
    .param p1, "mMonthViewAgendaHelper"    # Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .prologue
    .line 228
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewAgendaHelper:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .line 229
    return-void
.end method

.method public setmMonthViewCurrentMonth(I)V
    .locals 0
    .param p1, "mMonthViewCurrentMonth"    # I

    .prologue
    .line 281
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewCurrentMonth:I

    .line 282
    return-void
.end method

.method protected updateWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    const-string v0, "visible=1"

    .line 923
    .local v0, "where":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mHideDeclined:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1

    .line 924
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    :cond_1
    return-object v0
.end method
