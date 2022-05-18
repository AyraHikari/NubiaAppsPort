.class public Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
.super Landroid/app/Fragment;
.source "MiniMonthViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;
    }
.end annotation


# static fields
.field public static final ACTION_EVENTS_RELOAD:Ljava/lang/String; = "ACTION_EVENTS_RELOAD"

.field public static final ARG_PAGE:Ljava/lang/String; = "page"

.field protected static DEFAULT_DAYS_PER_WEEK:I = 0x0

.field protected static DEFAULT_MONTH_FOCUS:I = 0x0

.field private static final FIRST_DAY_OF_WEEK:I = 0x4

.field public static MAX_MONTH:I = 0x0

.field public static MAX_YEAR:I = 0x0

.field private static final MIN_YEAR:I = 0x7b2

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static mHorizontalSnapBackThreshold:I = 0x0

.field public static mMonthViewCurMonth:I = 0x0

.field private static mMovedPixelToCancel:F = 0.0f

.field private static mOnDownDelay:I = 0x0

.field private static final mOnTapDelay:I = 0x64

.field private static mTotalClickDelay:I


# instance fields
.field private actionbar:Landroid/app/ActionBar;

.field private handler:Landroid/os/Handler;

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

.field protected mFirstDayOfWeek:I

.field protected mFirstJulianDay:I

.field protected mFocusMonth:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mHomeTimeZone:Ljava/lang/String;

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field protected mJulianWeek:I

.field private mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

.field private mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

.field private mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field private mMonthViewCurrentMonth:I

.field protected mOrientation:I

.field private mPageNumber:I

.field private mPreviousDirection:I

.field private mScrolling:Z

.field protected mShowWeekNumber:Z

.field mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field public mStartDay:Landroid/text/format/Time;

.field private mStartingScroll:Z

.field protected mTempTime:Landroid/text/format/Time;

.field private final mTimezoneUpdater:Ljava/lang/Runnable;

.field private mTouchMode:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewStartX:I

.field private mViewStartY:I

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

.field private position:I

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x7

    sput v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->DEFAULT_DAYS_PER_WEEK:I

    .line 108
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->DEFAULT_MONTH_FOCUS:I

    .line 115
    const/16 v0, 0x7f5

    sput v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->MAX_YEAR:I

    .line 116
    const/16 v0, 0xc

    sput v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->MAX_MONTH:I

    .line 425
    const/16 v0, 0x80

    sput v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mHorizontalSnapBackThreshold:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 59
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 74
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 84
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mCurrentMonthViewItem:I

    .line 106
    sget v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->DEFAULT_DAYS_PER_WEEK:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDaysPerWeek:I

    .line 107
    sget v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->DEFAULT_MONTH_FOCUS:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFocusMonth:I

    .line 120
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    .line 135
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 164
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mShowWeekNumber:Z

    .line 165
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mOrientation:I

    .line 329
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mStartingScroll:Z

    .line 331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->handler:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    .line 398
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoSingleTapUp:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;
    .param p3, "pageNum"    # I
    .param p4, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 59
    new-instance v1, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v1}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 74
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 84
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mCurrentMonthViewItem:I

    .line 106
    sget v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->DEFAULT_DAYS_PER_WEEK:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDaysPerWeek:I

    .line 107
    sget v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->DEFAULT_MONTH_FOCUS:I

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFocusMonth:I

    .line 120
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    .line 135
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 164
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mShowWeekNumber:Z

    .line 165
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mOrientation:I

    .line 329
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mStartingScroll:Z

    .line 331
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->handler:Landroid/os/Handler;

    .line 357
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    .line 398
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoSingleTapUp:Ljava/lang/Runnable;

    .line 148
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 150
    iput p3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mPageNumber:I

    .line 151
    iput-object p4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 152
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 153
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mOnDownDelay:I

    .line 154
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMovedPixelToCancel:F

    .line 155
    sget v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mOnDownDelay:I

    add-int/lit8 v1, v1, 0x64

    sput v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTotalClickDelay:I

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p2, "x2"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->initClickTime(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .prologue
    .line 47
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method private clearClickedView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V
    .locals 2
    .param p1, "v"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .prologue
    .line 487
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 488
    monitor-enter p1

    .line 489
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->clearClickedDay()V

    .line 490
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static create(ILandroid/app/ActionBar;Landroid/support/v4/view/ViewPager;Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;)Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    .locals 3
    .param p0, "pageNumber"    # I
    .param p1, "actionbar"    # Landroid/app/ActionBar;
    .param p2, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "listView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 126
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-direct {v1, p3, p4, p0, p2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MyListView;ILandroid/support/v4/view/ViewPager;)V

    .line 128
    .local v1, "fragment":Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "page"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 131
    return-object v1
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 619
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewStartX:I

    .line 621
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

    .line 597
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    .line 598
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 599
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 600
    .local v0, "deltaX":I
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewStartX:I

    .line 613
    .end local v0    # "deltaX":I
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 609
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 610
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewStartX:I

    .line 612
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    goto :goto_0
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 586
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    if-eqz v0, :cond_0

    .line 587
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 897 lines doLongPress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->invalidateMonthView()V

    goto :goto_0
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 533
    iget-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mStartingScroll:Z

    if-eqz v8, :cond_0

    .line 534
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollX:F

    .line 535
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollY:F

    .line 536
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mStartingScroll:Z

    .line 539
    :cond_0
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollX:F

    add-float/2addr v8, p3

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollX:F

    .line 540
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollY:F

    add-float/2addr v8, p4

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollY:F

    .line 541
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollX:F

    float-to-int v3, v8

    .line 542
    .local v3, "distanceX":I
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mInitialScrollY:F

    float-to-int v4, v8

    .line 545
    .local v4, "distanceY":I
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 546
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 547
    .local v0, "absDistanceX":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 549
    .local v1, "absDistanceY":I
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mPreviousDirection:I

    .line 553
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 554
    .local v6, "time":Landroid/text/format/Time;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v8}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 555
    iget v7, v6, Landroid/text/format/Time;->year:I

    .line 556
    .local v7, "year":I
    iget v8, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v8, 0x1

    .line 557
    .local v5, "month":I
    if-le v0, v1, :cond_3

    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->year:I

    const/16 v9, 0x7b2

    if-lt v8, v9, :cond_3

    .line 560
    if-ltz v3, :cond_1

    sget v8, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->MAX_YEAR:I

    if-ne v7, v8, :cond_1

    sget v8, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->MAX_MONTH:I

    if-eq v5, v8, :cond_2

    .line 561
    :cond_1
    const/16 v8, 0x40

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 562
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewStartX:I

    .line 582
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    .end local v5    # "month":I
    .end local v6    # "time":Landroid/text/format/Time;
    .end local v7    # "year":I
    :cond_2
    :goto_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    .line 583
    return-void

    .line 566
    .restart local v0    # "absDistanceX":I
    .restart local v1    # "absDistanceY":I
    .restart local v5    # "month":I
    .restart local v6    # "time":Landroid/text/format/Time;
    .restart local v7    # "year":I
    :cond_3
    const/16 v8, 0x20

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    goto :goto_0

    .line 568
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    .end local v5    # "month":I
    .end local v6    # "time":Landroid/text/format/Time;
    .end local v7    # "year":I
    :cond_4
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2

    .line 571
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewStartX:I

    .line 572
    if-eqz v3, :cond_2

    .line 573
    if-lez v3, :cond_5

    const/4 v2, 0x1

    .line 574
    .local v2, "direction":I
    :goto_1
    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mPreviousDirection:I

    if-eq v2, v8, :cond_2

    .line 578
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mPreviousDirection:I

    goto :goto_0

    .line 573
    .end local v2    # "direction":I
    :cond_5
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 529
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFirstDayOfWeek:I

    .line 209
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mShowWeekNumber:Z

    .line 210
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mOrientation:I

    .line 212
    return-void
.end method

.method private initClickTime(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;
    .locals 3
    .param p1, "mClickedView"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .param p2, "mClickedXLocation"    # F

    .prologue
    .line 348
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 351
    invoke-virtual {p1, p2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayIndexFromLocation(F)I

    move-result v0

    .line 352
    .local v0, "mClickedDayIndex":I
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getFirstJulianDay()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 354
    return-object v1
.end method

.method private initViews(Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;)V
    .locals 2
    .param p1, "myLinearLayout"    # Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .prologue
    .line 291
    const v0, 0x7f1101b0

    .line 292
    invoke-virtual {p1, v0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 293
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickable(Z)V

    .line 294
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    return-void
.end method


# virtual methods
.method public calcNewTimeByPageNum(Landroid/text/format/Time;Landroid/content/Context;I)V
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pageNum"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 255
    const/16 v1, 0x7b2

    iput v1, p1, Landroid/text/format/Time;->year:I

    .line 256
    const/4 v1, 0x0

    iput v1, p1, Landroid/text/format/Time;->month:I

    .line 257
    iput v3, p1, Landroid/text/format/Time;->monthDay:I

    .line 258
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v0, v1, -0x4

    .line 263
    .local v0, "index":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v1, :cond_2

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFirstDayOfWeek:I

    if-ne v1, v3, :cond_2

    .line 265
    add-int/lit8 v0, v0, 0x7

    .line 270
    :cond_1
    :goto_1
    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    mul-int/lit8 v2, p3, 0x7

    add-int/2addr v1, v2

    iput v1, p1, Landroid/text/format/Time;->monthDay:I

    .line 271
    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/text/format/Time;->monthDay:I

    .line 272
    invoke-virtual {p1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFirstDayOfWeek:I

    if-ne v1, v2, :cond_1

    .line 268
    add-int/lit8 v0, v0, -0x7

    goto :goto_1
.end method

.method public getmListView()Lcn/nubia/calendar/submodule_month/view/MyListView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    return-object v0
.end method

.method public invalidateClickedMonthView()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const/4 v1, -0x1

    iput v1, v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->mClickedDayIndex:I

    .line 344
    :cond_0
    return-void
.end method

.method public invalidateMonthView()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 337
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->init()V

    .line 225
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    .line 228
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mPageNumber:I

    invoke-virtual {p0, v2, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->calcNewTimeByPageNum(Landroid/text/format/Time;Landroid/content/Context;I)V

    .line 230
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    sput v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMonthViewCurMonth:I

    .line 231
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mJulianWeek:I

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v4, 0x1

    .line 233
    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFirstDayOfWeek:I

    .line 232
    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/util/MonthUtil;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mJulianWeek:I

    .line 237
    :cond_0
    const-string v2, "%d-%d-%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 237
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "timeString":Ljava/lang/String;
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mContext:Landroid/content/Context;

    new-instance v4, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;-><init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "timeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "rootView":Landroid/view/View;
    move-object v1, v0

    .line 308
    check-cast v1, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    .line 309
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mLayout:Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->initViews(Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;)V

    .line 310
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mJulianWeek:I

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setParams(I)V

    .line 311
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setmMonthViewCurrentMonth(I)V

    .line 312
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setMonthWeekCurrentMonth(I)V

    .line 314
    return-object v0
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "day"    # Landroid/text/format/Time;

    .prologue
    .line 416
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 417
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "currTime":Landroid/text/format/Time;
    iget v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, p1, Landroid/text/format/Time;->hour:I

    .line 420
    iget v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, p1, Landroid/text/format/Time;->minute:I

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/text/format/Time;->allDay:Z

    .line 422
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 423
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 642
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 643
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 646
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mHomeTimeZone:Ljava/lang/String;

    .line 321
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 322
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 431
    .local v0, "action":I
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 432
    .local v1, "flag":Z
    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 433
    check-cast p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickTime:J

    sub-long v2, v8, v10

    .line 437
    .local v2, "delay":J
    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoSingleTapUp:Ljava/lang/Runnable;

    sget v10, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTotalClickDelay:I

    int-to-long v10, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    :goto_0
    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    .end local v2    # "delay":J
    :cond_0
    :goto_1
    return v5

    .line 437
    .restart local v2    # "delay":J
    :cond_1
    sget v6, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTotalClickDelay:I

    int-to-long v6, v6

    sub-long/2addr v6, v2

    goto :goto_0

    .line 441
    .end local v2    # "delay":J
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 477
    :cond_3
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_0

    move v5, v8

    .line 480
    goto :goto_1

    .line 443
    :pswitch_0
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_DOWN ev.getDownTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Cnt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 443
    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    check-cast p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedXLocation:F

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickTime:J

    .line 448
    iget-object v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDoClick:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 453
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedXLocation:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMovedPixelToCancel:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move-object v4, p1

    .line 454
    check-cast v4, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 455
    .local v4, "mv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    check-cast p1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->clearClickedView(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V

    goto :goto_1

    .line 459
    .end local v4    # "mv":Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_2
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_4

    .line 460
    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    .line 465
    iput v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mViewStartX:I

    goto :goto_1

    .line 471
    :cond_4
    :pswitch_3
    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mScrolling:Z

    .line 472
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTouchMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_3

    goto/16 :goto_1

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    .locals 6
    .param p1, "day"    # Landroid/text/format/Time;
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "viewcontainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    .prologue
    .line 626
    const-string v2, "%d-%d-%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Landroid/text/format/Time;->month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    .line 627
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 626
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "timeString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v2, p1, p2, p3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickedDayByTime(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->invalidateMonthView()V

    .line 634
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMonthWeekCurrentMonth(I)V
    .locals 1
    .param p1, "mMonthViewCurrentMonth"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setShowAllMonth()V

    .line 279
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setmMonthViewCurrentMonth(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public setParams(I)V
    .locals 4
    .param p1, "argJulianWeek"    # I

    .prologue
    const/4 v2, 0x1

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 173
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mJulianWeek:I

    if-ne v1, p1, :cond_2

    .line 180
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->init()V

    .line 183
    const-string v1, "selected_day"

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 184
    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 183
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v3, "show_wk_num"

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mShowWeekNumber:Z

    if-eqz v1, :cond_3

    move v1, v2

    .line 186
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "week_start"

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFirstDayOfWeek:I

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 187
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "num_days"

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mDaysPerWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "focus_month"

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mFocusMonth:I

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 190
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "orientation"

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->loadLunarAndHolidayControl()V

    .line 197
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 198
    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v0, v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickable(Z)V

    .line 200
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->monthview:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V

    .line 202
    :cond_1
    return-void

    .line 176
    :cond_2
    if-eqz p1, :cond_0

    .line 177
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mJulianWeek:I

    goto :goto_0

    .line 185
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 637
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 638
    return-void
.end method

.method public setmListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V
    .locals 0
    .param p1, "mListView"    # Lcn/nubia/calendar/submodule_month/view/MyListView;

    .prologue
    .line 81
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mListView:Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 82
    return-void
.end method

.method public setmMonthViewCurrentMonth(I)V
    .locals 0
    .param p1, "mMonthViewCurrentMonth"    # I

    .prologue
    .line 284
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mMonthViewCurrentMonth:I

    .line 285
    return-void
.end method
