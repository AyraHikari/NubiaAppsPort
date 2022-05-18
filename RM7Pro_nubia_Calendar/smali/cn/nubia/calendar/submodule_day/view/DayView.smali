.class public Lcn/nubia/calendar/submodule_day/view/DayView;
.super Landroid/view/View;
.source "DayView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;,
        Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;,
        Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;,
        Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;,
        Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;,
        Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;,
        Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;,
        Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static final ACCESS_LEVEL_DELETE:I = 0x1

.field private static final ACCESS_LEVEL_EDIT:I = 0x2

.field private static final ACCESS_LEVEL_NONE:I = 0x0

.field private static ALLDAY_TOP_MARGIN:I = 0x0

.field private static ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I = 0x0

.field private static AMPM_LEFT_MAGIN:I = 0x0

.field private static AMPM_TEXT_SIZE:F = 0.0f

.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final ANIMATION_SECONDARY_DURATION:J = 0xc8L

.field private static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x1

.field private static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field public static CLICKSTATUE:Z = false

.field private static final CLICK_DISPLAY_DURATION:I = 0x32

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I = 0x0

.field private static CURRENT_TIME_LINE_HEIGHT:I = 0x0

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I = 0x0

.field private static CURRENT_TIME_LINE_TOP_OFFSET:I = 0x0

.field private static DATE_HEADER_FONT_SIZE:F = 0.0f

.field private static DAY_BEGIN_TIME:I = 0x0

.field private static DAY_END_TIME:I = 0x0

.field private static final DAY_GAP:I = 0x1

.field private static DAY_HEADER_BOTTOM_MARGIN:I = 0x0

.field private static DAY_HEADER_FONT_SIZE:F = 0.0f

.field private static DAY_HEADER_HEIGHT:I = 0x0

.field private static DAY_HEADER_LEFT_MARGIN:I = 0x0

.field private static DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I = 0x0

.field private static DAY_HEADER_ONE_DAY_LEFT_MARGIN:I = 0x0

.field private static DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I = 0x0

.field private static DAY_HEADER_RIGHT_MARGIN:I = 0x0

.field private static final DAY_NUMS_IN_WEEK:I = 0x7

.field private static DEBUG:Z = false

.field private static DEBUG_SCALING:Z = false

.field public static final DECLINED_EVENT_TEXT_ALPHA:I = 0xc0

.field static final DEFAULT_BAR_COLOR:Ljava/lang/String; = "#46D6DB"

.field private static DEFAULT_CELL_HEIGHT:I = 0x0

.field static final DEFAULT_LONG_PRESS_BACK_COLOR:Ljava/lang/String; = "#bb46D6DB"

.field static final DEFAULT_LONG_PRESS_BORDER_COLOR:Ljava/lang/String; = "#25BCB8"

.field private static DOWN:I = 0x0

.field private static final EVENTS_CROSS_FADE_DURATION:I = 0x190

.field private static EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I = 0x0

.field private static EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I = 0x0

.field private static EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I = 0x0

.field private static EVENT_ALL_DAY_TEXT_TOP_MARGIN:I = 0x0

.field private static final EVENT_FONT_TRANSPARENCY:I = 0x43

.field private static EVENT_LINE_PADDING:I = 0x0

.field private static EVENT_RECT_BOTTOM_MARGIN:I = 0x0

.field private static EVENT_RECT_LEFT_MARGIN:I = 0x0

.field private static EVENT_RECT_RIGHT_MARGIN:I = 0x0

.field private static EVENT_RECT_STROKE_WIDTH:I = 0x0

.field private static EVENT_RECT_TOP_MARGIN:I = 0x0

.field private static EVENT_SQUARE_WIDTH:I = 0x0

.field private static EVENT_TEXT_BOTTOM_MARGIN:I = 0x0

.field private static EVENT_TEXT_FONT_SIZE:F = 0.0f

.field private static EVENT_TEXT_LEFT_MARGIN:I = 0x0

.field private static EVENT_TEXT_RIGHT_MARGIN:I = 0x0

.field private static EVENT_TEXT_TOP_MARGIN:I = 0x0

.field private static EXPAND_ALL_DAY_BOTTOM_MARGIN:I = 0x0

.field private static final FROM_ABOVE:I = 0x1

.field private static final FROM_BELOW:I = 0x2

.field private static final FROM_LEFT:I = 0x4

.field private static final FROM_NONE:I = 0x0

.field private static final FROM_RIGHT:I = 0x8

.field private static final GOTO_SCROLL_DURATION:I = 0xc8

.field private static final GRID_LINE_INNER_WIDTH:F = 1.0f

.field private static GRID_LINE_LEFT_MARGIN:F = 0.0f

.field private static HOURS_AND_AMPM_MARGIN:I = 0x0

.field private static HOURS_LEFT_MARGIN:I = 0x0

.field private static HOURS_MARGIN:I = 0x0

.field private static HOURS_RIGHT_MARGIN:I = 0x0

.field private static HOURS_TEXT_SIZE:F = 0.0f

.field private static HOURS_TOP_MARGIN:I = 0x0

.field private static final HOUR_FONT_ALPHA:I = 0x91

.field private static final HOUR_GAP:I = 0x1

.field private static final INVALID_EVENT_ID:J = -0x1L

.field private static LONG_PRESS_RECT_STOKE_WIDTH:I = 0x0

.field private static LONG_PRESS_SCALE_X:I = 0x0

.field private static LONG_PRESS_SCALE_Y:I = 0x0

.field private static MAX_CELL_HEIGHT:I = 0x0

.field private static final MAX_EVENT_TEXT_LEN:I = 0x1f4

.field private static MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I = 0x0

.field private static MAX_UNEXPANDED_ALLDAY_HEIGHT:I = 0x0

.field private static final MENU_AGENDA:I = 0x2

.field private static final MENU_DAY:I = 0x3

.field private static final MENU_EVENT_CREATE:I = 0x6

.field private static final MENU_EVENT_DELETE:I = 0x8

.field private static final MENU_EVENT_EDIT:I = 0x7

.field private static final MENU_EVENT_VIEW:I = 0x5

.field static final MILLIS_PER_DAY:I = 0x5265c00

.field static final MILLIS_PER_HOUR:I = 0x36ee80

.field static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field private static MINUTE_TOP_MARGIN:I = 0x0

.field private static MIN_CELL_WIDTH_FOR_TEXT:I = 0x0

.field private static MIN_EVENT_HEIGHT:F = 0.0f

.field private static MIN_HOURS_HEIGHT:I = 0x0

.field private static MIN_HOURS_WIDTH:I = 0x0

.field private static MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F = 0.0f

.field private static MIN_Y_SPAN:I = 0x0

.field public static final MODIFY_ALL:I = 0x3

.field private static final MORE_EVENTS_MAX_ALPHA:I = 0x4c

.field private static MULTI_DAY_HEADER_HEIGHT:I = 0x0

.field private static NEW_EVENT_HINT_FONT_SIZE:I = 0x0

.field private static NEW_EVENT_MARGIN:I = 0x0

.field private static NEW_EVENT_MAX_LENGTH:I = 0x0

.field private static NEW_EVENT_WIDTH:I = 0x0

.field private static NORMAL_FONT_SIZE:F = 0.0f

.field private static ONE_DAY_HEADER_HEIGHT:I = 0x0

.field private static final PERIOD_SPACE:Ljava/lang/String; = ". "

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static SINGLE_ALLDAY_HEIGHT:I = 0x0

.field private static SOLAR_LUNAR_PADDING:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static UP:I = 0x0

.field private static final UPDATE_CURRENT_TIME_DELAY:I = 0x493e0

.field private static final WEEK_DAY_VIEW_STR_ALPHA:I = 0x7f

.field private static mBgColor:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineInnerHorizontalColor:I

.field private static mCalendarGridLineInnerVerticalColor:I

.field private static mCalendarHourLabelColor:I

.field private static mCellHeight:I

.field private static mClickedColor:I

.field private static mDayToInt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mEventTextColor:I

.field private static mFutureBgColor:I

.field private static mFutureBgColorRes:I

.field private static mHorizontalSnapBackThreshold:I

.field private static mIntToDay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLongPressEventBgColor:I

.field private static mLongPressEventBorderColor:I

.field private static mMinCellHeight:I

.field private static mMoreAlldayEventsTextAlpha:I

.field private static mMoreEventsTextColor:I

.field private static mNewEventHintColor:I

.field private static mOnDownDelay:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mShowAllAllDayEvents:Z

.field private static mUseExpandIcon:Z

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sCounter:I


# instance fields
.field private AMPM_LEFT_PADDING:I

.field private AUTO_SCROLL_BOTTOM:I

.field private AUTO_SCROLL_UP:I

.field private HOURS_LEFT_PADDING:I

.field private final OVERFLING_DISTANCE:I

.field private final SAN_SERIF_REGULAR:Landroid/graphics/Typeface;

.field private day:[Ljava/lang/String;

.field private final drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field protected mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mAllDayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDayLayouts:[Landroid/text/StaticLayout;

.field private mAllDayString:Ljava/lang/String;

.field private mAllEventColor:I

.field mAlldayAnimator:Landroid/animation/ObjectAnimator;

.field mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

.field private mAlldayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mAnimateDayEventHeight:I

.field private mAnimateDayHeight:I

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimationDistance:F

.field mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBackGroundColor:I

.field mBaseDate:Landroid/text/format/Time;

.field private final mBold:Landroid/graphics/Typeface;

.field private mCallEdgeEffectOnAbsorb:Z

.field private final mCancelCallback:Ljava/lang/Runnable;

.field private mCancellingAnimations:Z

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field private mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

.field private mCircleSize:I

.field private mClickedDayColor:I

.field private mClickedEvent:Lcn/nubia/calendar/model/Event;

.field private mClickedYLocation:I

.field protected mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mComputeSelectedEvents:Z

.field protected mContext:Landroid/content/Context;

.field private final mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

.field private final mContinueScroll:Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;

.field private final mCreateNewEventString:Ljava/lang/String;

.field private mCurrentLunarDayTextColor:I

.field private mCurrentTime:Landroid/text/format/Time;

.field protected mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

.field protected mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

.field private mCurrentTimeLineColor:I

.field private mDateStrWidth:I

.field private mDayAndWeekViewtodayColor:I

.field private mDayCellWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDayViewColor:I

.field private mDayViewWeekStr:F

.field private final mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

.field private final mDestRect:Landroid/graphics/Rect;

.field private final mDismissPopup:Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;

.field private mDividingLine:F

.field private mDownTouchTime:J

.field private mDragEnd:Z

.field private mDragEvent:Lcn/nubia/calendar/model/Event;

.field private mDragEventBgAlpha:I

.field private mDragEventRect:Landroid/graphics/Rect;

.field private mDragEventStartHour:I

.field private mDragEventStartMinute:I

.field private mDragFlag:Z

.field protected mDragScroller:Landroid/widget/Scroller;

.field private mDragViewStartY:I

.field private mEarliestStartHour:[I

.field private final mEdgeEffectBottom:Landroid/widget/EdgeEffect;

.field private final mEdgeEffectTop:Landroid/widget/EdgeEffect;

.field private mEventCountTemplate:Ljava/lang/String;

.field protected final mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

.field private final mEventLoader:Lcn/nubia/calendar/EventLoader;

.field private final mEventTextPaint:Landroid/graphics/Paint;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsAlpha:I

.field private mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

.field private final mExpandAllDayRect:Landroid/graphics/Rect;

.field protected mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstCell:I

.field private mFirstDayOfWeek:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstVisibleDate:I

.field private mFirstVisibleDayOfWeek:I

.field private mFirstVisibleMonth:I

.field private mFirstVisibleYear:I

.field private mFormatter:Ljava/util/Formatter;

.field private mGestureCenterHour:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private final mHScrollInterpolator:Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;

.field private mHandleActionUp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAllDayEvent:[Z

.field private mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursTopPadding:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mIsAccessibilityEnabled:Z

.field private mIsLunarVisible:Z

.field private mLanguage:Ljava/lang/String;

.field private mLastJulianDay:I

.field private mLastMotionY:F

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLastSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

.field private mLastSelectionDayForAccessibility:I

.field private mLastSelectionHourForAccessibility:I

.field private mLastVelocity:F

.field private mLayouts:[Landroid/text/StaticLayout;

.field private mLines:[F

.field private mLoadedFirstJulianDay:I

.field private final mLongPressItems:[Ljava/lang/CharSequence;

.field private mLongPressTitle:Ljava/lang/String;

.field private mLongPressX:F

.field private mLongPressY:F

.field private mLunarDatepadding:I

.field private mMaxAlldayEvents:I

.field private mMaxUnexpandedAlldayEventCount:I

.field private mMaxViewStartY:I

.field private mModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field private mMonthLength:I

.field private mMonthTodaySolarDateTextColor:I

.field private mMonthTodaySolarDateTextSize:F

.field mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

.field private final mNewEventHintString:Ljava/lang/String;

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mOneDayInWeekWidth:I

.field private mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field private mOutterHandler:Landroid/os/Handler;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field protected mPaused:Z

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPressSelectDay:I

.field private mPressSelectHour:I

.field private final mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

.field private mPreviousDirection:I

.field private final mRect:Landroid/graphics/Rect;

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mSavedClickedEvent:Lcn/nubia/calendar/model/Event;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectedEvent:Lcn/nubia/calendar/model/Event;

.field private mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

.field private mSelectedEventRect:Landroid/graphics/Rect;

.field private final mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllday:Z

.field private mSelectionDay:I

.field private mSelectionDayForAccessibility:I

.field private mSelectionHour:I

.field private mSelectionHourForAccessibility:I

.field private mSelectionMode:I

.field private final mSelectionPaint:Landroid/graphics/Paint;

.field private final mSelectionRect:Landroid/graphics/Rect;

.field private final mSetClick:Ljava/lang/Runnable;

.field private mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

.field private mSkippedAlldayEvents:[I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field mTodayAnimator:Landroid/animation/ObjectAnimator;

.field private final mTodayAnimatorListener:Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

.field protected mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayJulianDay:I

.field private mTouchExplorationEnabled:Z

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field private mTouchX:F

.field private mTouchY:F

.field private final mUpdateCurrentTime:Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

.field private mUpdateToast:Z

.field private final mViewEventRunnable:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private final mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mViewWidth:I

.field private mWeekDateHeight:I

.field private mWeekDayHeight:I

.field private mWeekDayLunarTextColor:I

.field private mWeekDayLunarTextSize:F

.field private mWeekDaySolarTextColor:I

.field private mWeekDaySolarTextSize:F

.field private mWeekDayTextColor:I

.field private mWeekDayTextHeight:I

.field private mWeekDayTodaySolarTextSize:F

.field private mWeekDayViewStrSize:F

.field private mWeekEndTextColor:I

.field private mWeekSolarDateHeight:I

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private num:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    const-string v0, "Calendar"

    sput-object v0, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    .line 156
    sput-boolean v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    .line 157
    sput-boolean v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG_SCALING:Z

    .line 159
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    .line 179
    const/16 v0, 0x8a

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 180
    const/16 v0, 0x96

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_CELL_HEIGHT:I

    .line 181
    const/16 v0, 0x64

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_Y_SPAN:I

    .line 184
    const/4 v0, 0x5

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->SOLAR_LUNAR_PADDING:I

    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/calendar/submodule_day/view/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 222
    const/16 v0, 0x80

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHorizontalSnapBackThreshold:I

    .line 446
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 452
    const/16 v0, 0x22

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 458
    const/high16 v0, 0x41e00000    # 28.0f

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 464
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 469
    const/16 v0, 0xb4

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_HEIGHT:I

    .line 470
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    .line 472
    const/16 v0, 0x22

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 474
    const/16 v0, 0x9

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TOP_MARGIN:I

    .line 475
    sput v4, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_LEFT_MARGIN:I

    .line 476
    sput v6, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_AND_AMPM_MARGIN:I

    .line 477
    sput v5, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_RIGHT_MARGIN:I

    .line 478
    sput v5, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_LEFT_MAGIN:I

    .line 479
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_MARGIN:I

    .line 480
    sput v5, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MARGIN:I

    .line 481
    sput v4, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_WIDTH:I

    .line 482
    const/16 v0, 0x10

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 484
    sput v4, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 485
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 486
    sput v5, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 487
    sput v4, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 497
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 498
    const/4 v0, 0x5

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 499
    sput v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 500
    const/4 v0, 0x5

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_LEFT_MARGIN:I

    .line 501
    sput v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 502
    const/4 v0, 0x3

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 504
    const/high16 v0, 0x42100000    # 36.0f

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 505
    const/high16 v0, 0x42100000    # 36.0f

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->NORMAL_FONT_SIZE:F

    .line 508
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TEXT_SIZE:F

    .line 509
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_TEXT_SIZE:F

    .line 510
    const/16 v0, 0x60

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_WIDTH:I

    .line 511
    const/16 v0, 0x14

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 514
    const/high16 v0, 0x42b40000    # 90.0f

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_EVENT_HEIGHT:F

    .line 516
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 517
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 518
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 519
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 520
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 521
    sput v4, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 522
    sput v4, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 523
    sput v6, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 524
    sput v6, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 525
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 526
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 527
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 528
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 529
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 531
    const/16 v0, 0xa

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 533
    const/16 v0, 0xa

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_SQUARE_WIDTH:I

    .line 534
    sput v5, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_LINE_PADDING:I

    .line 535
    const/16 v0, 0x24

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 554
    const/16 v0, 0x4c

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 563
    const/16 v0, 0x8a

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 564
    const/16 v0, 0x5a

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    .line 603
    sput-boolean v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mUseExpandIcon:Z

    .line 607
    const/16 v0, 0x120

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    .line 611
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 615
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 631
    sput-boolean v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    .line 667
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->sCounter:I

    .line 704
    sput-boolean v2, Lcn/nubia/calendar/submodule_day/view/DayView;->CLICKSTATUE:Z

    .line 758
    const/4 v0, 0x3

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_SCALE_Y:I

    .line 759
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_SCALE_X:I

    .line 761
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_RECT_STOKE_WIDTH:I

    .line 767
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MINUTE_TOP_MARGIN:I

    .line 772
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->UP:I

    .line 773
    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DOWN:I

    .line 781
    const/16 v0, 0x5a0

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_END_TIME:I

    .line 782
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_BEGIN_TIME:I

    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIntToDay:Ljava/util/HashMap;

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayToInt:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ViewSwitcher;Lcn/nubia/calendar/EventLoader;ILandroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewSwitcher"    # Landroid/widget/ViewSwitcher;
    .param p3, "eventLoader"    # Lcn/nubia/calendar/EventLoader;
    .param p4, "numDays"    # I
    .param p5, "outterHandler"    # Landroid/os/Handler;
    .param p6, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 824
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 186
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingScroll:Z

    .line 187
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaused:Z

    .line 224
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/submodule_day/view/DayView$1;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContinueScroll:Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;

    .line 232
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateCurrentTime:Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    .line 235
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBold:Landroid/graphics/Typeface;

    .line 237
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLoadedFirstJulianDay:I

    .line 260
    const/16 v3, 0xaa

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    .line 264
    const/16 v3, 0x1e

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_LEFT_PADDING:I

    .line 265
    const/16 v3, 0x3c

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_LEFT_PADDING:I

    .line 266
    const/16 v3, 0xb4

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventBgAlpha:I

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 284
    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 285
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFormatter:Ljava/util/Formatter;

    .line 287
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$1;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$1;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTZUpdater:Ljava/lang/Runnable;

    .line 299
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$2;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$2;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSetClick:Ljava/lang/Runnable;

    .line 309
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$3;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$3;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewEventRunnable:Ljava/lang/Runnable;

    .line 322
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimatorListener:Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

    .line 369
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$4;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$4;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 397
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 399
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLayouts:[Landroid/text/StaticLayout;

    .line 400
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    .line 421
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    .line 422
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 423
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionRect:Landroid/graphics/Rect;

    .line 425
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    .line 427
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaint:Landroid/graphics/Paint;

    .line 428
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 429
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 439
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDismissPopup:Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;

    .line 441
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 556
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimationDistance:F

    .line 562
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    .line 575
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    .line 579
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    .line 585
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    .line 595
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    .line 599
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    .line 627
    const/4 v3, 0x4

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 633
    const/4 v3, 0x7

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    .line 634
    const/16 v3, 0xa

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    .line 642
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 650
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 655
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    .line 669
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/submodule_day/view/DayView$1;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    .line 694
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 705
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 707
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 712
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateToday:Z

    .line 713
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateTodayAlpha:I

    .line 724
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCancellingAnimations:Z

    .line 726
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchStartedInAlldayArea:Z

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 739
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    .line 740
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchExplorationEnabled:Z

    .line 777
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEnd:Z

    .line 788
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->num:[I

    .line 789
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MO"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "TU"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "WE"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "TH"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "FR"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "SA"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "SU"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->day:[Ljava/lang/String;

    .line 793
    const-string v3, "sans-serif"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->SAN_SERIF_REGULAR:Landroid/graphics/Typeface;

    .line 813
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsLunarVisible:Z

    .line 815
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    .line 817
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 2402
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$5;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$5;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCancelCallback:Ljava/lang/Runnable;

    .line 4596
    const-string v3, "[\t\n],"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 6435
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 825
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    .line 826
    iput-object p5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    .line 827
    iput-object p6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 828
    new-instance v3, Lcn/nubia/calendar/util/SharedPrefUtil;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 829
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->loadLunarVisible()V

    .line 830
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->initAccessibilityVariables()V

    .line 831
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    .line 832
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    .line 833
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCreateNewEventString:Ljava/lang/String;

    .line 834
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0027

    .line 835
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNewEventHintString:Ljava/lang/String;

    .line 836
    iput p4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    .line 838
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900d8

    .line 839
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 840
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090006

    .line 841
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 842
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900e4

    .line 843
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 844
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900d9

    .line 845
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 846
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900d6

    .line 847
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 848
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f09000b

    .line 849
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TEXT_SIZE:F

    .line 851
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_TEXT_SIZE:F

    .line 852
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900e2

    .line 853
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_WIDTH:I

    .line 854
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f09015f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDividingLine:F

    .line 857
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900ab

    .line 858
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_LEFT_MARGIN:I

    .line 860
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900ac

    .line 861
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_RIGHT_MARGIN:I

    .line 865
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f09002f

    .line 866
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_LEFT_MAGIN:I

    .line 869
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 870
    const v0, 0x7f0900da

    .line 874
    .local v0, "eventTextSizeId":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 875
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900e3

    .line 876
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 877
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_EVENT_HEIGHT:F

    .line 878
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_EVENT_HEIGHT:F

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 879
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900e1

    .line 880
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 881
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 882
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 883
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 885
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0900e0

    .line 886
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 887
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 888
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 889
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 891
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090256

    .line 892
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->SOLAR_LUNAR_PADDING:I

    .line 894
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 896
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    .line 897
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 898
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 899
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    .line 900
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 903
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->GRID_LINE_LEFT_MARGIN:F

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 905
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 906
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 907
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    .line 909
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 910
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 911
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 912
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 914
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_Y_SPAN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_Y_SPAN:I

    .line 915
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_CELL_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_CELL_HEIGHT:I

    .line 916
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DEFAULT_CELL_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 917
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    .line 918
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_LEFT_MARGIN:I

    .line 919
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 920
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 921
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 922
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 924
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 925
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 926
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 927
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 928
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 929
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 930
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_SQUARE_WIDTH:I

    .line 931
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_LINE_PADDING:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_LINE_PADDING:I

    .line 932
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MARGIN:I

    .line 933
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_WIDTH:I

    .line 934
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MAX_LENGTH:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 935
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->SOLAR_LUNAR_PADDING:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->SOLAR_LUNAR_PADDING:I

    .line 938
    :cond_0
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_LEFT_MARGIN:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v3, v4

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_MARGIN:I

    .line 940
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0202d3

    .line 941
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 942
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0202d2

    .line 943
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    .line 944
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0202d5

    .line 945
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 946
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f02010f

    .line 947
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 948
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f02010b

    .line 949
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 950
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d0051

    .line 951
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mNewEventHintColor:I

    .line 952
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0202aa

    .line 953
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 955
    iput-object p3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    .line 956
    new-instance v3, Lcn/nubia/calendar/model/EventGeometry;

    invoke-direct {v3}, Lcn/nubia/calendar/model/EventGeometry;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    .line 957
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/model/EventGeometry;->setMinEventHeight(F)V

    .line 958
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/model/EventGeometry;->setHourGap(F)V

    .line 959
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/model/EventGeometry;->setCellMargin(I)V

    .line 960
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0059

    .line 961
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    .line 962
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 963
    new-instance v3, Lcn/nubia/calendar/DeleteEventHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

    .line 969
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 970
    iput-object p2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 971
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 973
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 974
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    if-nez v3, :cond_1

    .line 975
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v4, "preferences_default_cell_height"

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DEFAULT_CELL_HEIGHT:I

    invoke-virtual {v3, v4, v5}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 979
    :cond_1
    new-instance v3, Landroid/widget/OverScroller;

    invoke-direct {v3, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    .line 980
    new-instance v3, Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHScrollInterpolator:Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;

    .line 981
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    .line 982
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    .line 983
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 984
    .local v2, "vc":Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mOnDownDelay:I

    .line 985
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->OVERFLING_DISTANCE:I

    .line 987
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->init(Landroid/content/Context;)V

    .line 990
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    .line 992
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    .line 994
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d0101

    .line 995
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressEventBgColor:I

    .line 996
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d0102

    .line 997
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressEventBorderColor:I

    .line 999
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v3, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragScroller:Landroid/widget/Scroller;

    .line 1000
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    .line 1002
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AUTO_SCROLL_UP:I

    .line 1003
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090027

    .line 1004
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AUTO_SCROLL_BOTTOM:I

    .line 1006
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 1007
    sget-object v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mIntToDay:Ljava/util/HashMap;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->num:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->day:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayToInt:Ljava/util/HashMap;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->day:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->num:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 872
    .end local v0    # "eventTextSizeId":I
    .end local v1    # "i":I
    .end local v2    # "vc":Landroid/view/ViewConfiguration;
    :cond_2
    const v0, 0x7f0900e5

    .restart local v0    # "eventTextSizeId":I
    goto/16 :goto_0

    .line 1016
    .restart local v1    # "i":I
    .restart local v2    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090266

    .line 1017
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekSolarDateHeight:I

    .line 1018
    new-instance v3, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 1020
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090049

    .line 1021
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 1024
    const/4 v3, 0x6

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTopPadding:I

    .line 1029
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaintBorder:Landroid/graphics/Paint;

    .line 1030
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1031
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaintBorder:Landroid/graphics/Paint;

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_RECT_STOKE_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1032
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->SetDisplaySize(Landroid/content/Context;)V

    .line 1033
    return-void

    .line 788
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$1104()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->sCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/ViewSwitcher;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/calendar/submodule_day/view/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    return p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/submodule_day/view/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/submodule_day/view/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLoadedFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1702(Lcn/nubia/calendar/submodule_day/view/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLoadedFirstJulianDay:I

    return p1
.end method

.method static synthetic access$1802(Lcn/nubia/calendar/submodule_day/view/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/submodule_day/view/DayView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcn/nubia/calendar/submodule_day/view/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lcn/nubia/calendar/submodule_day/view/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # [Landroid/text/StaticLayout;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcn/nubia/calendar/submodule_day/view/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # [Landroid/text/StaticLayout;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeEventRelations()V

    return-void
.end method

.method static synthetic access$2302(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$2402(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$2500(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->recalc()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/calendar/submodule_day/view/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    return v0
.end method

.method static synthetic access$2602(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    return p1
.end method

.method static synthetic access$2700(Lcn/nubia/calendar/submodule_day/view/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEnd:Z

    return v0
.end method

.method static synthetic access$2800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2802(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2900(Lcn/nubia/calendar/submodule_day/view/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCancellingAnimations:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedEvent:Lcn/nubia/calendar/model/Event;

    return-object v0
.end method

.method static synthetic access$3002(Lcn/nubia/calendar/submodule_day/view/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    return p1
.end method

.method static synthetic access$302(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/model/Event;)Lcn/nubia/calendar/model/Event;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedEvent:Lcn/nubia/calendar/model/Event;

    return-object p1
.end method

.method static synthetic access$3102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 147
    sput-boolean p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUseExpandIcon:Z

    return p0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    return v0
.end method

.method static synthetic access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendShowActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    return-void
.end method

.method static synthetic access$3500(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendShowEditActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendCreateActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendDeleteActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    return-void
.end method

.method static synthetic access$3800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$3900(Lcn/nubia/calendar/submodule_day/view/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$3902(Lcn/nubia/calendar/submodule_day/view/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSavedClickedEvent:Lcn/nubia/calendar/model/Event;

    return-object v0
.end method

.method static synthetic access$4000(Lcn/nubia/calendar/submodule_day/view/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCallEdgeEffectOnAbsorb:Z

    return v0
.end method

.method static synthetic access$4002(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCallEdgeEffectOnAbsorb:Z

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/model/Event;)Lcn/nubia/calendar/model/Event;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSavedClickedEvent:Lcn/nubia/calendar/model/Event;

    return-object p1
.end method

.method static synthetic access$4100(Lcn/nubia/calendar/submodule_day/view/DayView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastVelocity:F

    return v0
.end method

.method static synthetic access$4102(Lcn/nubia/calendar/submodule_day/view/DayView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # F

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastVelocity:F

    return p1
.end method

.method static synthetic access$4200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$4300(Lcn/nubia/calendar/submodule_day/view/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$4400(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$4500(Lcn/nubia/calendar/submodule_day/view/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrollStartY:I

    return v0
.end method

.method static synthetic access$4600(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$4700(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4900(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateCurrentTime:Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendShowActionInfoMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    return-void
.end method

.method static synthetic access$5002(Lcn/nubia/calendar/submodule_day/view/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$5100()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$5200(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5300(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5400(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->eventClickCleanup()V

    return-void
.end method

.method static synthetic access$5500(Lcn/nubia/calendar/submodule_day/view/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchStartedInAlldayArea:Z

    return v0
.end method

.method static synthetic access$5600(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_day/view/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$5700(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_day/view/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$5800(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5900(Lcn/nubia/calendar/submodule_day/view/DayView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimationDistance:F

    return v0
.end method

.method static synthetic access$6000(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$602(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/calendar/submodule_day/view/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateTodayAlpha:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_day/view/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->resetSelectedHour()V

    return-void
.end method

.method private adjustHourSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2341
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    if-gez v1, :cond_0

    .line 2342
    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 2343
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_0

    .line 2344
    iput-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 2345
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    .line 2349
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    .line 2350
    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 2355
    :cond_1
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 2363
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 2364
    .local v0, "daynum":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    array-length v1, v1

    if-le v1, v0, :cond_3

    .line 2365
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 2368
    iput-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 2369
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    .line 2370
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 2396
    .end local v0    # "daynum":I
    :cond_2
    :goto_0
    return-void

    .line 2374
    .restart local v0    # "daynum":I
    :cond_3
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    if-lez v1, :cond_4

    .line 2375
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 2376
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 2377
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-gez v1, :cond_2

    .line 2378
    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    goto :goto_0

    .line 2384
    .end local v0    # "daynum":I
    :cond_4
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_2

    .line 2385
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_5

    .line 2386
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 2387
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 2388
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 2389
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    goto :goto_0

    .line 2392
    :cond_5
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    .line 2393
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    goto :goto_0
.end method

.method private adjustToBeginningOfWeek(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 1514
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1515
    .local v0, "dayOfWeek":I
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstDayOfWeek:I

    sub-int v1, v0, v2

    .line 1516
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 1517
    if-gez v1, :cond_0

    .line 1518
    add-int/lit8 v1, v1, 0x7

    .line 1520
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1521
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1523
    :cond_1
    return-void
.end method

.method private appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcn/nubia/calendar/model/Event;)V
    .locals 7
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "calEvent"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 2144
    invoke-virtual {p2}, Lcn/nubia/calendar/model/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    const-string v1, ". "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    const/16 v6, 0x10

    .line 2148
    .local v6, "flags":I
    iget-boolean v1, p2, Lcn/nubia/calendar/model/Event;->allDay:Z

    if-eqz v1, :cond_1

    .line 2149
    or-int/lit16 v6, v6, 0x2002

    .line 2156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-wide v2, p2, Lcn/nubia/calendar/model/Event;->startMillis:J

    iget-wide v4, p2, Lcn/nubia/calendar/model/Event;->endMillis:J

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->formatDateRange(JJI)Ljava/lang/String;

    move-result-object v0

    .line 2158
    .local v0, "when":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    const-string v1, ". "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    return-void

    .line 2151
    .end local v0    # "when":Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 2152
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    or-int/lit16 v6, v6, 0x80

    goto :goto_0
.end method

.method private calculateDuration(FFF)J
    .locals 9
    .param p1, "delta"    # F
    .param p2, "width"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 6464
    const/high16 v6, 0x40000000    # 2.0f

    div-float v3, p2, v6

    .line 6465
    .local v3, "halfScreenSize":F
    div-float v2, p1, p2

    .line 6466
    .local v2, "distanceRatio":F
    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->distanceInfluenceForSnapDuration(F)F

    move-result v1

    .line 6467
    .local v1, "distanceInfluenceForSnapDuration":F
    mul-float v6, v3, v1

    add-float v0, v3, v6

    .line 6470
    .local v0, "distance":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 6471
    const v6, 0x45098000    # 2200.0f

    invoke-static {v6, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 6479
    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v7, v0, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    int-to-long v4, v6

    .line 6480
    .local v4, "duration":J
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 6481
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "halfScreenSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " distanceRatio:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " distance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " velocity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " distanceInfluenceForSnapDuration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6487
    :cond_0
    return-wide v4
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5292
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 5293
    .local v0, "in":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 5295
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 5297
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 5298
    .local v1, "out":Landroid/view/animation/Animation;
    if-eqz v1, :cond_1

    .line 5300
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 5302
    :cond_1
    return-void
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 3843
    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3844
    .local v3, "len":I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v11, :cond_1

    .line 3898
    :cond_0
    :goto_0
    return-void

    .line 3849
    :cond_1
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3850
    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/Event;

    .line 3851
    .local v0, "ev":Lcn/nubia/calendar/model/Event;
    iput-object v12, v0, Lcn/nubia/calendar/model/Event;->nextUp:Lcn/nubia/calendar/model/Event;

    .line 3852
    iput-object v12, v0, Lcn/nubia/calendar/model/Event;->nextDown:Lcn/nubia/calendar/model/Event;

    .line 3853
    iput-object v12, v0, Lcn/nubia/calendar/model/Event;->nextLeft:Lcn/nubia/calendar/model/Event;

    .line 3854
    iput-object v12, v0, Lcn/nubia/calendar/model/Event;->nextRight:Lcn/nubia/calendar/model/Event;

    .line 3849
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3864
    .end local v0    # "ev":Lcn/nubia/calendar/model/Event;
    :cond_2
    const/4 v10, -0x1

    .line 3865
    .local v10, "startPosition":I
    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    invoke-virtual {v11}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3866
    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    invoke-virtual {v11}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v10

    .line 3868
    :cond_3
    const/4 v4, -0x1

    .line 3869
    .local v4, "maxPosition":I
    const/4 v9, 0x0

    .line 3870
    .local v9, "startEvent":Lcn/nubia/calendar/model/Event;
    const/4 v5, 0x0

    .line 3871
    .local v5, "maxPositionEvent":Lcn/nubia/calendar/model/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 3872
    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/Event;

    .line 3873
    .restart local v0    # "ev":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v8

    .line 3874
    .local v8, "position":I
    if-ne v8, v10, :cond_6

    .line 3875
    move-object v9, v0

    .line 3880
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, "jj":I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 3881
    if-ne v2, v1, :cond_7

    .line 3880
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3876
    .end local v2    # "jj":I
    :cond_6
    if-le v8, v4, :cond_4

    .line 3877
    move-object v5, v0

    .line 3878
    move v4, v8

    goto :goto_3

    .line 3884
    .restart local v2    # "jj":I
    :cond_7
    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/calendar/model/Event;

    .line 3885
    .local v6, "neighbor":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v6}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v7

    .line 3886
    .local v7, "neighborPosition":I
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_8

    .line 3887
    iput-object v6, v0, Lcn/nubia/calendar/model/Event;->nextUp:Lcn/nubia/calendar/model/Event;

    goto :goto_5

    .line 3888
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 3889
    iput-object v6, v0, Lcn/nubia/calendar/model/Event;->nextDown:Lcn/nubia/calendar/model/Event;

    goto :goto_5

    .line 3871
    .end local v6    # "neighbor":Lcn/nubia/calendar/model/Event;
    .end local v7    # "neighborPosition":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3893
    .end local v0    # "ev":Lcn/nubia/calendar/model/Event;
    .end local v2    # "jj":I
    .end local v8    # "position":I
    :cond_a
    if-eqz v9, :cond_b

    .line 3894
    invoke-direct {p0, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    goto :goto_0

    .line 3896
    :cond_b
    invoke-direct {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    goto :goto_0
.end method

.method private computeDayLeftPosition(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 2722
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2723
    .local v0, "effectiveWidth":I
    mul-int v1, p1, v0

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    div-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    add-int/2addr v1, v2

    return v1
.end method

.method private computeDayLeftPosition2(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 2739
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2740
    .local v0, "effectiveWidth":I
    mul-int v1, p1, v0

    div-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    add-int/2addr v1, v2

    return v1
.end method

.method private computeDayRtlPosition(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 2728
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2729
    .local v0, "effectiveWidth":I
    mul-int v1, p1, v0

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    div-int/2addr v1, v2

    return v1
.end method

.method private computeDayRtlPosition1(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 2734
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2735
    .local v0, "effectiveWidth":I
    mul-int v1, p1, v0

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    div-int/2addr v1, v2

    sub-int v1, v0, v1

    return v1
.end method

.method private computeDayRtlPosition2(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 2744
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2745
    .local v0, "effectiveWidth":I
    mul-int v1, p1, v0

    div-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    return v1
.end method

.method private computeEventRelations()V
    .locals 15

    .prologue
    .line 2535
    const/4 v12, 0x0

    .line 2536
    .local v12, "maxAllDayEvents":I
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    .line 2537
    .local v5, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2539
    .local v11, "len":I
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastJulianDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [I

    .line 2540
    .local v6, "eventsCount":[I
    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    .line 2541
    const/4 v9, 0x0

    .local v9, "ii":I
    :goto_0
    if-ge v9, v11, :cond_8

    .line 2542
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/model/Event;

    .line 2543
    .local v4, "event":Lcn/nubia/calendar/model/Event;
    iget v13, v4, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastJulianDay:I

    if-gt v13, v14, :cond_0

    iget v13, v4, Lcn/nubia/calendar/model/Event;->endDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_1

    .line 2541
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2547
    :cond_1
    invoke-virtual {v4}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2549
    iget v13, v4, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2550
    .local v7, "firstDay":I
    iget v13, v4, Lcn/nubia/calendar/model/Event;->endDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2551
    .local v10, "lastDay":I
    move v1, v7

    .local v1, "day":I
    :goto_2
    if-gt v1, v10, :cond_3

    .line 2552
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v13, v1, v13

    aget v14, v6, v13

    add-int/lit8 v0, v14, 0x1

    aput v0, v6, v13

    .line 2553
    .local v0, "count":I
    if-ge v12, v0, :cond_2

    .line 2554
    move v12, v0

    .line 2551
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2558
    .end local v0    # "count":I
    :cond_3
    iget v13, v4, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2559
    .local v2, "daynum":I
    iget v13, v4, Lcn/nubia/calendar/model/Event;->endDay:I

    iget v14, v4, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 2560
    .local v3, "durationDays":I
    if-gez v2, :cond_4

    .line 2561
    add-int/2addr v3, v2

    .line 2562
    const/4 v2, 0x0

    .line 2564
    :cond_4
    add-int v13, v2, v3

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-le v13, v14, :cond_5

    .line 2565
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    sub-int v3, v13, v2

    .line 2567
    :cond_5
    move v1, v2

    :goto_3
    if-lez v3, :cond_0

    .line 2568
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHasAllDayEvent:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 2567
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2571
    .end local v1    # "day":I
    .end local v2    # "daynum":I
    .end local v3    # "durationDays":I
    .end local v7    # "firstDay":I
    .end local v10    # "lastDay":I
    :cond_6
    iget v13, v4, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2572
    .restart local v2    # "daynum":I
    iget v13, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2573
    .local v8, "hour":I
    if-ltz v2, :cond_7

    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_7

    .line 2574
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    .line 2579
    :cond_7
    iget v13, v4, Lcn/nubia/calendar/model/Event;->endDay:I

    iget v14, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2580
    iget v13, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2581
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v2, v13, :cond_0

    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_0

    .line 2582
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    goto/16 :goto_1

    .line 2586
    .end local v2    # "daynum":I
    .end local v4    # "event":Lcn/nubia/calendar/model/Event;
    .end local v8    # "hour":I
    :cond_8
    iput v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    .line 2587
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->initAllDayHeights()V

    .line 2588
    return-void
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 2335
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 2337
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    .line 2338
    return-void
.end method

.method private computeLunarDay(III)Ljava/lang/String;
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 3270
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3271
    .local v0, "t":Landroid/text/format/Time;
    iput p1, v0, Landroid/text/format/Time;->year:I

    .line 3272
    iput p2, v0, Landroid/text/format/Time;->month:I

    .line 3273
    iput p3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3274
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 3275
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v1}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 3276
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v1}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDayInWeek()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 10
    .param p1, "currentMax"    # I
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3463
    const/4 v3, 0x0

    .line 3465
    .local v3, "maxWidthF":F
    array-length v1, p2

    .line 3466
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3467
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 3468
    .local v4, "width":F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3470
    .end local v4    # "width":F
    :cond_0
    float-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 3471
    .local v2, "maxWidth":I
    if-ge v2, p1, :cond_1

    .line 3472
    move v2, p1

    .line 3474
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 45

    .prologue
    .line 4033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 4034
    .local v20, "len":I
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1

    .line 4318
    :cond_0
    :goto_0
    return-void

    .line 4039
    :cond_1
    const/4 v15, 0x0

    .local v15, "ii":I
    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 4040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/nubia/calendar/model/Event;

    .line 4041
    .local v14, "ev":Lcn/nubia/calendar/model/Event;
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextUp:Lcn/nubia/calendar/model/Event;

    .line 4042
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextDown:Lcn/nubia/calendar/model/Event;

    .line 4043
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextLeft:Lcn/nubia/calendar/model/Event;

    .line 4044
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextRight:Lcn/nubia/calendar/model/Event;

    .line 4039
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 4047
    .end local v14    # "ev":Lcn/nubia/calendar/model/Event;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcn/nubia/calendar/model/Event;

    .line 4048
    .local v36, "startEvent":Lcn/nubia/calendar/model/Event;
    const v37, 0x186a0

    .line 4049
    .local v37, "startEventDistance1":I
    const v38, 0x186a0

    .line 4050
    .local v38, "startEventDistance2":I
    const/16 v30, 0x0

    .line 4055
    .local v30, "prevLocation":I
    const/16 v28, 0x0

    .line 4056
    .local v28, "prevCenter":I
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 4057
    .local v3, "box":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_f

    .line 4058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcn/nubia/calendar/model/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v32, v0

    .line 4059
    .local v32, "prevTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v27, v0

    .line 4060
    .local v27, "prevBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcn/nubia/calendar/model/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 4061
    .local v29, "prevLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcn/nubia/calendar/model/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v31, v0

    .line 4065
    .local v31, "prevRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_d

    .line 4067
    :cond_3
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 4069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .line 4090
    :cond_4
    :goto_2
    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_10

    .line 4092
    const/16 v30, 0x8

    .line 4093
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    .line 4111
    :cond_5
    :goto_3
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_32

    .line 4112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/nubia/calendar/model/Event;

    .line 4114
    .restart local v14    # "ev":Lcn/nubia/calendar/model/Event;
    iget v0, v14, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v39, v0

    .line 4115
    .local v39, "startTime":I
    iget v13, v14, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 4116
    .local v13, "endTime":I
    iget v0, v14, Lcn/nubia/calendar/model/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4117
    .local v17, "left":I
    iget v0, v14, Lcn/nubia/calendar/model/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v33, v0

    .line 4118
    .local v33, "right":I
    iget v0, v14, Lcn/nubia/calendar/model/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v40, v0

    .line 4119
    .local v40, "top":I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_6

    .line 4120
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    .line 4122
    :cond_6
    iget v0, v14, Lcn/nubia/calendar/model/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v2, v0

    .line 4123
    .local v2, "bottom":I
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-le v2, v0, :cond_7

    .line 4124
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 4140
    :cond_7
    const/16 v41, 0x2710

    .line 4141
    .local v41, "upDistanceMin":I
    const/16 v11, 0x2710

    .line 4142
    .local v11, "downDistanceMin":I
    const/16 v18, 0x2710

    .line 4143
    .local v18, "leftDistanceMin":I
    const/16 v34, 0x2710

    .line 4144
    .local v34, "rightDistanceMin":I
    const/16 v42, 0x0

    .line 4145
    .local v42, "upEvent":Lcn/nubia/calendar/model/Event;
    const/4 v12, 0x0

    .line 4146
    .local v12, "downEvent":Lcn/nubia/calendar/model/Event;
    const/16 v19, 0x0

    .line 4147
    .local v19, "leftEvent":Lcn/nubia/calendar/model/Event;
    const/16 v35, 0x0

    .line 4151
    .local v35, "rightEvent":Lcn/nubia/calendar/model/Event;
    const/4 v9, 0x0

    .line 4152
    .local v9, "distance1":I
    const/4 v10, 0x0

    .line 4153
    .local v10, "distance2":I
    const/16 v43, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    .line 4154
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 4155
    sub-int v9, v17, v28

    .line 4159
    :cond_8
    :goto_5
    sub-int v10, v40, v27

    .line 4182
    :cond_9
    :goto_6
    move/from16 v0, v37

    if-lt v9, v0, :cond_a

    move/from16 v0, v37

    if-ne v9, v0, :cond_b

    move/from16 v0, v38

    if-ge v10, v0, :cond_b

    .line 4184
    :cond_a
    move-object/from16 v36, v14

    .line 4185
    move/from16 v37, v9

    .line 4186
    move/from16 v38, v10

    .line 4191
    :cond_b
    const/16 v16, 0x0

    .local v16, "jj":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_31

    .line 4192
    move/from16 v0, v16

    if-ne v0, v15, :cond_1d

    .line 4191
    :cond_c
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 4074
    .end local v2    # "bottom":I
    .end local v9    # "distance1":I
    .end local v10    # "distance2":I
    .end local v11    # "downDistanceMin":I
    .end local v12    # "downEvent":Lcn/nubia/calendar/model/Event;
    .end local v13    # "endTime":I
    .end local v14    # "ev":Lcn/nubia/calendar/model/Event;
    .end local v16    # "jj":I
    .end local v17    # "left":I
    .end local v18    # "leftDistanceMin":I
    .end local v19    # "leftEvent":Lcn/nubia/calendar/model/Event;
    .end local v33    # "right":I
    .end local v34    # "rightDistanceMin":I
    .end local v35    # "rightEvent":Lcn/nubia/calendar/model/Event;
    .end local v39    # "startTime":I
    .end local v40    # "top":I
    .end local v41    # "upDistanceMin":I
    .end local v42    # "upEvent":Lcn/nubia/calendar/model/Event;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_e

    .line 4075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 4077
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_4

    .line 4078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 4083
    .end local v27    # "prevBottom":I
    .end local v29    # "prevLeft":I
    .end local v31    # "prevRight":I
    .end local v32    # "prevTop":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 4084
    .restart local v32    # "prevTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 4085
    .restart local v27    # "prevBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 4086
    .restart local v29    # "prevLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .restart local v31    # "prevRight":I
    goto/16 :goto_2

    .line 4094
    :cond_10
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_11

    .line 4096
    const/16 v30, 0x4

    .line 4097
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 4098
    :cond_11
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-gt v0, v1, :cond_12

    .line 4100
    const/16 v30, 0x1

    .line 4101
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 4102
    :cond_12
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-lt v0, v1, :cond_5

    .line 4104
    const/16 v30, 0x2

    .line 4105
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 4156
    .restart local v2    # "bottom":I
    .restart local v9    # "distance1":I
    .restart local v10    # "distance2":I
    .restart local v11    # "downDistanceMin":I
    .restart local v12    # "downEvent":Lcn/nubia/calendar/model/Event;
    .restart local v13    # "endTime":I
    .restart local v14    # "ev":Lcn/nubia/calendar/model/Event;
    .restart local v17    # "left":I
    .restart local v18    # "leftDistanceMin":I
    .restart local v19    # "leftEvent":Lcn/nubia/calendar/model/Event;
    .restart local v33    # "right":I
    .restart local v34    # "rightDistanceMin":I
    .restart local v35    # "rightEvent":Lcn/nubia/calendar/model/Event;
    .restart local v39    # "startTime":I
    .restart local v40    # "top":I
    .restart local v41    # "upDistanceMin":I
    .restart local v42    # "upEvent":Lcn/nubia/calendar/model/Event;
    :cond_13
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    .line 4157
    sub-int v9, v28, v33

    goto/16 :goto_5

    .line 4160
    :cond_14
    const/16 v43, 0x2

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 4161
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 4162
    sub-int v9, v17, v28

    .line 4166
    :cond_15
    :goto_9
    sub-int v10, v32, v2

    goto/16 :goto_6

    .line 4163
    :cond_16
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 4164
    sub-int v9, v28, v33

    goto :goto_9

    .line 4167
    :cond_17
    const/16 v43, 0x4

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_1a

    .line 4168
    move/from16 v0, v28

    if-gt v2, v0, :cond_19

    .line 4169
    sub-int v9, v28, v2

    .line 4173
    :cond_18
    :goto_a
    sub-int v10, v17, v31

    goto/16 :goto_6

    .line 4170
    :cond_19
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 4171
    sub-int v9, v40, v28

    goto :goto_a

    .line 4174
    :cond_1a
    const/16 v43, 0x8

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    .line 4175
    move/from16 v0, v28

    if-gt v2, v0, :cond_1c

    .line 4176
    sub-int v9, v28, v2

    .line 4180
    :cond_1b
    :goto_b
    sub-int v10, v29, v33

    goto/16 :goto_6

    .line 4177
    :cond_1c
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_1b

    .line 4178
    sub-int v9, v40, v28

    goto :goto_b

    .line 4195
    .restart local v16    # "jj":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/calendar/model/Event;

    .line 4196
    .local v21, "neighbor":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    .line 4197
    .local v24, "neighborLeft":I
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v25, v0

    .line 4198
    .local v25, "neighborRight":I
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v39

    if-gt v0, v1, :cond_25

    .line 4201
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 4202
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v43, v0

    sub-int v8, v39, v43

    .line 4203
    .local v8, "distance":I
    move/from16 v0, v41

    if-ge v8, v0, :cond_20

    .line 4204
    move/from16 v41, v8

    .line 4205
    move-object/from16 v42, v21

    .line 4262
    .end local v8    # "distance":I
    :cond_1e
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_2d

    .line 4265
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 4266
    .local v4, "center":I
    const/4 v8, 0x0

    .line 4267
    .restart local v8    # "distance":I
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 4268
    .local v22, "neighborBottom":I
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4269
    .local v26, "neighborTop":I
    move/from16 v0, v22

    if-gt v0, v4, :cond_2b

    .line 4270
    sub-int v8, v4, v22

    .line 4274
    :cond_1f
    :goto_d
    move/from16 v0, v34

    if-ge v8, v0, :cond_2c

    .line 4275
    move/from16 v34, v8

    .line 4276
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 4206
    .end local v4    # "center":I
    .end local v22    # "neighborBottom":I
    .end local v26    # "neighborTop":I
    :cond_20
    move/from16 v0, v41

    if-ne v8, v0, :cond_1e

    .line 4207
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 4208
    .restart local v4    # "center":I
    const/4 v5, 0x0

    .line 4209
    .local v5, "currentDistance":I
    move-object/from16 v0, v42

    iget v0, v0, Lcn/nubia/calendar/model/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v6, v0

    .line 4210
    .local v6, "currentLeft":I
    move-object/from16 v0, v42

    iget v0, v0, Lcn/nubia/calendar/model/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v7, v0

    .line 4211
    .local v7, "currentRight":I
    if-gt v7, v4, :cond_23

    .line 4212
    sub-int v5, v4, v7

    .line 4217
    :cond_21
    :goto_e
    const/16 v23, 0x0

    .line 4218
    .local v23, "neighborDistance":I
    move/from16 v0, v25

    if-gt v0, v4, :cond_24

    .line 4219
    sub-int v23, v4, v25

    .line 4223
    :cond_22
    :goto_f
    move/from16 v0, v23

    if-ge v0, v5, :cond_1e

    .line 4224
    move/from16 v41, v8

    .line 4225
    move-object/from16 v42, v21

    goto :goto_c

    .line 4213
    .end local v23    # "neighborDistance":I
    :cond_23
    if-lt v6, v4, :cond_21

    .line 4214
    sub-int v5, v6, v4

    goto :goto_e

    .line 4220
    .restart local v23    # "neighborDistance":I
    :cond_24
    move/from16 v0, v24

    if-lt v0, v4, :cond_22

    .line 4221
    sub-int v23, v24, v4

    goto :goto_f

    .line 4229
    .end local v4    # "center":I
    .end local v5    # "currentDistance":I
    .end local v6    # "currentLeft":I
    .end local v7    # "currentRight":I
    .end local v8    # "distance":I
    .end local v23    # "neighborDistance":I
    :cond_25
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-lt v0, v13, :cond_1e

    .line 4232
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 4233
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v43, v0

    sub-int v8, v43, v13

    .line 4234
    .restart local v8    # "distance":I
    if-ge v8, v11, :cond_26

    .line 4235
    move v11, v8

    .line 4236
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 4237
    :cond_26
    if-ne v8, v11, :cond_1e

    .line 4238
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 4239
    .restart local v4    # "center":I
    const/4 v5, 0x0

    .line 4240
    .restart local v5    # "currentDistance":I
    iget v0, v12, Lcn/nubia/calendar/model/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v6, v0

    .line 4241
    .restart local v6    # "currentLeft":I
    iget v0, v12, Lcn/nubia/calendar/model/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v7, v0

    .line 4242
    .restart local v7    # "currentRight":I
    if-gt v7, v4, :cond_29

    .line 4243
    sub-int v5, v4, v7

    .line 4248
    :cond_27
    :goto_10
    const/16 v23, 0x0

    .line 4249
    .restart local v23    # "neighborDistance":I
    move/from16 v0, v25

    if-gt v0, v4, :cond_2a

    .line 4250
    sub-int v23, v4, v25

    .line 4254
    :cond_28
    :goto_11
    move/from16 v0, v23

    if-ge v0, v5, :cond_1e

    .line 4255
    move v11, v8

    .line 4256
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 4244
    .end local v23    # "neighborDistance":I
    :cond_29
    if-lt v6, v4, :cond_27

    .line 4245
    sub-int v5, v6, v4

    goto :goto_10

    .line 4251
    .restart local v23    # "neighborDistance":I
    :cond_2a
    move/from16 v0, v24

    if-lt v0, v4, :cond_28

    .line 4252
    sub-int v23, v24, v4

    goto :goto_11

    .line 4271
    .end local v5    # "currentDistance":I
    .end local v6    # "currentLeft":I
    .end local v7    # "currentRight":I
    .end local v23    # "neighborDistance":I
    .restart local v22    # "neighborBottom":I
    .restart local v26    # "neighborTop":I
    :cond_2b
    move/from16 v0, v26

    if-lt v0, v4, :cond_1f

    .line 4272
    sub-int v8, v26, v4

    goto/16 :goto_d

    .line 4277
    :cond_2c
    move/from16 v0, v34

    if-ne v8, v0, :cond_c

    .line 4279
    sub-int v23, v24, v33

    .line 4280
    .restart local v23    # "neighborDistance":I
    move-object/from16 v0, v35

    iget v0, v0, Lcn/nubia/calendar/model/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v43, v33

    .line 4281
    .restart local v5    # "currentDistance":I
    move/from16 v0, v23

    if-ge v0, v5, :cond_c

    .line 4282
    move/from16 v34, v8

    .line 4283
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 4286
    .end local v4    # "center":I
    .end local v5    # "currentDistance":I
    .end local v8    # "distance":I
    .end local v22    # "neighborBottom":I
    .end local v23    # "neighborDistance":I
    .end local v26    # "neighborTop":I
    :cond_2d
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 4289
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 4290
    .restart local v4    # "center":I
    const/4 v8, 0x0

    .line 4291
    .restart local v8    # "distance":I
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 4292
    .restart local v22    # "neighborBottom":I
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/calendar/model/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4293
    .restart local v26    # "neighborTop":I
    move/from16 v0, v22

    if-gt v0, v4, :cond_2f

    .line 4294
    sub-int v8, v4, v22

    .line 4298
    :cond_2e
    :goto_12
    move/from16 v0, v18

    if-ge v8, v0, :cond_30

    .line 4299
    move/from16 v18, v8

    .line 4300
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 4295
    :cond_2f
    move/from16 v0, v26

    if-lt v0, v4, :cond_2e

    .line 4296
    sub-int v8, v26, v4

    goto :goto_12

    .line 4301
    :cond_30
    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    .line 4303
    sub-int v23, v17, v25

    .line 4304
    .restart local v23    # "neighborDistance":I
    move-object/from16 v0, v19

    iget v0, v0, Lcn/nubia/calendar/model/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v17, v43

    .line 4305
    .restart local v5    # "currentDistance":I
    move/from16 v0, v23

    if-ge v0, v5, :cond_c

    .line 4306
    move/from16 v18, v8

    .line 4307
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 4312
    .end local v4    # "center":I
    .end local v5    # "currentDistance":I
    .end local v8    # "distance":I
    .end local v21    # "neighbor":Lcn/nubia/calendar/model/Event;
    .end local v22    # "neighborBottom":I
    .end local v23    # "neighborDistance":I
    .end local v24    # "neighborLeft":I
    .end local v25    # "neighborRight":I
    .end local v26    # "neighborTop":I
    :cond_31
    move-object/from16 v0, v42

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextUp:Lcn/nubia/calendar/model/Event;

    .line 4313
    iput-object v12, v14, Lcn/nubia/calendar/model/Event;->nextDown:Lcn/nubia/calendar/model/Event;

    .line 4314
    move-object/from16 v0, v19

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextLeft:Lcn/nubia/calendar/model/Event;

    .line 4315
    move-object/from16 v0, v35

    iput-object v0, v14, Lcn/nubia/calendar/model/Event;->nextRight:Lcn/nubia/calendar/model/Event;

    .line 4111
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 4317
    .end local v2    # "bottom":I
    .end local v9    # "distance1":I
    .end local v10    # "distance2":I
    .end local v11    # "downDistanceMin":I
    .end local v12    # "downEvent":Lcn/nubia/calendar/model/Event;
    .end local v13    # "endTime":I
    .end local v14    # "ev":Lcn/nubia/calendar/model/Event;
    .end local v16    # "jj":I
    .end local v17    # "left":I
    .end local v18    # "leftDistanceMin":I
    .end local v19    # "leftEvent":Lcn/nubia/calendar/model/Event;
    .end local v33    # "right":I
    .end local v34    # "rightDistanceMin":I
    .end local v35    # "rightEvent":Lcn/nubia/calendar/model/Event;
    .end local v39    # "startTime":I
    .end local v40    # "top":I
    .end local v41    # "upDistanceMin":I
    .end local v42    # "upEvent":Lcn/nubia/calendar/model/Event;
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    goto/16 :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 6498
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 6499
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 6500
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4762
    sget-boolean v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 4763
    sget-object v7, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v8, "doDown"

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    :cond_0
    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 4768
    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    .line 4769
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOnFlingCalled:Z

    .line 4770
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContinueScroll:Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4771
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4772
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v4, v7, -0x78

    .line 4773
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 4785
    .local v5, "y":I
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 4786
    .local v0, "oldSelectedEvent":Lcn/nubia/calendar/model/Event;
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    .line 4787
    .local v1, "oldSelectionDay":I
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    .line 4788
    .local v2, "oldSelectionHour":I
    invoke-direct {p0, v4, v5, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4794
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    if-ne v1, v7, :cond_3

    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    if-ne v2, v7, :cond_3

    .line 4797
    .local v3, "pressedSelected":Z
    :goto_1
    if-nez v3, :cond_4

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v6, :cond_4

    .line 4798
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iput-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSavedClickedEvent:Lcn/nubia/calendar/model/Event;

    .line 4799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDownTouchTime:J

    .line 4800
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSetClick:Ljava/lang/Runnable;

    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mOnDownDelay:I

    int-to-long v8, v7

    invoke-virtual {p0, v6, v8, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4805
    .end local v3    # "pressedSelected":Z
    :cond_1
    :goto_2
    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 4806
    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    .line 4807
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    .line 4808
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 4809
    return-void

    .line 4775
    .end local v0    # "oldSelectedEvent":Lcn/nubia/calendar/model/Event;
    .end local v1    # "oldSelectionDay":I
    .end local v2    # "oldSelectionHour":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 4776
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .restart local v5    # "y":I
    goto :goto_0

    .restart local v0    # "oldSelectedEvent":Lcn/nubia/calendar/model/Event;
    .restart local v1    # "oldSelectionDay":I
    .restart local v2    # "oldSelectionHour":I
    :cond_3
    move v3, v6

    .line 4794
    goto :goto_1

    .line 4802
    .restart local v3    # "pressedSelected":Z
    :cond_4
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->eventClickCleanup()V

    goto :goto_2
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2944
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2945
    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    .line 2946
    .local v9, "r":Landroid/graphics/Rect;
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    if-eqz v2, :cond_0

    .line 2947
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2949
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2950
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2951
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    div-int v16, v2, v5

    .line 2952
    .local v16, "oneDayWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    div-int v15, v2, v16

    .line 2953
    .local v15, "dayLastDraw":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    .line 2954
    .local v3, "cell":I
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2955
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 2956
    .local v14, "alpha":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2957
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2958
    const/4 v4, 0x0

    .local v4, "day":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v4, v2, :cond_4

    .line 2959
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_2

    .line 2960
    if-ne v4, v15, :cond_2

    .line 2958
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2964
    :cond_2
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2965
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    if-ne v3, v2, :cond_1

    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    add-int/lit8 v11, v2, 0x1

    .line 2968
    .local v11, "lineY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-lt v11, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    if-ge v11, v2, :cond_1

    .line 2970
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2971
    rsub-int/lit8 v4, v4, 0x6

    :cond_3
    move-object/from16 v8, p0

    move v10, v4

    move-object/from16 v12, p1

    move-object v13, v7

    .line 2973
    invoke-direct/range {v8 .. v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 2977
    .end local v11    # "lineY":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_6

    .line 2978
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    .line 2979
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v4, v2, :cond_6

    .line 2980
    if-ne v4, v15, :cond_7

    .line 2981
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2983
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    if-ne v3, v2, :cond_6

    .line 2984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    add-int/lit8 v11, v2, 0x1

    .line 2990
    .restart local v11    # "lineY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-lt v11, v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    if-ge v11, v2, :cond_6

    .line 2992
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2993
    rsub-int/lit8 v4, v4, 0x6

    :cond_5
    move-object/from16 v8, p0

    move v10, v4

    move-object/from16 v12, p1

    move-object v13, v7

    .line 2995
    invoke-direct/range {v8 .. v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3003
    .end local v11    # "lineY":I
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3004
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3005
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v2, :cond_8

    .line 3010
    :goto_3
    return-void

    .line 2979
    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3008
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_3
.end method

.method private doExpandAllDayClick()V
    .locals 10

    .prologue
    const/16 v3, 0x4c

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 4813
    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    .line 4815
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 4818
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    if-nez v0, :cond_0

    .line 4819
    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v8, v8

    sub-int/2addr v0, v8

    :goto_1
    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    .line 4823
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCancellingAnimations:Z

    .line 4824
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 4825
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4827
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 4828
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4830
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 4831
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4833
    :cond_3
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCancellingAnimations:Z

    .line 4835
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    .line 4836
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    .line 4837
    const-string v8, "moreAllDayEventsTextAlpha"

    const/4 v0, 0x2

    new-array v9, v0, [I

    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    aput v0, v9, v2

    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_8

    :goto_3
    aput v2, v9, v1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    .line 4843
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_9

    move-wide v0, v4

    .line 4844
    :goto_4
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4846
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4847
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a

    move-wide v0, v6

    :goto_5
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4849
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4850
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4851
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 4853
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_b

    .line 4854
    :goto_6
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4856
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4858
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 4813
    goto/16 :goto_0

    .line 4819
    :cond_6
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    goto :goto_1

    :cond_7
    move v0, v2

    .line 4837
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move-wide v0, v6

    .line 4843
    goto :goto_4

    .line 4847
    :cond_a
    const-wide/16 v0, 0x190

    goto :goto_5

    :cond_b
    move-wide v4, v6

    .line 4853
    goto :goto_6
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 13
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 5307
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-nez v1, :cond_2

    .line 5308
    sget-boolean v1, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 5309
    sget-object v1, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v2, "doFling"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5311
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->cancelAnimation()V

    .line 5313
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5314
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->eventClickCleanup()V

    .line 5316
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOnFlingCalled:Z

    .line 5318
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 5321
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 5322
    sget-boolean v1, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 5323
    sget-object v1, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling: velocityX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int v12, v1, v2

    .line 5325
    .local v12, "deltaX":I
    if-gez v12, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    int-to-float v3, v3

    move/from16 v0, p3

    invoke-direct {p0, v1, v2, v3, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 5326
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    .line 5365
    .end local v12    # "deltaX":I
    :cond_2
    :goto_1
    return-void

    .line 5325
    .restart local v12    # "deltaX":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 5330
    .end local v12    # "deltaX":I
    :cond_4
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_5

    .line 5331
    sget-boolean v1, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 5332
    sget-object v1, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v2, "doFling: no fling"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5337
    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 5338
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    .line 5340
    sget-boolean v1, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 5341
    sget-object v1, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling: mViewStartY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " velocityY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 5347
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    const/4 v4, 0x0

    move/from16 v0, p4

    neg-float v5, v0

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->OVERFLING_DISTANCE:I

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->OVERFLING_DISTANCE:I

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5354
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_8

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-eqz v1, :cond_8

    .line 5355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCallEdgeEffectOnAbsorb:Z

    .line 5363
    :cond_7
    :goto_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContinueScroll:Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5360
    :cond_8
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gez v1, :cond_7

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-eq v1, v2, :cond_7

    .line 5361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCallEdgeEffectOnAbsorb:Z

    goto :goto_2
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5117
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->eventClickCleanup()V

    .line 5118
    iget-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    if-eqz v5, :cond_1

    .line 5210
    :cond_0
    :goto_0
    return-void

    .line 5123
    :cond_1
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5127
    sget-boolean v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 5128
    sget-object v5, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v6, "doLongPress"

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5130
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 5131
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 5133
    .local v4, "y":I
    invoke-direct {p0, v3, v4, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v2

    .line 5134
    .local v2, "validPosition":Z
    if-eqz v2, :cond_0

    .line 5140
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ne v5, v8, :cond_4

    .line 5142
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v6, v6, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 5144
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->isNotFullDay(Lcn/nubia/calendar/model/Event;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5151
    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    .line 5152
    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEnd:Z

    .line 5153
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragViewStartY:I

    .line 5154
    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5155
    iput-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    .line 5157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressY:F

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastMotionY:F

    .line 5160
    :try_start_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    invoke-virtual {v5}, Lcn/nubia/calendar/model/Event;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/model/Event;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5166
    :goto_1
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v6, v6, Lcn/nubia/calendar/model/Event;->id:J

    iput-wide v6, v5, Lcn/nubia/calendar/model/Event;->id:J

    .line 5168
    const-string v5, "yyyy-MM-dd"

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v6, v6, Lcn/nubia/calendar/model/Event;->startMillis:J

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5170
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto :goto_0

    .line 5174
    .end local v0    # "date":Ljava/lang/String;
    :cond_3
    iput v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5175
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5176
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->performLongClick()Z

    goto :goto_0

    .line 5178
    :cond_4
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 5179
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v6, v6, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 5181
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->isNotFullDay(Lcn/nubia/calendar/model/Event;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5184
    iput-boolean v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    .line 5185
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragViewStartY:I

    .line 5186
    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5187
    iput-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    .line 5189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressY:F

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastMotionY:F

    .line 5190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressX:F

    .line 5193
    :try_start_1
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    invoke-virtual {v5}, Lcn/nubia/calendar/model/Event;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/model/Event;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5199
    :goto_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v6, v6, Lcn/nubia/calendar/model/Event;->id:J

    iput-wide v6, v5, Lcn/nubia/calendar/model/Event;->id:J

    .line 5201
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto/16 :goto_0

    .line 5194
    :catch_0
    move-exception v1

    .line 5196
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v5, "exception"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5203
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_5
    iput v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5204
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5205
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->performLongClick()Z

    goto/16 :goto_0

    .line 5161
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 5214
    sget-boolean v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 5215
    sget-object v7, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v8, "doScroll"

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5217
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->cancelAnimation()V

    .line 5218
    iget-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingScroll:Z

    if-eqz v7, :cond_1

    .line 5219
    iput v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollX:F

    .line 5220
    iput v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollY:F

    .line 5221
    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingScroll:Z

    .line 5224
    :cond_1
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollX:F

    add-float/2addr v7, p3

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollX:F

    .line 5225
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollY:F

    add-float/2addr v7, p4

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollY:F

    .line 5226
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollX:F

    float-to-int v3, v7

    .line 5227
    .local v3, "distanceX":I
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollY:F

    float-to-int v4, v7

    .line 5231
    .local v4, "distanceY":I
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    if-ne v7, v6, :cond_7

    .line 5232
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5233
    .local v0, "absDistanceX":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5234
    .local v1, "absDistanceY":I
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrollStartY:I

    .line 5235
    iput v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPreviousDirection:I

    .line 5237
    if-le v0, v1, :cond_6

    .line 5238
    const/16 v7, 0x40

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 5239
    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    .line 5240
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->initNextView(I)Z

    .line 5260
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    :cond_2
    :goto_0
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_5

    .line 5261
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrollStartY:I

    add-int/2addr v7, v4

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 5264
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrollStartY:I

    int-to-float v7, v7

    add-float/2addr v7, p4

    float-to-int v5, v7

    .line 5265
    .local v5, "pulledToY":I
    if-gez v5, :cond_9

    .line 5266
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    int-to-float v8, v8

    div-float v8, p4, v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 5267
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 5268
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5277
    :cond_3
    :goto_1
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-gez v7, :cond_a

    .line 5278
    iput v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 5282
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeFirstHour()V

    .line 5285
    .end local v5    # "pulledToY":I
    :cond_5
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 5287
    iput v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5288
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5289
    return-void

    .line 5242
    .restart local v0    # "absDistanceX":I
    .restart local v1    # "absDistanceY":I
    :cond_6
    const/16 v7, 0x20

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    goto :goto_0

    .line 5244
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    :cond_7
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_2

    .line 5248
    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    .line 5249
    if-eqz v3, :cond_2

    .line 5250
    if-lez v3, :cond_8

    move v2, v6

    .line 5251
    .local v2, "direction":I
    :goto_3
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPreviousDirection:I

    if-eq v2, v7, :cond_2

    .line 5254
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->initNextView(I)Z

    .line 5255
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPreviousDirection:I

    goto :goto_0

    .line 5250
    .end local v2    # "direction":I
    :cond_8
    const/4 v2, -0x1

    goto :goto_3

    .line 5270
    .restart local v5    # "pulledToY":I
    :cond_9
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le v5, v7, :cond_3

    .line 5271
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    int-to-float v8, v8

    div-float v8, p4, v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 5272
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 5273
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 5279
    :cond_a
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le v7, v8, :cond_4

    .line 5280
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    goto :goto_2
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4992
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    if-eqz v5, :cond_1

    .line 5113
    :cond_0
    :goto_0
    return-void

    .line 4996
    :cond_1
    sget-boolean v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 4997
    sget-object v5, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v6, "doSingleTapUp"

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5001
    :cond_2
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5002
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/lit8 v25, v5, -0x78

    .line 5003
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v0, v5

    move/from16 v26, v0

    .line 5008
    .local v26, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v20, v0

    .line 5009
    .local v20, "selectedDay":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    move/from16 v21, v0

    .line 5011
    .local v21, "selectedHour":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v5, v6, :cond_6

    .line 5013
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    .line 5014
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    move/from16 v0, v25

    if-ge v0, v5, :cond_3

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v26

    if-le v0, v5, :cond_3

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    add-int/2addr v5, v6

    move/from16 v0, v26

    if-lt v0, v5, :cond_4

    :cond_3
    sget-boolean v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    if-nez v5, :cond_6

    move/from16 v0, v26

    if-ge v0, v4, :cond_6

    move/from16 v0, v26

    int-to-float v5, v0

    int-to-float v6, v4

    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    .line 5019
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->doExpandAllDayClick()V

    goto :goto_0

    .line 5005
    .end local v4    # "bottom":I
    .end local v20    # "selectedDay":I
    .end local v21    # "selectedHour":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    .line 5006
    .restart local v25    # "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v0, v5

    move/from16 v26, v0

    .restart local v26    # "y":I
    goto :goto_1

    .line 5024
    .restart local v20    # "selectedDay":I
    .restart local v21    # "selectedHour":I
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v24

    .line 5025
    .local v24, "validPosition":Z
    if-nez v24, :cond_9

    .line 5026
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v26

    if-ge v0, v5, :cond_0

    .line 5028
    new-instance v22, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 5029
    .local v22, "selectedTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 5030
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    move-object/from16 v0, v22

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 5031
    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 5033
    const-string v5, "%d-%d-%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget v8, v0, Landroid/text/format/Time;->year:I

    .line 5034
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v22

    iget v8, v0, Landroid/text/format/Time;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, v22

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 5035
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 5033
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 5037
    .local v23, "timeString":Ljava/lang/String;
    sget-object v5, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v6, "send CTRL_MSG_DO_SINGLE_TAP_UP msg "

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5038
    new-instance v16, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    invoke-direct/range {v16 .. v16}, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;-><init>()V

    .line 5039
    .local v16, "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->selectedTime:Landroid/text/format/Time;

    .line 5040
    move-object/from16 v0, v22

    iget v5, v0, Landroid/text/format/Time;->year:I

    const/16 v6, 0x7f5

    if-le v5, v6, :cond_7

    .line 5041
    const-string v5, "hd"

    const-string v6, "selectedTime.year>2037"

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    const/16 v5, 0x1f

    const/16 v6, 0xb

    const/16 v7, 0x7f5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v7}, Landroid/text/format/Time;->set(III)V

    .line 5043
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/16 v6, 0x1f

    const/16 v7, 0xb

    const/16 v8, 0x7f5

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/format/Time;->set(III)V

    .line 5045
    :cond_7
    move-object/from16 v0, v22

    iget v5, v0, Landroid/text/format/Time;->year:I

    const/16 v6, 0x7b2

    if-ge v5, v6, :cond_8

    .line 5046
    const-string v5, "hd"

    const-string v6, "selectedTime.year<1970"

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5047
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7b2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v7}, Landroid/text/format/Time;->set(III)V

    .line 5048
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7b2

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/format/Time;->set(III)V

    .line 5050
    :cond_8
    const-wide/16 v6, 0x1

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->extraLong:J

    .line 5051
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v6, 0xfa7

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 5053
    .local v18, "msg":Landroid/os/Message;
    if-eqz v18, :cond_0

    .line 5054
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 5064
    .end local v16    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v22    # "selectedTime":Landroid/text/format/Time;
    .end local v23    # "timeString":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v5, :cond_b

    const/16 v17, 0x1

    .line 5065
    .local v17, "hasSelection":Z
    :goto_2
    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchExplorationEnabled:Z

    if-eqz v5, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-ne v0, v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    move/from16 v0, v21

    if-ne v0, v5, :cond_c

    const/16 v19, 0x1

    .line 5069
    .local v19, "pressedSelected":Z
    :goto_3
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSavedClickedEvent:Lcn/nubia/calendar/model/Event;

    if-nez v5, :cond_e

    .line 5072
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5073
    new-instance v5, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v6, 0x0

    .line 5075
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v12, :cond_d

    const-wide/16 v12, 0x10

    :goto_4
    invoke-direct/range {v5 .. v13}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    .line 5073
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendCreateActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    .line 5107
    :goto_5
    new-instance v22, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 5108
    .restart local v22    # "selectedTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 5109
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    move-object/from16 v0, v22

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 5110
    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 5111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 5112
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto/16 :goto_0

    .line 5064
    .end local v17    # "hasSelection":Z
    .end local v19    # "pressedSelected":Z
    .end local v22    # "selectedTime":Landroid/text/format/Time;
    :cond_b
    const/16 v17, 0x0

    goto :goto_2

    .line 5065
    .restart local v17    # "hasSelection":Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_3

    .line 5075
    .restart local v19    # "pressedSelected":Z
    :cond_d
    const-wide/16 v12, 0x0

    goto :goto_4

    .line 5079
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_12

    .line 5081
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v5, :cond_f

    .line 5082
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 5085
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5087
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v6, v6, Lcn/nubia/calendar/model/Event;->bottom:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v27, v0

    .line 5092
    .local v27, "yLocation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-boolean v5, v5, Lcn/nubia/calendar/model/Event;->allDay:Z

    if-nez v5, :cond_10

    .line 5093
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sub-int/2addr v5, v6

    add-int v27, v27, v5

    .line 5095
    :cond_10
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedYLocation:I

    .line 5096
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mOnDownDelay:I

    add-int/lit8 v5, v5, 0x32

    int-to-long v6, v5

    .line 5097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDownTouchTime:J

    sub-long/2addr v8, v10

    sub-long v14, v6, v8

    .line 5098
    .local v14, "clearDelay":J
    const-wide/16 v6, 0x0

    cmp-long v5, v14, v6

    if-lez v5, :cond_11

    .line 5099
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewEventRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14, v15}, Lcn/nubia/calendar/submodule_day/view/DayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 5101
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewEventRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 5105
    .end local v14    # "clearDelay":J
    .end local v27    # "yLocation":I
    :cond_12
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    goto/16 :goto_5
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2661
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2662
    .local v0, "p":Landroid/graphics/Paint;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    .line 2663
    .local v1, "r":Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2664
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    if-eqz v2, :cond_0

    .line 2665
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v2, v3, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2666
    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2667
    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawAllDayText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2669
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2670
    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawHeaderLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2671
    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2673
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIs24HourFormat:Z

    if-nez v2, :cond_1

    .line 2674
    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2676
    :cond_1
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 40
    .param p1, "firstDay"    # I
    .param p2, "numDays"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3630
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->NORMAL_FONT_SIZE:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3631
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3632
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 3634
    .local v8, "eventTextPaint":Landroid/graphics/Paint;
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v4

    move/from16 v36, v0

    .line 3635
    .local v36, "startY":F
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    int-to-float v4, v4

    add-float v4, v4, v36

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v6, v6

    add-float v37, v4, v6

    .line 3636
    .local v37, "stopY":F
    const/16 v38, 0x0

    .line 3637
    .local v38, "x":F
    const/16 v30, 0x0

    .line 3640
    .local v30, "linesIndex":I
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3641
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    int-to-float v0, v4

    move/from16 v38, v0

    .line 3642
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .local v31, "linesIndex":I
    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v6, v4, v30

    .line 3645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v36, v4, v31

    .line 3646
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .restart local v31    # "linesIndex":I
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v30

    .line 3648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v36, v4, v31

    .line 3650
    const/16 v21, 0x0

    .local v21, "day":I
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move/from16 v0, v21

    if-gt v0, v4, :cond_1

    .line 3651
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v38, v0

    .line 3652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .restart local v31    # "linesIndex":I
    aput v38, v4, v30

    .line 3653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v36, v4, v31

    .line 3654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .restart local v31    # "linesIndex":I
    aput v38, v4, v30

    .line 3655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v37, v4, v31

    .line 3650
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3658
    .end local v21    # "day":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .restart local v31    # "linesIndex":I
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v30

    .line 3659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v36, v4, v31

    .line 3661
    const/16 v21, 0x0

    .restart local v21    # "day":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move/from16 v0, v21

    if-gt v0, v4, :cond_1

    .line 3662
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v38, v0

    .line 3663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .restart local v31    # "linesIndex":I
    aput v38, v4, v30

    .line 3664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v36, v4, v31

    .line 3665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v31, v30, 0x1

    .end local v30    # "linesIndex":I
    .restart local v31    # "linesIndex":I
    aput v38, v4, v30

    .line 3666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v30, v31, 0x1

    .end local v31    # "linesIndex":I
    .restart local v30    # "linesIndex":I
    aput v37, v4, v31

    .line 3661
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3670
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v30

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 3672
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3674
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v39, v4, v6

    .line 3675
    .local v39, "y":I
    add-int v4, p1, p2

    add-int/lit8 v29, v4, -0x1

    .line 3676
    .local v29, "lastDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 3677
    .local v25, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 3679
    .local v32, "numEvents":I
    const/16 v26, 0x0

    .line 3681
    .local v26, "hasMoreEvents":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    int-to-float v0, v4

    move/from16 v22, v0

    .line 3683
    .local v22, "drawHeight":F
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    int-to-float v0, v4

    move/from16 v33, v0

    .line 3685
    .local v33, "numRectangles":F
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    add-int/2addr v4, v6

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v19, v4, v6

    .line 3688
    .local v19, "allDayEventClip":I
    move/from16 v0, p2

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    .line 3689
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v4, v6, :cond_4

    sget-boolean v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    if-nez v4, :cond_4

    .line 3693
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v0, v4

    move/from16 v33, v0

    .line 3695
    move/from16 v0, v19

    int-to-float v4, v0

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v19, v0

    .line 3696
    const/16 v26, 0x1

    .line 3703
    :cond_2
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v20

    .line 3704
    .local v20, "alpha":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3705
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3706
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 3707
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/model/Event;

    .line 3708
    .local v5, "event":Lcn/nubia/calendar/model/Event;
    iget v0, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v34, v0

    .line 3709
    .local v34, "startDay":I
    iget v0, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v23, v0

    .line 3710
    .local v23, "endDay":I
    move/from16 v0, v34

    move/from16 v1, v29

    if-gt v0, v1, :cond_3

    move/from16 v0, v23

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 3706
    :cond_3
    :goto_4
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 3697
    .end local v5    # "event":Lcn/nubia/calendar/model/Event;
    .end local v20    # "alpha":I
    .end local v23    # "endDay":I
    .end local v28    # "i":I
    .end local v34    # "startDay":I
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    if-eqz v4, :cond_2

    .line 3699
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    add-int/2addr v4, v6

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v19, v4, v6

    goto :goto_2

    .line 3713
    .restart local v5    # "event":Lcn/nubia/calendar/model/Event;
    .restart local v20    # "alpha":I
    .restart local v23    # "endDay":I
    .restart local v28    # "i":I
    .restart local v34    # "startDay":I
    :cond_5
    move/from16 v0, v34

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 3714
    move/from16 v34, p1

    .line 3716
    :cond_6
    move/from16 v0, v23

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    .line 3717
    move/from16 v23, v29

    .line 3719
    :cond_7
    sub-int v35, v34, p1

    .line 3720
    .local v35, "startIndex":I
    sub-int v24, v23, p1

    .line 3721
    .local v24, "endIndex":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v4, v6, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    int-to-float v0, v4

    move/from16 v27, v0

    .line 3725
    .local v27, "height":F
    :goto_5
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v4, v4

    cmpl-float v4, v27, v4

    if-lez v4, :cond_8

    .line 3726
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v0, v4

    move/from16 v27, v0

    .line 3731
    :cond_8
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3732
    add-int/lit8 v4, v35, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition1(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v5, Lcn/nubia/calendar/model/Event;->left:F

    .line 3733
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition1(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v5, Lcn/nubia/calendar/model/Event;->right:F

    .line 3739
    :goto_6
    move/from16 v0, v39

    int-to-float v4, v0

    invoke-virtual {v5}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v27

    add-float/2addr v4, v6

    iput v4, v5, Lcn/nubia/calendar/model/Event;->top:F

    .line 3740
    iget v4, v5, Lcn/nubia/calendar/model/Event;->top:F

    add-float v4, v4, v27

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v5, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 3742
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v4, v6, :cond_d

    .line 3746
    iget v4, v5, Lcn/nubia/calendar/model/Event;->top:F

    move/from16 v0, v19

    int-to-float v6, v0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_b

    .line 3747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->incrementSkipCount([III)V

    goto/16 :goto_4

    .line 3721
    .end local v27    # "height":F
    :cond_9
    div-float v27, v22, v33

    goto :goto_5

    .line 3735
    .restart local v27    # "height":F
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v5, Lcn/nubia/calendar/model/Event;->left:F

    .line 3736
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iput v4, v5, Lcn/nubia/calendar/model/Event;->right:F

    goto :goto_6

    .line 3750
    :cond_b
    iget v4, v5, Lcn/nubia/calendar/model/Event;->bottom:F

    move/from16 v0, v19

    int-to-float v6, v0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    .line 3751
    if-eqz v26, :cond_c

    .line 3752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->incrementSkipCount([III)V

    goto/16 :goto_4

    .line 3756
    :cond_c
    move/from16 v0, v19

    int-to-float v4, v0

    iput v4, v5, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 3759
    :cond_d
    iget v4, v5, Lcn/nubia/calendar/model/Event;->top:F

    float-to-int v9, v4

    iget v4, v5, Lcn/nubia/calendar/model/Event;->bottom:F

    float-to-int v10, v4

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v4 .. v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventRect(Lcn/nubia/calendar/model/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;IIZ)Landroid/graphics/Rect;

    move-result-object v14

    .line 3761
    .local v14, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/submodule_day/view/DayView;->setupAllDayTextRect(Landroid/graphics/Rect;)V

    .line 3762
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v9, p0

    move/from16 v11, v28

    move-object v12, v5

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Lcn/nubia/calendar/submodule_day/view/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcn/nubia/calendar/model/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v13

    .line 3764
    .local v13, "layout":Landroid/text/StaticLayout;
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v12, p0

    move-object/from16 v15, p3

    invoke-direct/range {v12 .. v18}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    .line 3767
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    if-eqz v4, :cond_3

    .line 3768
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, v34

    if-gt v0, v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, v23

    if-lt v0, v4, :cond_3

    .line 3769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 3773
    .end local v5    # "event":Lcn/nubia/calendar/model/Event;
    .end local v13    # "layout":Landroid/text/StaticLayout;
    .end local v14    # "r":Landroid/graphics/Rect;
    .end local v23    # "endDay":I
    .end local v24    # "endIndex":I
    .end local v27    # "height":F
    .end local v34    # "startDay":I
    .end local v35    # "startIndex":I
    :cond_e
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3775
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsTextAlpha:I

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    if-eqz v4, :cond_11

    .line 3777
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v20

    .line 3778
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3779
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsTextAlpha:I

    shl-int/lit8 v4, v4, 0x18

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreEventsTextColor:I

    and-int/2addr v4, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3780
    const/16 v28, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    array-length v4, v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_10

    .line 3781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    aget v4, v4, v28

    if-lez v4, :cond_f

    .line 3782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSkippedAlldayEvents:[I

    aget v4, v4, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v28

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 3780
    :cond_f
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 3785
    :cond_10
    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3788
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v4, :cond_12

    .line 3791
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeAllDayNeighbors()V

    .line 3795
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->saveSelectionPosition(FFFF)V

    .line 3797
    :cond_12
    return-void
.end method

.method private drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 2750
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    if-eqz v3, :cond_1

    .line 2752
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2753
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2754
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2755
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2756
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2757
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2758
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2760
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2761
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2762
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2763
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2764
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2769
    :goto_0
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2770
    const/4 v1, -0x1

    .line 2771
    .local v1, "startIndex":I
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v2, v3, v4

    .line 2772
    .local v2, "todayIndex":I
    if-gez v2, :cond_4

    .line 2773
    const/4 v1, 0x0

    .line 2778
    :cond_0
    :goto_1
    if-ltz v1, :cond_1

    .line 2779
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2780
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2781
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2782
    invoke-direct {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2783
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2789
    :goto_2
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2790
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2791
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2795
    .end local v1    # "startIndex":I
    .end local v2    # "todayIndex":I
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v3, :cond_2

    .line 2796
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2797
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2798
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v0, v3, v4

    .line 2799
    .local v0, "daynum":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2800
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    rsub-int/lit8 v4, v0, 0x6

    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2801
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    rsub-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2806
    :goto_3
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2807
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2809
    .end local v0    # "daynum":I
    :cond_2
    return-void

    .line 2766
    :cond_3
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2767
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 2774
    .restart local v1    # "startIndex":I
    .restart local v2    # "todayIndex":I
    :cond_4
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v3, v4, :cond_0

    .line 2775
    add-int/lit8 v1, v2, 0x1

    goto/16 :goto_1

    .line 2785
    :cond_5
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2786
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 2803
    .end local v1    # "startIndex":I
    .end local v2    # "todayIndex":I
    .restart local v0    # "daynum":I
    :cond_6
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2804
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method private drawAllDayText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2870
    invoke-direct {p0, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2871
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayString:Ljava/lang/String;

    .line 2873
    .local v1, "text":Ljava/lang/String;
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTopPadding:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    add-int v9, v2, v3

    .line 2876
    .local v9, "y":I
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2877
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_LEFT_PADDING:I

    add-int/lit8 v3, v3, 0x1a

    sub-int v8, v2, v3

    .line 2886
    .local v8, "x":I
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/16 v3, 0x64

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2889
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2890
    int-to-float v2, v8

    int-to-float v3, v9

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2891
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2893
    return-void

    .line 2879
    .end local v0    # "staticLayout":Landroid/text/StaticLayout;
    .end local v8    # "x":I
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_LEFT_PADDING:I

    add-int/lit8 v8, v2, 0x1a

    .restart local v8    # "x":I
    goto :goto_0
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/16 v6, 0xc

    .line 2838
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2839
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2840
    const/16 v4, 0x91

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2841
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2842
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2843
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAmString:Ljava/lang/String;

    .line 2844
    .local v1, "text":Ljava/lang/String;
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    if-lt v4, v6, :cond_0

    .line 2845
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPmString:Ljava/lang/String;

    .line 2850
    :cond_0
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v0, v4

    .line 2852
    .local v0, "fontWidth":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2853
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 2857
    .local v2, "x":I
    :goto_0
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_AND_AMPM_MARGIN:I

    add-int v3, v4, v5

    .line 2859
    .local v3, "y":I
    int-to-float v4, v2

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2860
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    if-ge v4, v6, :cond_1

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    add-int/2addr v4, v5

    if-le v4, v6, :cond_1

    .line 2861
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPmString:Ljava/lang/String;

    .line 2862
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    rsub-int/lit8 v5, v5, 0xc

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_AND_AMPM_MARGIN:I

    add-int v3, v4, v5

    .line 2865
    int-to-float v4, v2

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2867
    :cond_1
    return-void

    .line 2855
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .restart local v2    # "x":I
    goto :goto_0
.end method

.method private drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3342
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 3344
    .local v1, "todayIndex":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 3345
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 3346
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3347
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3348
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 3354
    :goto_0
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3355
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3356
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3357
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3360
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ne v2, v6, :cond_3

    if-nez v1, :cond_3

    .line 3362
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 3364
    .local v0, "lineY":I
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 3365
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3366
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3367
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 3368
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 3373
    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3374
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 3375
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3376
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3429
    .end local v0    # "lineY":I
    :cond_0
    :goto_2
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3430
    return-void

    .line 3350
    :cond_1
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 3351
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3370
    .restart local v0    # "lineY":I
    :cond_2
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3371
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 3378
    .end local v0    # "lineY":I
    :cond_3
    if-ltz v1, :cond_7

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v1, v2, :cond_7

    .line 3381
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 3383
    .restart local v0    # "lineY":I
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_4

    .line 3384
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3385
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3386
    rsub-int/lit8 v2, v1, 0x6

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3387
    rsub-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 3393
    :goto_3
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3394
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 3395
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3396
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3400
    :cond_4
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v2, v3, :cond_0

    .line 3401
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3402
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 3403
    rsub-int/lit8 v2, v1, 0x6

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 3409
    :goto_4
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 3410
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 3411
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3412
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 3389
    :cond_5
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3390
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 3405
    :cond_6
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3406
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 3414
    .end local v0    # "lineY":I
    :cond_7
    if-gez v1, :cond_0

    .line 3416
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3417
    invoke-direct {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3418
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 3424
    :goto_5
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 3425
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 3426
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3427
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 3420
    :cond_8
    invoke-direct {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 3421
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "day"    # I
    .param p3, "top"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x1

    .line 2897
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2899
    invoke-direct {p0, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v0

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2901
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v0

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2912
    :goto_0
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2913
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2914
    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2915
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2916
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLineColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2919
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2920
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ne v0, v2, :cond_2

    .line 2921
    const/4 v7, 0x0

    .line 2922
    .local v7, "startX":I
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v6, v0, v1

    .line 2934
    .local v6, "endX":I
    :goto_1
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, p3, v0

    add-int/lit8 v8, v0, 0x1

    .line 2935
    .local v8, "y":I
    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v6

    int-to-float v4, v8

    move-object v0, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2936
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2938
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateTodayAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2939
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2941
    :cond_0
    return-void

    .line 2906
    .end local v6    # "endX":I
    .end local v7    # "startX":I
    .end local v8    # "y":I
    :cond_1
    invoke-direct {p0, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2908
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 2925
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v7

    .line 2926
    .restart local v7    # "startX":I
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v6

    .restart local v6    # "endX":I
    goto :goto_1

    .line 2930
    .end local v6    # "endX":I
    .end local v7    # "startX":I
    :cond_3
    invoke-direct {p0, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v7

    .line 2931
    .restart local v7    # "startX":I
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v6

    .restart local v6    # "endX":I
    goto :goto_1
.end method

.method private drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 31
    .param p1, "dayStr"    # Ljava/lang/String;
    .param p2, "day"    # I
    .param p3, "cell"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3106
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleDate:I

    move/from16 v28, v0

    add-int v6, v28, p2

    .line 3107
    .local v6, "dateNum":I
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleMonth:I

    .line 3108
    .local v12, "month":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleYear:I

    move/from16 v27, v0

    .line 3111
    .local v27, "year":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthLength:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-le v6, v0, :cond_0

    .line 3112
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthLength:I

    move/from16 v28, v0

    sub-int v6, v6, v28

    .line 3113
    add-int/lit8 v12, v12, 0x1

    .line 3114
    const/16 v28, 0xc

    move/from16 v0, v28

    if-lt v12, v0, :cond_0

    .line 3115
    const/4 v12, 0x0

    .line 3116
    add-int/lit8 v27, v27, 0x1

    .line 3120
    :cond_0
    const/16 v28, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3121
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    move/from16 v29, v0

    sub-int v18, v28, v29

    .line 3122
    .local v18, "todayIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    move/from16 v29, v0

    sub-int v15, v28, v29

    .line 3123
    .local v15, "selectedDayIndex":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 3126
    .local v7, "dateNumStr":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 3127
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition2(I)I

    move-result v21

    .line 3132
    .local v21, "x":I
    :goto_0
    sget-object v28, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3133
    sget v28, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_FONT_SIZE:F

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3134
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 3135
    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v23, v28, v29

    .line 3136
    .local v23, "y":F
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition2(I)I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition2(I)I

    move-result v29

    sub-int v8, v28, v29

    .line 3139
    .local v8, "dayWidth":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    div-int/lit8 v29, v8, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v19, v28, v29

    .line 3140
    .local v19, "weekdayX":F
    rem-int/lit8 v5, p2, 0x7

    .line 3148
    .local v5, "column":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayLunarTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3150
    const/16 v22, 0x0

    .line 3151
    .local v22, "xyMax":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "window"

    .line 3153
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 3154
    .local v20, "win":Landroid/view/WindowManager;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 3155
    .local v16, "size":Landroid/graphics/Point;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 3156
    .local v9, "dis":Landroid/view/Display;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3157
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    .line 3159
    .end local v9    # "dis":Landroid/view/Display;
    .end local v16    # "size":Landroid/graphics/Point;
    .end local v20    # "win":Landroid/view/WindowManager;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsLunarVisible:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 3161
    move/from16 v0, p2

    if-ne v15, v0, :cond_3

    .line 3162
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 3163
    .local v14, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedDayColor:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3164
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3165
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekSolarDateHeight:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    .line 3166
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    const/high16 v29, 0x41100000    # 9.0f

    add-float v17, v28, v29

    .line 3167
    .local v17, "tmpY":F
    const/16 v28, 0x780

    move/from16 v0, v22

    move/from16 v1, v28

    if-le v0, v1, :cond_2

    .line 3168
    move/from16 v0, v22

    add-int/lit16 v0, v0, -0x780

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x20

    add-int/lit8 v28, v28, -0x5

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v17, v17, v28

    .line 3169
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCircleSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3173
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v17    # "tmpY":F
    :cond_3
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 3174
    .local v13, "p1":Landroid/graphics/Paint;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3175
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_a

    .line 3176
    const/high16 v28, 0x41a00000    # 20.0f

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3177
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayViewColor:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3179
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayViewStrSize:F

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3180
    const/16 v28, 0x7f

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3184
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    const/high16 v29, 0x41800000    # 16.0f

    sub-float v29, v19, v29

    const/high16 v30, 0x41800000    # 16.0f

    add-float v30, v30, v23

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3195
    :goto_2
    sget-object v28, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3196
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayLunarTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3197
    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 3198
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayAndWeekViewtodayColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3200
    :cond_4
    move/from16 v0, p2

    if-ne v15, v0, :cond_5

    .line 3201
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentLunarDayTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3203
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayLunarTextSize:F

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3204
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeLunarDay(III)Ljava/lang/String;

    move-result-object v11

    .line 3205
    .local v11, "lunarDay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDateHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekSolarDateHeight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    .line 3206
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v24, v28, v29

    .line 3207
    .local v24, "y1":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 3208
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekSolarDateHeight:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p4

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3209
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayLunarTextSize:F

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3210
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekSolarDateHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v24, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLunarDatepadding:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v28

    move-object/from16 v3, p5

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3212
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 3214
    sget-object v28, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3215
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDaySolarTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3216
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDaySolarTextSize:F

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3218
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekSolarDateHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v25, v28, v29

    .line 3219
    .local v25, "y2":F
    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_6

    .line 3220
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayAndWeekViewtodayColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3222
    :cond_6
    move/from16 v0, p2

    if-ne v15, v0, :cond_7

    .line 3223
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentLunarDayTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3225
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthTodaySolarDateTextSize:F

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3226
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 3227
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p4

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3228
    const/16 v28, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3231
    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v25

    move-object/from16 v3, p5

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3232
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 3266
    .end local v11    # "lunarDay":Ljava/lang/String;
    .end local v13    # "p1":Landroid/graphics/Paint;
    .end local v24    # "y1":F
    :goto_3
    return-void

    .line 3129
    .end local v5    # "column":I
    .end local v8    # "dayWidth":I
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v19    # "weekdayX":F
    .end local v21    # "x":I
    .end local v22    # "xyMax":I
    .end local v23    # "y":F
    .end local v25    # "y2":F
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition2(I)I

    move-result v21

    .restart local v21    # "x":I
    goto/16 :goto_0

    .line 3157
    .restart local v5    # "column":I
    .restart local v8    # "dayWidth":I
    .restart local v9    # "dis":Landroid/view/Display;
    .restart local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v16    # "size":Landroid/graphics/Point;
    .restart local v19    # "weekdayX":F
    .restart local v20    # "win":Landroid/view/WindowManager;
    .restart local v22    # "xyMax":I
    .restart local v23    # "y":F
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    goto/16 :goto_1

    .line 3186
    .end local v9    # "dis":Landroid/view/Display;
    .end local v16    # "size":Landroid/graphics/Point;
    .end local v20    # "win":Landroid/view/WindowManager;
    .restart local v13    # "p1":Landroid/graphics/Paint;
    :cond_a
    const/high16 v28, 0x41a00000    # 20.0f

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3187
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayViewWeekStr:F

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3188
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayViewColor:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3191
    const/high16 v28, 0x41800000    # 16.0f

    sub-float v28, v19, v28

    const/high16 v29, 0x41800000    # 16.0f

    add-float v29, v29, v23

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 3235
    .end local v13    # "p1":Landroid/graphics/Paint;
    :cond_b
    move/from16 v0, p2

    if-ne v15, v0, :cond_d

    .line 3236
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 3237
    .restart local v14    # "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedDayColor:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3238
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3239
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDateHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    add-float v26, v28, v29

    .line 3241
    .local v26, "y4":F
    const/16 v28, 0x780

    move/from16 v0, v22

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 3242
    move/from16 v0, v22

    add-int/lit16 v0, v0, -0x780

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x20

    add-int/lit8 v28, v28, -0x5

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v26, v26, v28

    .line 3243
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCircleSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3245
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v26    # "y4":F
    :cond_d
    const/high16 v28, 0x41800000    # 16.0f

    add-float v28, v28, v23

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v28

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3247
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 3248
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p4

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3250
    sget-object v28, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3251
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDaySolarTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3252
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDaySolarTextSize:F

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3253
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDateHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v25, v28, v29

    .line 3254
    .restart local v25    # "y2":F
    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_e

    .line 3255
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayAndWeekViewtodayColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3257
    :cond_e
    move/from16 v0, p2

    if-ne v15, v0, :cond_f

    .line 3258
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentLunarDayTextColor:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3260
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthTodaySolarDateTextSize:F

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3261
    const/16 v28, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3263
    const/high16 v28, 0x41800000    # 16.0f

    sub-float v28, v25, v28

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v28

    move-object/from16 v3, p5

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3264
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2812
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2813
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    .line 2815
    .local v3, "cell":I
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDateStrWidth:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellWidth:I

    if-ge v0, v1, :cond_2

    .line 2816
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs:[Ljava/lang/String;

    .line 2820
    .local v7, "dayNames":[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2821
    const/4 v2, 0x0

    .local v2, "day":I
    :goto_1
    const/4 v0, 0x7

    if-ge v2, v0, :cond_4

    .line 2822
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleDayOfWeek:I

    add-int v8, v2, v0

    .line 2823
    .local v8, "dayOfWeek":I
    const/16 v0, 0xe

    if-lt v8, v0, :cond_0

    .line 2824
    add-int/lit8 v8, v8, -0xe

    .line 2826
    :cond_0
    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarDateBannerTextColor:I

    .line 2827
    .local v6, "color":I
    const/4 v0, 0x6

    if-ne v8, v0, :cond_3

    .line 2828
    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeek_saturdayColor:I

    .line 2832
    :cond_1
    :goto_2
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2833
    aget-object v1, v7, v8

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2821
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2818
    .end local v2    # "day":I
    .end local v6    # "color":I
    .end local v7    # "dayNames":[Ljava/lang/String;
    .end local v8    # "dayOfWeek":I
    :cond_2
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v7    # "dayNames":[Ljava/lang/String;
    goto :goto_0

    .line 2829
    .restart local v2    # "day":I
    .restart local v6    # "color":I
    .restart local v8    # "dayOfWeek":I
    :cond_3
    if-nez v8, :cond_1

    .line 2830
    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeek_sundayColor:I

    goto :goto_2

    .line 2835
    .end local v6    # "color":I
    .end local v8    # "dayOfWeek":I
    :cond_4
    return-void
.end method

.method private drawEventRect(Lcn/nubia/calendar/model/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;IIZ)Landroid/graphics/Rect;
    .locals 14
    .param p1, "event"    # Lcn/nubia/calendar/model/Event;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;
    .param p4, "eventTextPaint"    # Landroid/graphics/Paint;
    .param p5, "visibleTop"    # I
    .param p6, "visibleBot"    # I
    .param p7, "isAllEvent"    # Z

    .prologue
    .line 4324
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    .line 4327
    .local v6, "r":Landroid/graphics/Rect;
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_a

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_a

    .line 4328
    iget v10, p1, Lcn/nubia/calendar/model/Event;->top:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4329
    iget v10, p1, Lcn/nubia/calendar/model/Event;->bottom:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 4338
    :goto_0
    iget v10, p1, Lcn/nubia/calendar/model/Event;->left:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 4339
    iget v10, p1, Lcn/nubia/calendar/model/Event;->right:F

    float-to-int v10, v10

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 4347
    iget v3, p1, Lcn/nubia/calendar/model/Event;->color:I

    .line 4350
    .local v3, "color":I
    const/4 v9, 0x0

    .line 4351
    .local v9, "strokeColor":I
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    move-result-object v10

    iget-wide v12, p1, Lcn/nubia/calendar/model/Event;->calendarId:J

    .line 4352
    invoke-virtual {v10, v12, v13}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->getColorByCalendarId(J)Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    move-result-object v4

    .line 4353
    .local v4, "eventColor":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    if-eqz v4, :cond_b

    .line 4354
    iget v9, v4, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->mStroke:I

    .line 4362
    :goto_1
    iget v10, p1, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    .line 4376
    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4380
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4382
    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 4383
    .local v5, "floorHalfStroke":I
    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v2, v10

    .line 4386
    .local v2, "ceilHalfStroke":I
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_0

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    :cond_0
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_c

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_c

    iget v10, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v11, v11, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ne v10, v11, :cond_c

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_c

    .line 4389
    :cond_1
    iget v10, p1, Lcn/nubia/calendar/model/Event;->top:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4390
    iget v10, p1, Lcn/nubia/calendar/model/Event;->bottom:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 4401
    :goto_2
    iget v10, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v5

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 4402
    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 4405
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_2

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    :cond_2
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_11

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_11

    iget v10, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v11, v11, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ne v10, v11, :cond_11

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_11

    .line 4408
    :cond_3
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    if-nez v10, :cond_4

    .line 4410
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    .line 4411
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->top:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4412
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4413
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->left:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 4414
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->right:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 4417
    :cond_4
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressY:F

    sub-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragViewStartY:I

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    sget v12, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_SCALE_Y:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4421
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressY:F

    sub-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragViewStartY:I

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    sget v12, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_SCALE_Y:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4425
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressX:F

    sub-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    sget v12, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_SCALE_X:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 4427
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressX:F

    sub-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    sget v12, Lcn/nubia/calendar/submodule_day/view/DayView;->LONG_PRESS_SCALE_X:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 4430
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v7, v10, v11

    .line 4431
    .local v7, "rectHeight":I
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v11

    .line 4433
    .local v8, "rectWidth":I
    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 4435
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_5

    .line 4437
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4439
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4442
    :cond_5
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gtz v10, :cond_6

    .line 4443
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4444
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4446
    :cond_6
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 4447
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 4477
    :cond_7
    :goto_3
    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v10, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4480
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4481
    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventBgAlpha:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4483
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4485
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v10, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventRectStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4508
    .end local v7    # "rectHeight":I
    .end local v8    # "rectWidth":I
    :goto_4
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4552
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_8

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_9

    :cond_8
    iget-boolean v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v10, :cond_13

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_13

    iget v10, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v11, v11, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ne v10, v11, :cond_13

    iget-wide v10, p1, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v12, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_13

    .line 4570
    :cond_9
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v5

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4571
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 4572
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 4573
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 4584
    :goto_5
    return-object v6

    .line 4331
    .end local v2    # "ceilHalfStroke":I
    .end local v3    # "color":I
    .end local v4    # "eventColor":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    .end local v5    # "floorHalfStroke":I
    .end local v9    # "strokeColor":I
    :cond_a
    iget v10, p1, Lcn/nubia/calendar/model/Event;->top:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v10, v11

    move/from16 v0, p5

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4333
    iget v10, p1, Lcn/nubia/calendar/model/Event;->bottom:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    move/from16 v0, p6

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 4357
    .restart local v3    # "color":I
    .restart local v4    # "eventColor":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    .restart local v9    # "strokeColor":I
    :cond_b
    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->getCOLOR_FILL_DEFAULT()I

    move-result v9

    goto/16 :goto_1

    .line 4395
    .restart local v2    # "ceilHalfStroke":I
    .restart local v5    # "floorHalfStroke":I
    :cond_c
    iget v10, p1, Lcn/nubia/calendar/model/Event;->top:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    move/from16 v0, p5

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4397
    iget v10, p1, Lcn/nubia/calendar/model/Event;->bottom:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    move/from16 v0, p6

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 4450
    .restart local v7    # "rectHeight":I
    .restart local v8    # "rectWidth":I
    :cond_d
    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_7

    .line 4451
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_e

    .line 4453
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4455
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4458
    :cond_e
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gtz v10, :cond_f

    .line 4459
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4460
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4463
    :cond_f
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    if-gt v10, v11, :cond_10

    .line 4464
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 4465
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 4469
    :cond_10
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    if-lt v10, v11, :cond_7

    .line 4470
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 4471
    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 4488
    .end local v7    # "rectHeight":I
    .end local v8    # "rectWidth":I
    :cond_11
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x3

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 4489
    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v10, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4490
    if-eqz p7, :cond_12

    .line 4491
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x3

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 4492
    iget v10, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 4493
    iget v10, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4494
    iget v10, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, 0x3

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 4495
    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllEventColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4500
    :goto_6
    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4501
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4506
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventRectStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 4497
    :cond_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 4579
    :cond_13
    iget v10, p1, Lcn/nubia/calendar/model/Event;->top:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 4580
    iget v10, p1, Lcn/nubia/calendar/model/Event;->bottom:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 4581
    iget v10, p1, Lcn/nubia/calendar/model/Event;->left:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 4582
    iget v10, p1, Lcn/nubia/calendar/model/Event;->right:F

    float-to-int v10, v10

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5
.end method

.method private drawEventRectStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "strokeColor"    # I

    .prologue
    .line 4591
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4593
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4594
    return-void
.end method

.method private drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V
    .locals 9
    .param p1, "eventLayout"    # Landroid/text/StaticLayout;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "center"    # Z

    .prologue
    .line 4621
    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 4622
    .local v6, "width":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v8

    .line 4626
    .local v0, "height":I
    if-eqz p1, :cond_0

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_1

    .line 4664
    :cond_0
    :goto_0
    return-void

    .line 4630
    :cond_1
    const/4 v5, 0x0

    .line 4631
    .local v5, "totalLineHeight":I
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 4632
    .local v3, "lineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 4633
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    .line 4634
    .local v2, "lineBottom":I
    if-gt v2, v0, :cond_2

    .line 4635
    move v5, v2

    .line 4632
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4641
    .end local v2    # "lineBottom":I
    :cond_2
    if-eqz v5, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-gt v7, p5, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    if-lt v7, p4, :cond_0

    .line 4647
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 4649
    if-eqz p6, :cond_3

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v5

    div-int/lit8 v4, v7, 0x2

    .line 4651
    .local v4, "padding":I
    :goto_2
    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4652
    const/4 v7, 0x0

    iput v7, p2, Landroid/graphics/Rect;->left:I

    .line 4653
    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 4654
    const/4 v7, 0x0

    iput v7, p2, Landroid/graphics/Rect;->top:I

    .line 4655
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 4661
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4662
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4663
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 4649
    .end local v4    # "padding":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 31
    .param p1, "date"    # I
    .param p2, "dayIndex"    # I
    .param p3, "top"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 3905
    .local v12, "eventTextPaint":Landroid/graphics/Paint;
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3906
    rsub-int/lit8 p2, p2, 0x6

    .line 3907
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 3908
    .local v4, "left":I
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 3913
    .local v6, "cellWidth":I
    :goto_0
    sget v26, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 3916
    .local v26, "cellHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    .line 3917
    .local v30, "selectionArea":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    add-int/lit8 v5, v26, 0x1

    mul-int/2addr v3, v5

    add-int v3, v3, p3

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3918
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v26

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3919
    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3920
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 3923
    .local v27, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 3924
    .local v29, "numEvents":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    .line 3926
    .local v2, "geometry":Lcn/nubia/calendar/model/EventGeometry;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    sub-int v14, v3, v5

    .line 3929
    .local v14, "viewEndY":I
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v25

    .line 3930
    .local v25, "alpha":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3931
    const/4 v10, 0x0

    .local v10, "i":I
    move/from16 v28, v10

    .end local v10    # "i":I
    .local v28, "i":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 3932
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/model/Event;

    .line 3935
    .local v7, "event":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v8, v3, Lcn/nubia/calendar/model/Event;->id:J

    iget-wide v0, v7, Lcn/nubia/calendar/model/Event;->id:J

    move-wide/from16 v18, v0

    cmp-long v3, v8, v18

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_3

    iget v3, v7, Lcn/nubia/calendar/model/Event;->startDay:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ne v3, v5, :cond_3

    iget-wide v8, v7, Lcn/nubia/calendar/model/Event;->id:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v0, v3, Lcn/nubia/calendar/model/Event;->id:J

    move-wide/from16 v18, v0

    cmp-long v3, v8, v18

    if-nez v3, :cond_3

    .line 3931
    :cond_1
    :goto_2
    add-int/lit8 v10, v28, 0x1

    .end local v28    # "i":I
    .restart local v10    # "i":I
    move/from16 v28, v10

    .end local v10    # "i":I
    .restart local v28    # "i":I
    goto :goto_1

    .line 3910
    .end local v2    # "geometry":Lcn/nubia/calendar/model/EventGeometry;
    .end local v4    # "left":I
    .end local v6    # "cellWidth":I
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    .end local v14    # "viewEndY":I
    .end local v25    # "alpha":I
    .end local v26    # "cellHeight":I
    .end local v27    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    .end local v28    # "i":I
    .end local v29    # "numEvents":I
    .end local v30    # "selectionArea":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 3911
    .restart local v4    # "left":I
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "cellWidth":I
    goto/16 :goto_0

    .restart local v2    # "geometry":Lcn/nubia/calendar/model/EventGeometry;
    .restart local v7    # "event":Lcn/nubia/calendar/model/Event;
    .restart local v14    # "viewEndY":I
    .restart local v25    # "alpha":I
    .restart local v26    # "cellHeight":I
    .restart local v27    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    .restart local v28    # "i":I
    .restart local v29    # "numEvents":I
    .restart local v30    # "selectionArea":Landroid/graphics/Rect;
    :cond_3
    move/from16 v3, p1

    move/from16 v5, p3

    .line 3942
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/calendar/model/EventGeometry;->computeEventRect(IIIILcn/nubia/calendar/model/Event;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3947
    iget v3, v7, Lcn/nubia/calendar/model/Event;->bottom:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_1

    iget v3, v7, Lcn/nubia/calendar/model/Event;->top:F

    int-to-float v5, v14

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_1

    .line 3951
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_4

    .line 3953
    move-object/from16 v0, v30

    invoke-virtual {v2, v7, v0}, Lcn/nubia/calendar/model/EventGeometry;->eventIntersectsSelection(Lcn/nubia/calendar/model/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3957
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v15}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventRect(Lcn/nubia/calendar/model/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;IIZ)Landroid/graphics/Rect;

    move-result-object v13

    .line 3959
    .local v13, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 3962
    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gt v3, v14, :cond_1

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-lt v3, v5, :cond_1

    .line 3965
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move/from16 v10, v28

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcn/nubia/calendar/model/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v16

    .line 3968
    .local v16, "layout":Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    add-int/lit8 v19, v3, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    sub-int v20, v3, v5

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v17, v13

    move-object/from16 v18, p4

    invoke-direct/range {v15 .. v21}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    goto/16 :goto_2

    .line 3971
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v16    # "layout":Landroid/text/StaticLayout;
    :cond_5
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3974
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v3, :cond_b

    .line 3976
    const/4 v10, 0x0

    .end local v28    # "i":I
    .restart local v10    # "i":I
    :goto_3
    move/from16 v0, v29

    if-ge v10, v0, :cond_6

    .line 3978
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/model/Event;

    .line 3980
    .restart local v7    # "event":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v8, v3, Lcn/nubia/calendar/model/Event;->id:J

    iget-wide v0, v7, Lcn/nubia/calendar/model/Event;->id:J

    move-wide/from16 v18, v0

    cmp-long v3, v8, v18

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v3, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v5, v7, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ne v3, v5, :cond_a

    .line 3984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_8

    move/from16 v3, p1

    move/from16 v5, p3

    .line 3986
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/calendar/model/EventGeometry;->computeEventRect(IIIILcn/nubia/calendar/model/Event;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 4024
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v3, :cond_7

    .line 4026
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeNeighbors()V

    .line 4028
    :cond_7
    return-void

    .line 3992
    .restart local v7    # "event":Lcn/nubia/calendar/model/Event;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_9

    .line 3995
    move-object/from16 v0, v30

    invoke-virtual {v2, v7, v0}, Lcn/nubia/calendar/model/EventGeometry;->eventIntersectsSelection(Lcn/nubia/calendar/model/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4000
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v7

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, v12

    move/from16 v23, v14

    invoke-direct/range {v17 .. v24}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventRect(Lcn/nubia/calendar/model/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;IIZ)Landroid/graphics/Rect;

    move-result-object v13

    .line 4002
    .restart local v13    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 4011
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcn/nubia/calendar/model/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v16

    .line 4014
    .restart local v16    # "layout":Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    add-int/lit8 v19, v3, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    sub-int v20, v3, v5

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v17, v13

    move-object/from16 v18, p4

    invoke-direct/range {v15 .. v21}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    .line 3976
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v16    # "layout":Landroid/text/StaticLayout;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    .end local v10    # "i":I
    .restart local v28    # "i":I
    :cond_b
    move/from16 v10, v28

    .end local v28    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_4
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3280
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 3282
    .local v7, "savedStyle":Landroid/graphics/Paint$Style;
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3283
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v13

    int-to-float v9, v13

    .line 3287
    .local v9, "stopX":F
    :goto_0
    const/4 v12, 0x0

    .line 3288
    .local v12, "y":F
    sget v13, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    int-to-float v3, v13

    .line 3289
    .local v3, "deltaY":F
    const/4 v5, 0x0

    .line 3290
    .local v5, "linesIndex":I
    const/4 v8, 0x0

    .line 3291
    .local v8, "startY":F
    sget v13, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x18

    add-int/lit8 v13, v13, 0x1

    int-to-float v10, v13

    .line 3292
    .local v10, "stopY":F
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    int-to-float v11, v13

    .line 3300
    .local v11, "x":F
    sget v13, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 3301
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3302
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3303
    const/4 v4, 0x0

    .local v4, "hour":I
    move v6, v5

    .end local v5    # "linesIndex":I
    .local v6, "linesIndex":I
    :goto_1
    const/16 v13, 0x18

    if-gt v4, v13, :cond_1

    .line 3304
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    sget v14, Lcn/nubia/calendar/submodule_day/view/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v14, v13, v6

    .line 3305
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v12, v13, v5

    .line 3306
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    aput v9, v13, v6

    .line 3307
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v12, v13, v5

    .line 3308
    add-float/2addr v12, v3

    .line 3303
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3285
    .end local v3    # "deltaY":F
    .end local v4    # "hour":I
    .end local v6    # "linesIndex":I
    .end local v8    # "startY":F
    .end local v9    # "stopX":F
    .end local v10    # "stopY":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_0
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v13}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v9, v13

    .restart local v9    # "stopX":F
    goto :goto_0

    .line 3310
    .restart local v3    # "deltaY":F
    .restart local v4    # "hour":I
    .restart local v6    # "linesIndex":I
    .restart local v8    # "startY":F
    .restart local v10    # "stopY":F
    .restart local v11    # "x":F
    .restart local v12    # "y":F
    :cond_1
    sget v13, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerVerticalColor:I

    sget v14, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerHorizontalColor:I

    if-eq v13, v14, :cond_4

    .line 3311
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v6, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 3312
    const/4 v5, 0x0

    .line 3313
    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    sget v13, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 3317
    :goto_2
    const/4 v2, 0x0

    .local v2, "day":I
    :goto_3
    iget v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-gt v2, v13, :cond_3

    .line 3318
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3319
    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v13

    int-to-float v11, v13

    .line 3324
    :goto_4
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v11, v13, v5

    .line 3325
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    const/4 v14, 0x0

    aput v14, v13, v6

    .line 3326
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v11, v13, v5

    .line 3327
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    aput v10, v13, v6

    .line 3317
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3321
    :cond_2
    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v11, v13

    goto :goto_4

    .line 3329
    :cond_3
    iget-object v13, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v5, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 3332
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3333
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3334
    return-void

    .end local v2    # "day":I
    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    :cond_4
    move v5, v6

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    goto :goto_2
.end method

.method private drawHeaderLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2680
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2681
    .local v0, "titleBg":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2682
    const/4 v1, -0x3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2683
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2684
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDateHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2685
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2686
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2688
    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3068
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 3071
    const-string v5, "2"

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v0, v5

    .line 3073
    .local v0, "fontWidth1":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3074
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, 0x8

    .line 3079
    .local v3, "x1":I
    :goto_0
    const/4 v2, 0x0

    .line 3081
    .local v2, "time":Ljava/lang/String;
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    add-int/lit8 v5, v5, 0x1

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TOP_MARGIN:I

    add-int v4, v5, v6

    .line 3082
    .local v4, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v5, 0x18

    if-ge v1, v5, :cond_1

    .line 3083
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHourStrs:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 3084
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p2, v2, v5, v6, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3085
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 3082
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3076
    .end local v1    # "i":I
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "x1":I
    .end local v4    # "y":I
    :cond_0
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, 0x8

    .restart local v3    # "x1":I
    goto :goto_0

    .line 3087
    .restart local v1    # "i":I
    .restart local v2    # "time":Ljava/lang/String;
    .restart local v4    # "y":I
    :cond_1
    return-void
.end method

.method private drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2706
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2707
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v6

    .line 2711
    .local v6, "right":I
    :goto_0
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    add-int/lit8 v7, v0, -0x1

    .line 2712
    .local v7, "y":I
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2713
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2714
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2715
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2716
    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2717
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2718
    return-void

    .line 2709
    .end local v6    # "right":I
    .end local v7    # "y":I
    :cond_0
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v6

    .restart local v6    # "right":I
    goto :goto_0
.end method

.method private drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3014
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_0

    .line 3015
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v9, v3, v4

    .line 3016
    .local v9, "daynum":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3017
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3018
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3019
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 3020
    rsub-int/lit8 v3, v9, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 3021
    rsub-int/lit8 v3, v9, 0x6

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3031
    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->saveSelectionPosition(FFFF)V

    .line 3032
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3033
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3034
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3035
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3036
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3037
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mNewEventHintColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3038
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 3039
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3040
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v4

    .line 3041
    .local v15, "width":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v15, 0x2

    add-int v12, v3, v4

    .line 3042
    .local v12, "midX":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 3043
    .local v13, "midY":I
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v11, v3, v4

    .line 3045
    .local v11, "length":I
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_MAX_LENGTH:I

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3046
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    sub-int/2addr v3, v11

    div-int/lit8 v14, v3, 0x2

    .line 3047
    .local v14, "verticalPadding":I
    sub-int v3, v15, v11

    div-int/lit8 v10, v3, 0x2

    .line 3048
    .local v10, "horizontalPadding":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    int-to-float v4, v3

    int-to-float v5, v13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v10

    int-to-float v6, v3

    int-to-float v7, v13

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3050
    int-to-float v4, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    int-to-float v5, v3

    int-to-float v6, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3065
    .end local v9    # "daynum":I
    .end local v10    # "horizontalPadding":I
    .end local v11    # "length":I
    .end local v12    # "midX":I
    .end local v13    # "midY":I
    .end local v14    # "verticalPadding":I
    .end local v15    # "width":I
    :cond_0
    :goto_1
    return-void

    .line 3023
    .restart local v9    # "daynum":I
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 3024
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 3027
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 3028
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 3053
    :cond_3
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3054
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3055
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3056
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNewEventHintString:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 3059
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 3057
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3061
    const/4 v3, 0x1

    sput-boolean v3, Lcn/nubia/calendar/submodule_day/view/DayView;->CLICKSTATUE:Z

    goto :goto_1
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "maxEventTextLen"    # I

    .prologue
    .line 4602
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4603
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4606
    .local v0, "len":I
    if-gtz p2, :cond_1

    .line 4607
    const-string p1, ""

    .line 4608
    const/4 v0, 0x0

    .line 4614
    :cond_0
    :goto_0
    const/16 v2, 0xa

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4609
    :cond_1
    if-le v0, p2, :cond_0

    .line 4610
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4611
    move v0, p2

    goto :goto_0
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2691
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2692
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v0, v1, :cond_0

    .line 2694
    sget-boolean v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUseExpandIcon:Z

    if-eqz v0, :cond_1

    .line 2695
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2696
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2702
    :cond_0
    :goto_0
    return-void

    .line 2698
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2699
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private eventClickCleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6256
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6257
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSetClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6258
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedEvent:Lcn/nubia/calendar/model/Event;

    .line 6259
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSavedClickedEvent:Lcn/nubia/calendar/model/Event;

    .line 6260
    return-void
.end method

.method private findSelectedEvent(II)V
    .locals 33
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 6045
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    .line 6046
    .local v3, "date":I
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellWidth:I

    .line 6047
    .local v6, "cellWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 6048
    .local v16, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 6050
    .local v24, "numEvents":I
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 6051
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v4

    .line 6055
    .local v4, "left":I
    :goto_0
    const/4 v5, 0x0

    .line 6056
    .local v5, "top":I
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 6058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 6059
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 6061
    const v23, 0x461c4000    # 10000.0f

    .line 6062
    .local v23, "minYdistance":F
    const/4 v8, 0x0

    .line 6063
    .local v8, "closestEvent":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v10, v0

    .line 6064
    .local v10, "drawHeight":F
    sget v31, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sget v32, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v30, v31, v32

    .line 6065
    .local v30, "yOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    move/from16 v21, v0

    .line 6066
    .local v21, "maxUnexpandedColumn":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 6068
    add-int/lit8 v21, v21, -0x1

    .line 6070
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 6071
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 6072
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 6073
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/model/Event;

    .line 6074
    .local v7, "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v7}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v31

    if-eqz v31, :cond_1

    sget-boolean v31, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-nez v31, :cond_3

    .line 6075
    invoke-virtual {v7}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 6072
    :cond_1
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 6053
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    .end local v8    # "closestEvent":Lcn/nubia/calendar/model/Event;
    .end local v10    # "drawHeight":F
    .end local v18    # "i":I
    .end local v21    # "maxUnexpandedColumn":I
    .end local v23    # "minYdistance":F
    .end local v30    # "yOffset":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    .restart local v4    # "left":I
    goto/16 :goto_0

    .line 6080
    .restart local v5    # "top":I
    .restart local v7    # "event":Lcn/nubia/calendar/model/Event;
    .restart local v8    # "closestEvent":Lcn/nubia/calendar/model/Event;
    .restart local v10    # "drawHeight":F
    .restart local v18    # "i":I
    .restart local v21    # "maxUnexpandedColumn":I
    .restart local v23    # "minYdistance":F
    .restart local v30    # "yOffset":I
    :cond_3
    iget v0, v7, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_1

    iget v0, v7, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 6082
    sget-boolean v31, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    .line 6084
    .local v25, "numRectangles":F
    :goto_3
    div-float v17, v10, v25

    .line 6085
    .local v17, "height":F
    sget v31, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v17, v31

    if-lez v31, :cond_4

    .line 6086
    sget v31, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    .line 6088
    :cond_4
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v7}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v17

    add-float v15, v31, v32

    .line 6089
    .local v15, "eventTop":F
    add-float v14, v15, v17

    .line 6090
    .local v14, "eventBottom":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v15, v31

    if-gez v31, :cond_8

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v14, v31

    if-lez v31, :cond_8

    .line 6093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6094
    move-object v8, v7

    .line 6110
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    .end local v14    # "eventBottom":F
    .end local v15    # "eventTop":F
    .end local v17    # "height":F
    .end local v25    # "numRectangles":F
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 6182
    .end local v8    # "closestEvent":Lcn/nubia/calendar/model/Event;
    .end local v10    # "drawHeight":F
    .end local v21    # "maxUnexpandedColumn":I
    .end local v23    # "minYdistance":F
    .end local v30    # "yOffset":I
    :cond_6
    :goto_4
    return-void

    .line 6082
    .restart local v7    # "event":Lcn/nubia/calendar/model/Event;
    .restart local v8    # "closestEvent":Lcn/nubia/calendar/model/Event;
    .restart local v10    # "drawHeight":F
    .restart local v21    # "maxUnexpandedColumn":I
    .restart local v23    # "minYdistance":F
    .restart local v30    # "yOffset":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    goto :goto_3

    .line 6098
    .restart local v14    # "eventBottom":F
    .restart local v15    # "eventTop":F
    .restart local v17    # "height":F
    .restart local v25    # "numRectangles":F
    :cond_8
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v15, v31

    if-ltz v31, :cond_9

    .line 6099
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v29, v15, v31

    .line 6103
    .local v29, "yDistance":F
    :goto_5
    cmpg-float v31, v29, v23

    if-gez v31, :cond_1

    .line 6104
    move/from16 v23, v29

    .line 6105
    move-object v8, v7

    goto/16 :goto_2

    .line 6101
    .end local v29    # "yDistance":F
    :cond_9
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v29, v31, v14

    .restart local v29    # "yDistance":F
    goto :goto_5

    .line 6115
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    .end local v8    # "closestEvent":Lcn/nubia/calendar/model/Event;
    .end local v10    # "drawHeight":F
    .end local v14    # "eventBottom":F
    .end local v15    # "eventTop":F
    .end local v17    # "height":F
    .end local v18    # "i":I
    .end local v21    # "maxUnexpandedColumn":I
    .end local v23    # "minYdistance":F
    .end local v25    # "numRectangles":F
    .end local v29    # "yDistance":F
    .end local v30    # "yOffset":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    add-int p2, p2, v31

    .line 6118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 6119
    .local v26, "region":Landroid/graphics/Rect;
    add-int/lit8 v31, p1, -0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6120
    add-int/lit8 v31, p1, 0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6121
    add-int/lit8 v31, p2, -0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6122
    add-int/lit8 v31, p2, 0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    .line 6126
    .local v2, "geometry":Lcn/nubia/calendar/model/EventGeometry;
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 6127
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/model/Event;

    .line 6129
    .restart local v7    # "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/calendar/model/EventGeometry;->computeEventRect(IIIILcn/nubia/calendar/model/Event;)Z

    move-result v31

    if-nez v31, :cond_c

    .line 6126
    :cond_b
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 6135
    :cond_c
    move-object/from16 v0, v26

    invoke-virtual {v2, v7, v0}, Lcn/nubia/calendar/model/EventGeometry;->eventIntersectsSelection(Lcn/nubia/calendar/model/Event;Landroid/graphics/Rect;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 6136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 6142
    .end local v7    # "event":Lcn/nubia/calendar/model/Event;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_6

    .line 6143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 6144
    .local v20, "len":I
    const/4 v8, 0x0

    .line 6145
    .restart local v8    # "closestEvent":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v22, v0

    .line 6146
    .local v22, "minDist":F
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    .line 6147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/calendar/model/Event;

    .line 6148
    .local v13, "ev":Lcn/nubia/calendar/model/Event;
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v2, v0, v1, v13}, Lcn/nubia/calendar/model/EventGeometry;->pointToEvent(FFLcn/nubia/calendar/model/Event;)F

    move-result v9

    .line 6149
    .local v9, "dist":F
    cmpg-float v31, v9, v22

    if-gez v31, :cond_e

    .line 6150
    move/from16 v22, v9

    .line 6151
    move-object v8, v13

    .line 6146
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 6154
    .end local v9    # "dist":F
    .end local v13    # "ev":Lcn/nubia/calendar/model/Event;
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 6160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v27, v0

    .line 6161
    .local v27, "startDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v11, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 6162
    .local v11, "endDay":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 6163
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 6168
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v31, v0

    div-int/lit8 v28, v31, 0x3c

    .line 6170
    .local v28, "startHour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 6171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    div-int/lit8 v12, v31, 0x3c

    .line 6176
    .local v12, "endHour":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 6177
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    goto/16 :goto_4

    .line 6164
    .end local v12    # "endHour":I
    .end local v28    # "startHour":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v0, v11, :cond_10

    .line 6165
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    goto :goto_9

    .line 6173
    .restart local v28    # "startHour":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v31, v0

    div-int/lit8 v12, v31, 0x3c

    .restart local v12    # "endHour":I
    goto :goto_a

    .line 6178
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v0, v12, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v11, :cond_6

    .line 6179
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    goto/16 :goto_4
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    .line 4907
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v3, v4, v5

    .line 4909
    .local v3, "maxADHeight":I
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4912
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    if-eqz v4, :cond_0

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    .line 4914
    .local v1, "currentHeight":I
    :goto_0
    sget-boolean v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 4919
    .local v2, "desiredHeight":I
    :goto_1
    const-string v4, "animateDayHeight"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4921
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4923
    new-instance v4, Lcn/nubia/calendar/submodule_day/view/DayView$7;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$7;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4935
    return-object v0

    .line 4912
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "currentHeight":I
    .end local v2    # "desiredHeight":I
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    goto :goto_0

    .line 4914
    .restart local v1    # "currentHeight":I
    :cond_1
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_1
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    .line 4883
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v4, v5, v6

    .line 4885
    .local v4, "maxADHeight":I
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    int-to-float v5, v5

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4888
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    div-int v3, v4, v5

    .line 4889
    .local v3, "fitHeight":I
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    .line 4890
    .local v1, "currentHeight":I
    sget-boolean v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v5, :cond_0

    move v2, v3

    .line 4893
    .local v2, "desiredHeight":I
    :goto_0
    if-ne v1, v2, :cond_1

    .line 4894
    const/4 v0, 0x0

    .line 4901
    :goto_1
    return-object v0

    .line 4890
    .end local v2    # "desiredHeight":I
    :cond_0
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v5

    goto :goto_0

    .line 4898
    .restart local v2    # "desiredHeight":I
    :cond_1
    const-string v5, "animateDayEventHeight"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4900
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 9
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6913
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 6915
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6917
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6918
    .local v7, "dateArray":[Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 6919
    .local v8, "timeArray":[Ljava/lang/String;
    aget-object v1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v7, v5

    .line 6920
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v3, v7, v6

    .line 6921
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v8, v4

    .line 6922
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v8, v5

    .line 6923
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v8, v6

    .line 6924
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 6919
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 6926
    return-object v0
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 3486
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3487
    .local v0, "box":Landroid/graphics/Rect;
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3488
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3489
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 3490
    .local v1, "daynum":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3491
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3492
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3498
    :goto_0
    return-object v0

    .line 3494
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3495
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcn/nubia/calendar/model/Event;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 5858
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5860
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 5863
    .local v6, "accessLevel":I
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcn/nubia/calendar/model/Event;->id:J

    .line 5864
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "calendar_id"

    aput-object v5, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5863
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5868
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 5869
    const/4 v2, 0x0

    .line 5907
    :goto_0
    return v2

    .line 5872
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 5873
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5874
    const/4 v2, 0x0

    goto :goto_0

    .line 5877
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5878
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 5879
    .local v8, "calId":J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5881
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 5882
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "_id=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5883
    .local v3, "where":Ljava/lang/String;
    sget-object v2, Lcn/nubia/calendar/submodule_day/view/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5885
    const/4 v7, 0x0

    .line 5886
    .local v7, "calendarOwnerAccount":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 5887
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5888
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 5889
    const/4 v2, 0x2

    .line 5890
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5891
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5894
    :cond_2
    const/16 v2, 0x1f4

    if-ge v6, v2, :cond_3

    .line 5895
    const/4 v2, 0x0

    goto :goto_0

    .line 5898
    :cond_3
    iget-boolean v2, p1, Lcn/nubia/calendar/model/Event;->guestsCanModify:Z

    if-eqz v2, :cond_4

    .line 5899
    const/4 v2, 0x2

    goto :goto_0

    .line 5902
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcn/nubia/calendar/model/Event;->organizer:Ljava/lang/String;

    .line 5903
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5904
    const/4 v2, 0x2

    goto :goto_0

    .line 5907
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getEventLayout([Landroid/text/StaticLayout;ILcn/nubia/calendar/model/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .locals 16
    .param p1, "layouts"    # [Landroid/text/StaticLayout;
    .param p2, "i"    # I
    .param p3, "event"    # Lcn/nubia/calendar/model/Event;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3569
    if-ltz p2, :cond_0

    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, p2

    if-lt v0, v4, :cond_1

    .line 3570
    :cond_0
    const/4 v2, 0x0

    .line 3624
    :goto_0
    return-object v2

    .line 3572
    :cond_1
    aget-object v2, p1, p2

    .line 3573
    .local v2, "layout":Landroid/text/StaticLayout;
    if-eqz v2, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 3574
    :cond_2
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3575
    .local v3, "bob":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 3576
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3577
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 3578
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    iput-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 3580
    :cond_3
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 3581
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3585
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3587
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    .line 3588
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcn/nubia/calendar/model/Event;->id:J

    .line 3587
    invoke-static {v4, v6, v7}, Lcn/nubia/calendar/util/CalendarUtils;->getCalendarIdByEventId(Landroid/content/ContentResolver;J)J

    move-result-wide v14

    .line 3589
    .local v14, "calendarId":J
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    .line 3591
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/CalendarApplication;

    check-cast v4, Lcn/nubia/calendar/CalendarApplication;

    .line 3592
    invoke-virtual {v4}, Lcn/nubia/calendar/CalendarApplication;->getUserModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    move-result-object v4

    .line 3593
    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->getBirthdayCalendarId()J

    move-result-wide v4

    cmp-long v4, v14, v4

    if-eqz v4, :cond_5

    .line 3595
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3596
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    rsub-int v5, v5, 0x1f4

    .line 3595
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3599
    :cond_5
    move-object/from16 v0, p3

    iget v4, v0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    packed-switch v4, :pswitch_data_0

    .line 3611
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3617
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2    # "layout":Landroid/text/StaticLayout;
    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    new-instance v6, Landroid/text/TextPaint;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 3618
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3619
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 3621
    .restart local v2    # "layout":Landroid/text/StaticLayout;
    aput-object v2, p1, p2

    .line 3623
    .end local v3    # "bob":Landroid/text/SpannableStringBuilder;
    .end local v14    # "calendarId":J
    :cond_6
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    goto/16 :goto_0

    .line 3601
    .restart local v3    # "bob":Landroid/text/SpannableStringBuilder;
    .restart local v14    # "calendarId":J
    :pswitch_0
    move-object/from16 v0, p3

    iget v4, v0, Lcn/nubia/calendar/model/Event;->color:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 3604
    :pswitch_1
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3605
    const/16 v4, 0xc0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 3599
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNewEvent(IJI)Lcn/nubia/calendar/model/Event;
    .locals 6
    .param p1, "julianDay"    # I
    .param p2, "utcMillis"    # J
    .param p4, "minutesSinceMidnight"    # I

    .prologue
    .line 3452
    invoke-static {}, Lcn/nubia/calendar/model/Event;->newInstance()Lcn/nubia/calendar/model/Event;

    move-result-object v0

    .line 3453
    .local v0, "event":Lcn/nubia/calendar/model/Event;
    iput p1, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 3454
    iput p1, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 3455
    iput-wide p2, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 3456
    iget-wide v2, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 3457
    iput p4, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 3458
    iget v1, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 3459
    return-object v0
.end method

.method private incrementSkipCount([III)V
    .locals 2
    .param p1, "counts"    # [I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 3802
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p3, v1, :cond_1

    .line 3808
    :cond_0
    return-void

    .line 3805
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 3806
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 3805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1073
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setFocusable(Z)V

    .line 1076
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setFocusableInTouchMode(Z)V

    .line 1077
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setClickable(Z)V

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstDayOfWeek:I

    .line 1080
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1082
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayJulianDay:I

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeek_saturdayColor:I

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0004

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeek_sundayColor:I

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const/high16 v19, 0x7f0d0000

    .line 1087
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarDateBannerTextColor:I

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d002c

    .line 1089
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColorRes:I

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0066

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mBgColor:I

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0025

    .line 1092
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mBackGroundColor:I

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0021

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarAmPmLabel:I

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d00cd

    .line 1095
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridAreaSelected:I

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0040

    .line 1097
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerHorizontalColor:I

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0040

    .line 1099
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarGridLineInnerVerticalColor:I

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d002f

    .line 1101
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarHourLabelColor:I

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d015a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mPressedColor:I

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d00e0

    .line 1104
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedColor:I

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d002a

    .line 1106
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextColor:I

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0114

    .line 1108
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreEventsTextColor:I

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d00de

    .line 1114
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLineColor:I

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0900d1

    .line 1116
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0900d0

    .line 1118
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDateHeight:I

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d017e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekEndTextColor:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0099

    .line 1121
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDaySolarTextColor:I

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0098

    .line 1123
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayLunarTextColor:I

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d011f

    .line 1125
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayAndWeekViewtodayColor:I

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d009a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayTextColor:I

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090017

    .line 1128
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDaySolarTextSize:F

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090016

    .line 1130
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayLunarTextSize:F

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090018

    .line 1132
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayTodaySolarTextSize:F

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090006

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayViewWeekStr:F

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090011

    .line 1135
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthTodaySolarDateTextSize:F

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d00a6

    .line 1137
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedDayColor:I

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d004a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayViewColor:I

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0011

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllEventColor:I

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0097

    .line 1141
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthTodaySolarDateTextColor:I

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0105

    .line 1143
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentLunarDayTextColor:I

    .line 1144
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDateHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 1145
    sget v18, Lcn/nubia/calendar/submodule_day/view/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    sput v18, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090134

    .line 1149
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mWeekDayViewStrSize:F

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d00ce

    .line 1152
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1153
    .local v9, "gridLineColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    .line 1154
    .local v16, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1155
    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1156
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    .line 1159
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1163
    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs:[Ljava/lang/String;

    .line 1166
    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .line 1168
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v10, v0, :cond_0

    .line 1169
    add-int/lit8 v11, v10, -0x1

    .line 1171
    .local v11, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    .line 1172
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v11

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    aput-object v20, v18, v19

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1e

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    .line 1176
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v11

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    aput-object v20, v18, v19

    .line 1168
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1190
    .end local v11    # "index":I
    :cond_0
    sget v18, Lcn/nubia/calendar/submodule_day/view/DayView;->DATE_HEADER_FONT_SIZE:F

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1191
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, " 28"

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const-string v19, " 30"

    aput-object v19, v5, v18

    .line 1192
    .local v5, "dateStrs":[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v5, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDateStrWidth:I

    .line 1193
    sget v18, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_FONT_SIZE:F

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1194
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDateStrWidth:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mDateStrWidth:I

    .line 1195
    sget v18, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TEXT_SIZE:F

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->handleOnResume()V

    .line 1197
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mAmString:Ljava/lang/String;

    .line 1198
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mPmString:Ljava/lang/String;

    .line 1199
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAmString:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPmString:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v18

    .line 1200
    .local v4, "ampm":[Ljava/lang/String;
    sget v18, Lcn/nubia/calendar/submodule_day/view/DayView;->AMPM_TEXT_SIZE:F

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0c0113

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mAllDayString:Ljava/lang/String;

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0900aa

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    .line 1204
    const-string v18, "layout_inflater"

    .line 1205
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1206
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f030032

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    new-instance v18, Landroid/widget/PopupWindow;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 1213
    .local v8, "dialogTheme":Landroid/content/res/Resources$Theme;
    const v18, 0x103000b

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1214
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x1010054

    aput v20, v18, v19

    .line 1215
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1216
    .local v17, "ta":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1217
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1223
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 1224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1225
    .local v14, "millis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 1226
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    .line 1227
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mHasAllDayEvent:[Z

    .line 1228
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v13, v18, 0x19

    .line 1229
    .local v13, "maxGridLines":I
    mul-int/lit8 v18, v13, 0x4

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mLines:[F

    .line 1230
    return-void
.end method

.method private initAccessibilityVariables()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 1261
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 1262
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 1263
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    .line 1264
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchExplorationEnabled:Z

    .line 1265
    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFirstHour()V
    .locals 2

    .prologue
    .line 2321
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 2322
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 2323
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 2327
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 2325
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .param p1, "deltaX"    # I

    .prologue
    .line 5369
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 5370
    .local v2, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    iget-object v0, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 5371
    .local v0, "date":Landroid/text/format/Time;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 5373
    if-lez p1, :cond_0

    .line 5374
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 5375
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 5376
    const/4 v1, 0x0

    .line 5382
    .local v1, "switchForward":Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 5383
    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->initView(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 5384
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->layout(IIII)V

    .line 5385
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->reloadEvents()V

    .line 5386
    return v1

    .line 5378
    .end local v1    # "switchForward":Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 5379
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 5380
    const/4 v1, 0x1

    .restart local v1    # "switchForward":Z
    goto :goto_0
.end method

.method private initView(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 3
    .param p1, "view"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    const/4 v2, 0x0

    .line 1692
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    invoke-direct {p1, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 1693
    iget-object v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1694
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    .line 1695
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iput v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 1696
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    iput v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    .line 1697
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->remeasure(II)V

    .line 1698
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->initAllDayHeights()V

    .line 1700
    invoke-direct {p1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 1701
    iput-object v2, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 1702
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstDayOfWeek:I

    iput v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstDayOfWeek:I

    .line 1703
    iget-object v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1704
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    iput-boolean v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    .line 1712
    :goto_0
    invoke-direct {p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->recalc()V

    .line 1713
    return-void

    .line 1706
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    goto :goto_0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 2050
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 2051
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2050
    :goto_0
    return v0

    .line 2051
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalc()V
    .locals 4

    .prologue
    .line 1498
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1499
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1502
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1503
    .local v0, "start":J
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    .line 1504
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastJulianDay:I

    .line 1506
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMonthLength:I

    .line 1507
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleDate:I

    .line 1508
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleMonth:I

    .line 1509
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleYear:I

    .line 1510
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstVisibleDayOfWeek:I

    .line 1511
    return-void
.end method

.method private remeasure(II)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1551
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sput v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1552
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    div-int/lit8 v10, p2, 0x6

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    sput v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1554
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1556
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v7, v7

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    div-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 1560
    const/4 v2, 0x0

    .local v2, "day":I
    :goto_0
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ge v2, v7, :cond_0

    .line 1561
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEarliestStartHour:[I

    const/16 v10, 0x19

    aput v10, v7, v2

    .line 1562
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHasAllDayEvent:[Z

    const/4 v10, 0x0

    aput-boolean v10, v7, v2

    .line 1560
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1565
    :cond_0
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    .line 1568
    .local v6, "maxAllDayEvents":I
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v7, p2, v7

    div-int/lit8 v7, v7, 0x18

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_EVENT_HEIGHT:F

    float-to-int v10, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    .line 1570
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    if-ge v7, v10, :cond_1

    .line 1571
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    sput v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 1575
    :cond_1
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    .line 1576
    const/4 v0, 0x0

    .line 1577
    .local v0, "allDayHeight":I
    if-lez v6, :cond_c

    .line 1578
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v7, p2, v7

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v5, v7, v10

    .line 1582
    .local v5, "maxAllAllDayHeight":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 1583
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 1615
    :cond_2
    :goto_1
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v7, v0

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v7, v10

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    .line 1619
    .end local v5    # "maxAllAllDayHeight":I
    :goto_2
    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    .line 1621
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int v7, p2, v7

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    .line 1624
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1625
    .local v1, "allDayIconWidth":I
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 1627
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v1

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sget v12, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 1630
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sget v11, Lcn/nubia/calendar/submodule_day/view/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 1631
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 1632
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 1634
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v10, v10, 0x1

    div-int/2addr v7, v10

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    .line 1635
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventGeometry:Lcn/nubia/calendar/model/EventGeometry;

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Lcn/nubia/calendar/model/EventGeometry;->setHourHeight(F)V

    .line 1637
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_EVENT_HEIGHT:F

    const v10, 0x476a6000    # 60000.0f

    mul-float/2addr v7, v10

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    div-float/2addr v7, v10

    float-to-long v8, v7

    .line 1639
    .local v8, "minimumDurationMillis":J
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9}, Lcn/nubia/calendar/model/Event;->computePositions(Ljava/util/ArrayList;J)V

    .line 1642
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x18

    add-int/lit8 v7, v7, 0x1

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    sub-int/2addr v7, v10

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    .line 1644
    sget-boolean v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 1645
    sget-object v7, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mViewStartY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    sget-object v7, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMaxViewStartY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :cond_3
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le v7, v10, :cond_4

    .line 1649
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 1650
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeFirstHour()V

    .line 1653
    :cond_4
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_5

    .line 1654
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->initFirstHour()V

    .line 1655
    const/4 v7, 0x0

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    .line 1662
    :cond_5
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v10, v10, 0x1

    if-lt v7, v10, :cond_6

    .line 1663
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    .line 1665
    :cond_6
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v7, v10

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    sub-int/2addr v7, v10

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 1667
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellWidth:I

    add-int/lit8 v10, v10, 0x1

    mul-int v4, v7, v10

    .line 1670
    .local v4, "eventAreaWidth":I
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v7, :cond_7

    iget-wide v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v12, v7, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v7, v10, v12

    if-eqz v7, :cond_7

    .line 1672
    :try_start_0
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :cond_7
    :goto_3
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    add-int/lit8 v10, v4, -0x14

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1679
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1680
    return-void

    .line 1584
    .end local v1    # "allDayIconWidth":I
    .end local v4    # "eventAreaWidth":I
    .end local v8    # "minimumDurationMillis":J
    .restart local v5    # "maxAllAllDayHeight":I
    :cond_8
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v6, v7, :cond_9

    .line 1587
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    mul-int v0, v6, v7

    .line 1588
    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v7, :cond_2

    .line 1589
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_1

    .line 1595
    :cond_9
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    if-eqz v7, :cond_a

    .line 1601
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1

    .line 1605
    :cond_a
    int-to-float v7, v6

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v7, v10

    float-to-int v0, v7

    .line 1607
    sget-boolean v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-nez v7, :cond_b

    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v7, :cond_b

    .line 1609
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v7, v7

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v7, v10

    float-to-int v0, v7

    goto/16 :goto_1

    .line 1610
    :cond_b
    if-le v0, v5, :cond_2

    .line 1611
    move v0, v5

    goto/16 :goto_1

    .line 1617
    .end local v5    # "maxAllAllDayHeight":I
    :cond_c
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    goto/16 :goto_2

    .line 1673
    .restart local v1    # "allDayIconWidth":I
    .restart local v4    # "eventAreaWidth":I
    .restart local v8    # "minimumDurationMillis":J
    :catch_0
    move-exception v3

    .line 1675
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private resetSelectedHour()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2307
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2308
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 2309
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 2310
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2311
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    .line 2318
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    .line 2313
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 2314
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 2315
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2316
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 3479
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3480
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3481
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3482
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3483
    return-void
.end method

.method private sendAccessibilityEventAsNeeded(Z)V
    .locals 17
    .param p1, "speakEvents"    # Z

    .prologue
    .line 2055
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    if-nez v11, :cond_1

    .line 2137
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectionDayForAccessibility:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDayForAccessibility:I

    if-eq v11, v12, :cond_9

    const/4 v3, 0x1

    .line 2059
    .local v3, "dayChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectionHourForAccessibility:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHourForAccessibility:I

    if-eq v11, v12, :cond_a

    const/4 v6, 0x1

    .line 2060
    .local v6, "hourChanged":Z
    :goto_2
    if-nez v3, :cond_2

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    if-eq v11, v12, :cond_0

    .line 2063
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDayForAccessibility:I

    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectionDayForAccessibility:I

    .line 2064
    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHourForAccessibility:I

    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectionHourForAccessibility:I

    .line 2065
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2070
    .local v1, "b":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_3

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeForAccessibility()Landroid/text/format/Time;

    move-result-object v11

    const-string v12, "%A "

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    :cond_3
    if-eqz v6, :cond_4

    .line 2074
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeForAccessibility()Landroid/text/format/Time;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIs24HourFormat:Z

    if-eqz v11, :cond_b

    const-string v11, "%k"

    :goto_3
    invoke-virtual {v12, v11}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    :cond_4
    if-nez v3, :cond_5

    if-eqz v6, :cond_6

    .line 2078
    :cond_5
    const-string v11, ". "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :cond_6
    if-eqz p1, :cond_e

    .line 2082
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventCountTemplate:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 2083
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0092

    .line 2084
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventCountTemplate:Ljava/lang/String;

    .line 2088
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2089
    .local v10, "numEvents":I
    if-lez v10, :cond_10

    .line 2090
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    if-nez v11, :cond_c

    .line 2092
    const/4 v7, 0x1

    .line 2093
    .local v7, "i":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/model/Event;

    .line 2094
    .local v2, "calEvent":Lcn/nubia/calendar/model/Event;
    const/4 v12, 0x1

    if-le v10, v12, :cond_8

    .line 2097
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventCountTemplate:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v8, v7, 0x1

    .line 2099
    .end local v7    # "i":I
    .local v8, "i":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 2098
    invoke-virtual {v12, v13, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2100
    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v8

    .line 2102
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcn/nubia/calendar/model/Event;)V

    goto :goto_4

    .line 2058
    .end local v1    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "calEvent":Lcn/nubia/calendar/model/Event;
    .end local v3    # "dayChanged":Z
    .end local v6    # "hourChanged":Z
    .end local v7    # "i":I
    .end local v10    # "numEvents":I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2059
    .restart local v3    # "dayChanged":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2074
    .restart local v1    # "b":Ljava/lang/StringBuilder;
    .restart local v6    # "hourChanged":Z
    :cond_b
    const-string v11, "%l%p"

    goto/16 :goto_3

    .line 2105
    .restart local v10    # "numEvents":I
    :cond_c
    const/4 v11, 0x1

    if-le v10, v11, :cond_d

    .line 2108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventCountTemplate:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    move-object/from16 v16, v0

    .line 2112
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 2111
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 2113
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 2110
    invoke-virtual {v11, v12, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v11

    .line 2109
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2114
    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcn/nubia/calendar/model/Event;)V

    .line 2125
    .end local v10    # "numEvents":I
    :cond_e
    :goto_5
    if-nez v3, :cond_f

    if-nez v6, :cond_f

    if-eqz p1, :cond_0

    .line 2126
    :cond_f
    const/16 v11, 0x8

    .line 2127
    :try_start_0
    invoke-static {v11}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    .line 2128
    .local v5, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2129
    .local v9, "msg":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2131
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2133
    .end local v5    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v9    # "msg":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .line 2134
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2120
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "numEvents":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCreateNewEventString:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private sendCreateActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 3
    .param p1, "actionData"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 4965
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4967
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4968
    return-void
.end method

.method private sendDeleteActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 3
    .param p1, "actionData"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 4959
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfab

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4961
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4962
    return-void
.end method

.method private sendShowActionInfoMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 3
    .param p1, "actionData"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 4985
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4987
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4988
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4989
    return-void
.end method

.method private sendShowActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 3
    .param p1, "actionData"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 4971
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4973
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4974
    return-void
.end method

.method private sendShowEditActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V
    .locals 3
    .param p1, "actionData"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 4978
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfaa

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4980
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4981
    return-void
.end method

.method private setSelectedDay(I)V
    .locals 0
    .param p1, "d"    # I

    .prologue
    .line 6273
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    .line 6274
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDayForAccessibility:I

    .line 6275
    return-void
.end method

.method private setSelectedEvent(Lcn/nubia/calendar/model/Event;)V
    .locals 0
    .param p1, "e"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 6263
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 6264
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    .line 6265
    return-void
.end method

.method private setSelectedHour(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 6268
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    .line 6269
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHourForAccessibility:I

    .line 6270
    return-void
.end method

.method private setSelectionFromPosition(IIZ)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "keepOldSelection"    # Z

    .prologue
    const/4 v10, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5928
    const/4 v4, 0x0

    .line 5929
    .local v4, "savedEvent":Lcn/nubia/calendar/model/Event;
    const/4 v3, 0x0

    .line 5930
    .local v3, "savedDay":I
    const/4 v5, 0x0

    .line 5931
    .local v5, "savedHour":I
    const/4 v2, 0x0

    .line 5932
    .local v2, "savedAllDay":Z
    if-eqz p3, :cond_0

    .line 5936
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 5937
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    .line 5938
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    .line 5939
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    .line 5941
    :cond_0
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    if-ge p1, v8, :cond_1

    .line 5942
    iget p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    .line 5945
    :cond_1
    const/4 v1, 0x0

    .line 5946
    .local v1, "day":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5947
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ne v8, v10, :cond_4

    .line 5949
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellWidth:I

    add-int/lit8 v8, v8, 0x1

    div-int v1, p1, v8

    .line 5978
    :cond_2
    :goto_0
    if-lt v1, v10, :cond_3

    .line 5979
    const/4 v1, 0x6

    .line 5984
    :cond_3
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    add-int/2addr v1, v8

    .line 5985
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 5987
    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v8, :cond_7

    .line 5988
    invoke-direct {p0, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 6041
    :goto_1
    return v6

    .line 5954
    :cond_4
    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v8, :cond_2

    .line 5955
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayCellWidth:I

    add-int/lit8 v8, v8, 0x1

    div-int v1, p1, v8

    goto :goto_0

    .line 5960
    :cond_5
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ne v8, v10, :cond_6

    .line 5962
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v8, p1, v8

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellWidth:I

    add-int/lit8 v9, v9, 0x1

    div-int v1, v8, v9

    goto :goto_0

    .line 5967
    :cond_6
    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v8, :cond_2

    .line 5968
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v8, p1, v8

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayCellWidth:I

    add-int/lit8 v9, v9, 0x1

    div-int v1, v8, v9

    goto :goto_0

    .line 5992
    :cond_7
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    invoke-direct {p0, v8}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 5994
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    if-ge p2, v8, :cond_9

    .line 5995
    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    .line 6013
    :goto_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->findSelectedEvent(II)V

    .line 6032
    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 6035
    if-eqz p3, :cond_8

    .line 6036
    iput-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 6037
    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    .line 6038
    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    .line 6039
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    :cond_8
    move v6, v7

    .line 6041
    goto :goto_1

    .line 5998
    :cond_9
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int v0, p2, v8

    .line 6000
    .local v0, "adjustedY":I
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    if-ge v0, v8, :cond_a

    .line 6001
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 6010
    :goto_3
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    goto :goto_2

    .line 6006
    :cond_a
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    sub-int v9, v0, v9

    sget v10, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v10, v10, 0x1

    div-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    goto :goto_3
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3534
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 3535
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3536
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3562
    :cond_1
    :goto_0
    return-void

    .line 3539
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3540
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 3542
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3543
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3545
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 3547
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3548
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3551
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_5

    .line 3553
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3554
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3556
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 3558
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3559
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private setupHourTextPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3090
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCalendarHourLabelColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3091
    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3092
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3094
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3095
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3096
    return-void
.end method

.method private setupTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3502
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 3503
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3504
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3531
    :cond_1
    :goto_0
    return-void

    .line 3507
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3508
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 3510
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3511
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3513
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 3515
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3516
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3519
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_5

    .line 3521
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3522
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3524
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 3526
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3527
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private switchViews(ZFFF)Landroid/view/View;
    .locals 26
    .param p1, "forward"    # Z
    .param p2, "xOffSet"    # F
    .param p3, "width"    # F
    .param p4, "velocity"    # F

    .prologue
    .line 2211
    sub-float v5, p3, p2

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimationDistance:F

    .line 2212
    sget-boolean v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2213
    sget-object v5, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchViews("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") O:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " Dist:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimationDistance:F

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v23, v5, p3

    .line 2218
    .local v23, "progress":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v23, v5

    if-lez v5, :cond_1

    .line 2219
    const/high16 v23, 0x3f800000    # 1.0f

    .line 2224
    :cond_1
    if-eqz p1, :cond_7

    .line 2225
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v23

    .line 2226
    .local v6, "inFromXValue":F
    const/4 v8, 0x0

    .line 2227
    .local v8, "inToXValue":F
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v22, v0

    .line 2228
    .local v22, "outFromXValue":F
    const/high16 v13, -0x40800000    # -1.0f

    .line 2236
    .local v13, "outToXValue":F
    :goto_0
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-object v5, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2238
    .local v24, "start":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2240
    if-eqz p1, :cond_8

    .line 2241
    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/2addr v5, v7

    move-object/from16 v0, v24

    iput v5, v0, Landroid/text/format/Time;->monthDay:I

    .line 2245
    :goto_1
    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7f5

    if-gt v5, v7, :cond_2

    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7f5

    if-ne v5, v7, :cond_3

    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->month:I

    const/16 v7, 0xb

    if-ne v5, v7, :cond_3

    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    const/16 v7, 0x1f

    if-le v5, v7, :cond_3

    .line 2247
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/16 v7, 0x1f

    const/16 v10, 0xb

    const/16 v11, 0x7f5

    invoke-virtual {v5, v7, v10, v11}, Landroid/text/format/Time;->set(III)V

    .line 2248
    const/16 v5, 0x1f

    const/16 v7, 0xb

    const/16 v10, 0x7f5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v7, v10}, Landroid/text/format/Time;->set(III)V

    .line 2250
    :cond_3
    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7f5

    if-gt v5, v7, :cond_4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7b2

    if-ne v5, v7, :cond_5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->month:I

    if-nez v5, :cond_5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v7, 0x1

    if-ge v5, v7, :cond_5

    .line 2252
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x7b2

    invoke-virtual {v5, v7, v10, v11}, Landroid/text/format/Time;->set(III)V

    .line 2253
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x7b2

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v7, v10}, Landroid/text/format/Time;->set(III)V

    .line 2258
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    const/4 v7, 0x1

    invoke-virtual {v5, v10, v11, v7}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 2260
    move-object/from16 v21, v24

    .line 2262
    .local v21, "newSelected":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_6

    .line 2263
    new-instance v21, Landroid/text/format/Time;

    .end local v21    # "newSelected":Landroid/text/format/Time;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 2264
    .restart local v21    # "newSelected":Landroid/text/format/Time;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 2267
    :cond_6
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 2268
    .local v20, "end":Landroid/text/format/Time;
    move-object/from16 v0, v20

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v5, v7

    move-object/from16 v0, v20

    iput v5, v0, Landroid/text/format/Time;->monthDay:I

    .line 2272
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2277
    .local v4, "inAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v11, v22

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2282
    .local v9, "outAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, p3, v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->calculateDuration(FFF)J

    move-result-wide v18

    .line 2284
    .local v18, "duration":J
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHScrollInterpolator:Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHScrollInterpolator:Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;

    invoke-virtual {v9, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2287
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2288
    new-instance v5, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V

    invoke-virtual {v9, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v9}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 2293
    .local v25, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/calendar/submodule_day/view/DayView;->cleanup()V

    .line 2294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 2295
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v25

    .end local v25    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    check-cast v25, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 2296
    .restart local v25    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 2297
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/calendar/submodule_day/view/DayView;->requestFocus()Z

    .line 2298
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/calendar/submodule_day/view/DayView;->reloadEvents()V

    .line 2299
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/calendar/submodule_day/view/DayView;->restartCurrentTimeUpdates()V

    .line 2301
    return-object v25

    .line 2230
    .end local v4    # "inAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v6    # "inFromXValue":F
    .end local v8    # "inToXValue":F
    .end local v9    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v13    # "outToXValue":F
    .end local v18    # "duration":J
    .end local v20    # "end":Landroid/text/format/Time;
    .end local v21    # "newSelected":Landroid/text/format/Time;
    .end local v22    # "outFromXValue":F
    .end local v24    # "start":Landroid/text/format/Time;
    .end local v25    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v23, v5

    .line 2231
    .restart local v6    # "inFromXValue":F
    const/4 v8, 0x0

    .line 2232
    .restart local v8    # "inToXValue":F
    move/from16 v22, v23

    .line 2233
    .restart local v22    # "outFromXValue":F
    const/high16 v13, 0x3f800000    # 1.0f

    .restart local v13    # "outToXValue":F
    goto/16 :goto_0

    .line 2243
    .restart local v24    # "start":Landroid/text/format/Time;
    :cond_8
    move-object/from16 v0, v24

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    sub-int/2addr v5, v7

    move-object/from16 v0, v24

    iput v5, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1
.end method

.method private switchViews(Z)V
    .locals 21
    .param p1, "trackBallSelection"    # Z

    .prologue
    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v20, v0

    .line 1725
    .local v20, "selectedEvent":Lcn/nubia/calendar/model/Event;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    :goto_0
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 1731
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 1737
    if-eqz p1, :cond_4

    .line 1738
    if-nez v20, :cond_2

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v6

    .line 1741
    .local v6, "startMillis":J
    const-wide/32 v4, 0x36ee80

    add-long v8, v6, v4

    .line 1742
    .local v8, "endMillis":J
    new-instance v3, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x10

    :goto_1
    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendCreateActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    .line 1794
    .end local v6    # "startMillis":J
    .end local v8    # "endMillis":J
    :cond_0
    :goto_2
    return-void

    .line 1726
    :catch_0
    move-exception v2

    .line 1728
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1742
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "startMillis":J
    .restart local v8    # "endMillis":J
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 1749
    .end local v6    # "startMillis":J
    .end local v8    # "endMillis":J
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_3

    .line 1750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1753
    :cond_3
    new-instance v11, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcn/nubia/calendar/model/Event;->id:J

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendShowActionInfoMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto :goto_2

    .line 1761
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1762
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_5

    .line 1763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1765
    :cond_5
    new-instance v11, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcn/nubia/calendar/model/Event;->id:J

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendShowActionInfoMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto :goto_2

    .line 1775
    :cond_6
    if-nez v20, :cond_8

    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v6

    .line 1778
    .restart local v6    # "startMillis":J
    const-wide/32 v4, 0x36ee80

    add-long v8, v6, v4

    .line 1779
    .restart local v8    # "endMillis":J
    new-instance v3, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x10

    :goto_3
    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendCreateActionMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto/16 :goto_2

    :cond_7
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 1786
    .end local v6    # "startMillis":J
    .end local v8    # "endMillis":J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_9

    .line 1787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1789
    :cond_9
    new-instance v11, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcn/nubia/calendar/model/Event;->id:J

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendShowActionInfoMsg(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto/16 :goto_2
.end method

.method private updateEventDetails()V
    .locals 15

    .prologue
    .line 4694
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4697
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4757
    :cond_1
    :goto_0
    return-void

    .line 4698
    :catch_0
    move-exception v0

    .line 4700
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4704
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-wide v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v4, v1, Lcn/nubia/calendar/model/Event;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 4708
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v2, v1, Lcn/nubia/calendar/model/Event;->id:J

    iput-wide v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 4711
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDismissPopup:Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4713
    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 4714
    .local v8, "event":Lcn/nubia/calendar/model/Event;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f110097

    .line 4715
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 4716
    .local v13, "titleView":Landroid/widget/TextView;
    iget-object v1, v8, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4717
    .local v9, "eventStr":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-static {v9}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4718
    invoke-static {v9}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4720
    :cond_3
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4722
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f1100bb

    .line 4723
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 4724
    .local v10, "imageView":Landroid/widget/ImageView;
    iget-boolean v1, v8, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4726
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f11009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "imageView":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 4727
    .restart local v10    # "imageView":Landroid/widget/ImageView;
    iget-boolean v1, v8, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4730
    iget-boolean v1, v8, Lcn/nubia/calendar/model/Event;->allDay:Z

    if-eqz v1, :cond_8

    .line 4731
    const v6, 0x82012

    .line 4740
    .local v6, "flags":I
    :goto_3
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4741
    or-int/lit16 v6, v6, 0x80

    .line 4743
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-wide v2, v8, Lcn/nubia/calendar/model/Event;->startMillis:J

    iget-wide v4, v8, Lcn/nubia/calendar/model/Event;->endMillis:J

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->formatDateRange(JJI)Ljava/lang/String;

    move-result-object v11

    .line 4745
    .local v11, "timeRange":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f1100bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 4746
    .local v12, "timeView":Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4748
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f11008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 4749
    .local v14, "whereView":Landroid/widget/TextView;
    iget-object v1, v8, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 4750
    .local v7, "empty":Z
    if-eqz v7, :cond_9

    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4751
    if-nez v7, :cond_5

    .line 4752
    iget-object v1, v8, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4754
    :cond_5
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x53

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    const/4 v4, 0x5

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4756
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDismissPopup:Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4724
    .end local v6    # "flags":I
    .end local v7    # "empty":Z
    .end local v11    # "timeRange":Ljava/lang/String;
    .end local v12    # "timeView":Landroid/widget/TextView;
    .end local v14    # "whereView":Landroid/widget/TextView;
    :cond_6
    const/16 v1, 0x8

    goto :goto_1

    .line 4727
    :cond_7
    const/16 v1, 0x8

    goto :goto_2

    .line 4735
    :cond_8
    const v6, 0x81413

    .restart local v6    # "flags":I
    goto :goto_3

    .line 4750
    .restart local v7    # "empty":Z
    .restart local v11    # "timeRange":Ljava/lang/String;
    .restart local v12    # "timeView":Landroid/widget/TextView;
    .restart local v14    # "whereView":Landroid/widget/TextView;
    :cond_9
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method public SetDisplaySize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1036
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1037
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 1038
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 1039
    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLunarDatepadding:I

    .line 1040
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCircleSize:I

    .line 1041
    const-string v1, "hddayview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_TEXT_FONT_SIZE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v1, "hddayview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAY_HEADER_FONT_SIZE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public calculateDragEventStartTime()V
    .locals 11

    .prologue
    .line 6506
    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v2, v8, 0x1

    .line 6507
    .local v2, "hourHeight":I
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragViewStartY:I

    int-to-float v9, v9

    sub-float v1, v8, v9

    .line 6509
    .local v1, "deltaY":F
    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    float-to-int v9, v1

    add-int v0, v8, v9

    .line 6510
    .local v0, "bottom":I
    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    float-to-int v9, v1

    add-int v7, v8, v9

    .line 6512
    .local v7, "top":I
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-lt v0, v8, :cond_0

    .line 6514
    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v1, v8

    .line 6518
    :cond_0
    if-gtz v7, :cond_1

    .line 6519
    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v8, v8, 0x0

    int-to-float v1, v8

    .line 6522
    :cond_1
    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget v8, v8, Lcn/nubia/calendar/model/Event;->startTime:I

    int-to-float v8, v8

    const/high16 v9, 0x42700000    # 60.0f

    int-to-float v10, v2

    div-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 6525
    .local v5, "moveStartTime":I
    div-int/lit8 v3, v5, 0x3c

    .line 6526
    .local v3, "moveStartHour":I
    rem-int/lit8 v4, v5, 0x3c

    .line 6528
    .local v4, "moveStartMinute":I
    rem-int/lit8 v8, v4, 0xa

    const/4 v9, 0x5

    if-lt v8, v9, :cond_2

    rem-int/lit8 v8, v4, 0xa

    sub-int v8, v4, v8

    add-int/lit8 v6, v8, 0xa

    .line 6532
    .local v6, "result":I
    :goto_0
    const/16 v8, 0x3c

    if-ne v6, v8, :cond_3

    .line 6533
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartMinute:I

    .line 6534
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartHour:I

    .line 6543
    :goto_1
    return-void

    .line 6528
    .end local v6    # "result":I
    :cond_2
    rem-int/lit8 v8, v4, 0xa

    sub-int v6, v4, v8

    goto :goto_0

    .line 6539
    .restart local v6    # "result":I
    :cond_3
    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartMinute:I

    .line 6540
    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartHour:I

    goto :goto_1
.end method

.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6230
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6232
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6238
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaused:Z

    .line 6239
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 6240
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 6241
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6244
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v2, "preferences_default_cell_height"

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;I)V

    .line 6247
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->eventClickCleanup()V

    .line 6249
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 6252
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 6253
    return-void

    .line 6233
    :catch_0
    move-exception v0

    .line 6235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 2399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastReloadMillis:J

    .line 2400
    return-void
.end method

.method public compareToVisibleTimeRange(Landroid/text/format/Time;)I
    .locals 8
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1450
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v1, v4, Landroid/text/format/Time;->hour:I

    .line 1451
    .local v1, "savedHour":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v4, Landroid/text/format/Time;->minute:I

    .line 1452
    .local v2, "savedMinute":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v4, Landroid/text/format/Time;->second:I

    .line 1454
    .local v3, "savedSec":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 1455
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 1456
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v4, Landroid/text/format/Time;->second:I

    .line 1458
    sget-boolean v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1459
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diff  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    .line 1465
    .local v0, "diff":I
    if-lez v0, :cond_2

    .line 1467
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 1468
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1469
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    .line 1471
    sget-boolean v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1472
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 1475
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1476
    if-gez v0, :cond_4

    .line 1478
    const/4 v0, 0x0

    .line 1485
    :cond_2
    :goto_0
    sget-boolean v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1486
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_3
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v1, v4, Landroid/text/format/Time;->hour:I

    .line 1489
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v2, v4, Landroid/text/format/Time;->minute:I

    .line 1490
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v3, v4, Landroid/text/format/Time;->second:I

    .line 1491
    return v0

    .line 1479
    :cond_4
    if-nez v0, :cond_2

    .line 1481
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 6970
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6972
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 6974
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeFirstHour()V

    .line 6978
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->postInvalidate()V

    .line 6981
    :cond_0
    return-void
.end method

.method public drawMinute(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 6548
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 6550
    .local v3, "p":Landroid/graphics/Paint;
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6551
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6552
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6554
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v1, v4

    .line 6559
    .local v1, "mMinuteTextHeight":I
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->MINUTE_TOP_MARGIN:I

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartHour:I

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    add-int v0, v4, v5

    .line 6562
    .local v0, "hourY":I
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartMinute:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v0, v4

    .line 6565
    .local v2, "minuteY":I
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    if-ne v4, v7, :cond_1

    .line 6566
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6567
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartMinute:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    int-to-float v6, v2

    invoke-virtual {p2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6576
    :cond_0
    :goto_0
    return-void

    .line 6570
    :cond_1
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 6571
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mBgColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6572
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventStartMinute:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEventRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x14

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-virtual {p2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "remainingEvents"    # I
    .param p3, "day"    # I
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 3814
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3815
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayRtlPosition2(I)I

    move-result v4

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int v2, v4, v5

    .line 3819
    .local v2, "x":I
    :goto_0
    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 3826
    .local v3, "y":I
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreEventsTextColor:I

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3827
    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3828
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3829
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3830
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3831
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 3832
    .local v1, "textSizeNew":F
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090251

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3833
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0006

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 3835
    .local v0, "text":Ljava/lang/String;
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v4

    .line 3836
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_SQUARE_WIDTH:I

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_LINE_PADDING:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xf

    add-int/2addr v2, v4

    .line 3838
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3839
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3840
    return-void

    .line 3817
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "textSizeNew":F
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeDayLeftPosition(I)I

    move-result v4

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int v2, v4, v5

    .restart local v2    # "x":I
    goto :goto_0
.end method

.method public getEventsAlpha()I
    .locals 1

    .prologue
    .line 2511
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsAlpha:I

    return v0
.end method

.method getFirstVisibleHour()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    return v0
.end method

.method public getNewEvent()Lcn/nubia/calendar/model/Event;
    .locals 4

    .prologue
    .line 3446
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 3447
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedMinutesSinceMidnight()I

    move-result v1

    .line 3446
    invoke-direct {p0, v0, v2, v3, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->getNewEvent(IJI)Lcn/nubia/calendar/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 1432
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1433
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1434
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1440
    return-object v0
.end method

.method getSelectedEvent()Lcn/nubia/calendar/model/Event;
    .locals 4

    .prologue
    .line 3433
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-nez v0, :cond_0

    .line 3435
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 3436
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedMinutesSinceMidnight()I

    move-result v1

    .line 3435
    invoke-direct {p0, v0, v2, v3, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->getNewEvent(IJI)Lcn/nubia/calendar/model/Event;

    move-result-object v0

    .line 3438
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    goto :goto_0
.end method

.method getSelectedMinutesSinceMidnight()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method getSelectedPressTimeInMillis()J
    .locals 4

    .prologue
    .line 1280
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1281
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPressSelectDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1282
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPressSelectHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1283
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 1286
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1287
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1288
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1292
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1293
    return-object v0
.end method

.method getSelectedTimeForAccessibility()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 1297
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1298
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDayForAccessibility:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1299
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHourForAccessibility:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1304
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1305
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 4

    .prologue
    .line 1273
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1274
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1275
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1276
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public handleOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1242
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->initAccessibilityVariables()V

    .line 1243
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_tardis_1"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    .line 1249
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIs24HourFormat:Z

    .line 1250
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/calendar/util/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHourStrs:[Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstDayOfWeek:I

    .line 1253
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectionDayForAccessibility:I

    .line 1254
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectionHourForAccessibility:I

    .line 1255
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastSelectedEventForAccessibility:Lcn/nubia/calendar/model/Event;

    .line 1256
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 1257
    return-void

    .line 1247
    :cond_0
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColorRes:I

    sput v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFutureBgColor:I

    goto :goto_0

    .line 1250
    :cond_1
    sget-object v0, Lcn/nubia/calendar/util/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_1
.end method

.method public initAllDayHeights()V
    .locals 3

    .prologue
    .line 4865
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v1, v2, :cond_0

    .line 4878
    :goto_0
    return-void

    .line 4868
    :cond_0
    sget-boolean v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_1

    .line 4869
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v0, v1, v2

    .line 4871
    .local v0, "maxADHeight":I
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 4872
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4874
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxAlldayEvents:I

    div-int v1, v0, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    goto :goto_0

    .line 4876
    .end local v0    # "maxADHeight":I
    :cond_1
    sget v1, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    goto :goto_0
.end method

.method isEventSelected()Z
    .locals 1

    .prologue
    .line 3442
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFullDay(Lcn/nubia/calendar/model/Event;)Z
    .locals 2
    .param p1, "event"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 6986
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startTime:I

    if-nez v0, :cond_0

    iget v0, p1, Lcn/nubia/calendar/model/Event;->endTime:I

    const/16 v1, 0x5a0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadLunarVisible()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1047
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1048
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLanguage:Ljava/lang/String;

    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v3, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 1051
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    .line 1057
    :goto_0
    const-string v3, "is_lunar_visible"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "zh"

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLanguage:Ljava/lang/String;

    .line 1059
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mIsLunarVisible:Z

    .line 1060
    return-void

    .line 1053
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    const-string v4, "custom_calendar"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1059
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1064
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1065
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    .line 1068
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateCurrentTime:Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1236
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1237
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->switchViews(Z)V

    .line 1239
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 5687
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 5688
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 5689
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5692
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 5693
    .local v2, "startMillis":J
    const/16 v6, 0x1403

    .line 5696
    .local v6, "flags":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->formatDateRange(JJI)Ljava/lang/String;

    move-result-object v10

    .line 5698
    .local v10, "title":Ljava/lang/String;
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 5700
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 5701
    .local v9, "numSelectedEvents":I
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 5706
    const/4 v1, 0x1

    if-lt v9, v1, :cond_3

    .line 5707
    const/4 v1, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const v11, 0x7f0c0042

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5708
    .local v8, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5709
    const v1, 0x1080041

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5711
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    invoke-static {v1, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->getEventAccessLevel(Landroid/content/Context;Lcn/nubia/calendar/model/Event;)I

    move-result v0

    .line 5712
    .local v0, "accessLevel":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5713
    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const v11, 0x7f0c003d

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5714
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5715
    const v1, 0x108003e

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5716
    const/16 v1, 0x65

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5719
    :cond_1
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 5720
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const v11, 0x7f0c003c

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5722
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5723
    const v1, 0x108003c

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5726
    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const v11, 0x7f0c003b

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5727
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5728
    const v1, 0x1080033

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5729
    const/16 v1, 0x6e

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5776
    .end local v0    # "accessLevel":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5781
    :goto_1
    return-void

    .line 5733
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const v11, 0x7f0c003b

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5734
    .restart local v8    # "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5735
    const v1, 0x1080033

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5736
    const/16 v1, 0x6e

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 5743
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_4
    const/4 v1, 0x1

    if-lt v9, v1, :cond_6

    .line 5744
    const/4 v1, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const v11, 0x7f0c0042

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5745
    .restart local v8    # "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5746
    const v1, 0x1080041

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5748
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    invoke-static {v1, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->getEventAccessLevel(Landroid/content/Context;Lcn/nubia/calendar/model/Event;)I

    move-result v0

    .line 5749
    .restart local v0    # "accessLevel":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 5750
    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const v11, 0x7f0c003d

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5751
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5752
    const v1, 0x108003e

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5753
    const/16 v1, 0x65

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5756
    :cond_5
    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 5757
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const v11, 0x7f0c003c

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5759
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5760
    const v1, 0x108003c

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5764
    .end local v0    # "accessLevel":I
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const v11, 0x7f0c003b

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5765
    .restart local v8    # "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5766
    const v1, 0x1080033

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5767
    const/16 v1, 0x6e

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5769
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v11, 0x7f0c008c

    invoke-interface {p1, v1, v4, v5, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 5770
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContextMenuHandler:Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5771
    const v1, 0x108003b

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5772
    const/16 v1, 0x64

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 5777
    :catch_0
    move-exception v7

    .line 5779
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6992
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    if-eqz v0, :cond_0

    .line 6993
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    .line 6996
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 6997
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6998
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 7001
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 7002
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7003
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    .line 7006
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 7007
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7008
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 7011
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 7012
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7013
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 7016
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 7017
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7018
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 7021
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 7022
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7023
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 7026
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 7027
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 7028
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 7031
    :cond_7
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    .line 7032
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 6290
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->cleanup()V

    .line 6291
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 6292
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2592
    iget-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    if-eqz v5, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->remeasure(II)V

    .line 2594
    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 2596
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2597
    .local v2, "pl":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2598
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    neg-int v5, v5

    sget v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    add-int/2addr v5, v6

    int-to-float v4, v5

    .line 2599
    .local v4, "yTranslate":F
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2600
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 2601
    .local v0, "dest":Landroid/graphics/Rect;
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 2602
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2603
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 2604
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 2605
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2606
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBackGroundColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2607
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2608
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->doDraw(Landroid/graphics/Canvas;)V

    .line 2609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2610
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_7

    .line 2612
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    if-lez v5, :cond_6

    .line 2613
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    int-to-float v3, v5

    .line 2620
    .local v3, "xTranslate":F
    :goto_0
    neg-float v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2621
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 2623
    .local v1, "nextView":Lcn/nubia/calendar/submodule_day/view/DayView;
    iput v7, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 2624
    invoke-virtual {v1, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2626
    neg-float v5, v3

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2634
    .end local v1    # "nextView":Lcn/nubia/calendar/submodule_day/view/DayView;
    .end local v3    # "xTranslate":F
    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 2635
    iget-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateToast:Z

    if-eqz v5, :cond_1

    .line 2636
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->updateEventDetails()V

    .line 2637
    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateToast:Z

    .line 2639
    :cond_1
    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    .line 2640
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2641
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v5, :cond_2

    .line 2642
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2644
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2645
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 2647
    :cond_3
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v5, :cond_4

    .line 2648
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2651
    :cond_4
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2652
    const/high16 v5, 0x43340000    # 180.0f

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2653
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2654
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 2657
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2658
    return-void

    .line 2615
    :cond_6
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    neg-int v5, v5

    int-to-float v3, v5

    .restart local v3    # "xTranslate":F
    goto :goto_0

    .line 2631
    .end local v3    # "xTranslate":F
    :cond_7
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    int-to-float v5, v5

    neg-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 2019
    sget-boolean v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2020
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2021
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 2032
    :pswitch_0
    sget-object v2, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown hover event action. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    .end local v0    # "action":I
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchExplorationEnabled:Z

    if-nez v2, :cond_2

    .line 2039
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2046
    :cond_1
    :goto_1
    return v1

    .line 2023
    .restart local v0    # "action":I
    :pswitch_1
    sget-object v2, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_HOVER_ENTER"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2026
    :pswitch_2
    sget-object v2, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_HOVER_MOVE"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2029
    :pswitch_3
    sget-object v2, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2041
    .end local v0    # "action":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 2042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectionFromPosition(IIZ)Z

    .line 2044
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto :goto_1

    .line 2021
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 22
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1840
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-nez v5, :cond_4

    .line 1841
    const/16 v5, 0x42

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x13

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x14

    move/from16 v0, p1

    if-ne v0, v5, :cond_1

    .line 1848
    :cond_0
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 1849
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 1850
    const/4 v5, 0x1

    .line 2014
    :goto_0
    return v5

    .line 1851
    :cond_1
    const/16 v5, 0x17

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 1854
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 1855
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 1856
    const/4 v5, 0x1

    goto :goto_0

    .line 1857
    :cond_2
    const/4 v5, 0x4

    move/from16 v0, p1

    if-eq v0, v5, :cond_3

    const/16 v5, 0x52

    move/from16 v0, p1

    if-ne v0, v5, :cond_4

    .line 1860
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1864
    :cond_4
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 1865
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 1867
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v18, v0

    .line 1869
    .local v18, "selectionDay":I
    sparse-switch p1, :sswitch_data_0

    .line 1955
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 1872
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v17, v0

    .line 1873
    .local v17, "selectedEvent":Lcn/nubia/calendar/model/Event;
    if-nez v17, :cond_5

    .line 1874
    const/4 v5, 0x0

    goto :goto_0

    .line 1877
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    :goto_1
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 1884
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 1885
    .local v6, "begin":J
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 1886
    .local v8, "end":J
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcn/nubia/calendar/model/Event;->id:J

    .line 1887
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

    const/4 v12, -0x1

    invoke-virtual/range {v5 .. v12}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1888
    const/4 v5, 0x1

    goto :goto_0

    .line 1878
    .end local v6    # "begin":J
    .end local v8    # "end":J
    .end local v10    # "id":J
    :catch_0
    move-exception v13

    .line 1880
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1890
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "selectedEvent":Lcn/nubia/calendar/model/Event;
    :sswitch_1
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->switchViews(Z)V

    .line 1891
    const/4 v5, 0x1

    goto :goto_0

    .line 1893
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_6

    .line 1894
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1895
    const/4 v5, 0x1

    goto :goto_0

    .line 1897
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 1899
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_7

    .line 1900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v5, v5, Lcn/nubia/calendar/model/Event;->nextLeft:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 1902
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-nez v5, :cond_8

    .line 1903
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 1904
    add-int/lit8 v18, v18, -0x1

    .line 1906
    :cond_8
    const/16 v16, 0x1

    .line 1958
    .local v16, "redraw":Z
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    move/from16 v0, v18

    if-lt v0, v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastJulianDay:I

    move/from16 v0, v18

    if-le v0, v5, :cond_13

    .line 1959
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 1960
    .local v19, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 1961
    .local v4, "date":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1962
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    move/from16 v0, v18

    if-ge v0, v5, :cond_12

    .line 1963
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    sub-int/2addr v5, v12

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 1967
    :goto_3
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 1968
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 1970
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->initView(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 1972
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1973
    .local v8, "end":Landroid/text/format/Time;
    iget v5, v8, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v5, v12

    iput v5, v8, Landroid/text/format/Time;->monthDay:I

    .line 1975
    new-instance v14, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    invoke-direct {v14}, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;-><init>()V

    .line 1976
    .local v14, "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    iput-object v4, v14, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->startTime:Landroid/text/format/Time;

    .line 1977
    iput-object v8, v14, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->endTime:Landroid/text/format/Time;

    .line 1978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v12, 0xfa7

    invoke-virtual {v5, v12, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 1980
    .local v15, "msg":Landroid/os/Message;
    if-eqz v15, :cond_a

    .line 1981
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1986
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1910
    .end local v4    # "date":Landroid/text/format/Time;
    .end local v8    # "end":Landroid/text/format/Time;
    .end local v14    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "redraw":Z
    .end local v19    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_b

    .line 1911
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v5, v5, Lcn/nubia/calendar/model/Event;->nextRight:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 1913
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-nez v5, :cond_c

    .line 1914
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 1915
    add-int/lit8 v18, v18, 0x1

    .line 1917
    :cond_c
    const/16 v16, 0x1

    .line 1918
    .restart local v16    # "redraw":Z
    goto/16 :goto_2

    .line 1921
    .end local v16    # "redraw":Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_d

    .line 1922
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v5, v5, Lcn/nubia/calendar/model/Event;->nextUp:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 1924
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-nez v5, :cond_e

    .line 1925
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 1926
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-nez v5, :cond_e

    .line 1927
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 1928
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->adjustHourSelection()V

    .line 1929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1930
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    .line 1933
    :cond_e
    const/16 v16, 0x1

    .line 1934
    .restart local v16    # "redraw":Z
    goto/16 :goto_2

    .line 1937
    .end local v16    # "redraw":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v5, :cond_f

    .line 1938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v5, v5, Lcn/nubia/calendar/model/Event;->nextDown:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 1940
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-nez v5, :cond_10

    .line 1941
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastPopupEventID:J

    .line 1942
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v5, :cond_11

    .line 1943
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    .line 1951
    :cond_10
    :goto_4
    const/16 v16, 0x1

    .line 1952
    .restart local v16    # "redraw":Z
    goto/16 :goto_2

    .line 1945
    .end local v16    # "redraw":Z
    :cond_11
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 1946
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->adjustHourSelection()V

    .line 1947
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1948
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    goto :goto_4

    .line 1965
    .restart local v4    # "date":Landroid/text/format/Time;
    .restart local v16    # "redraw":Z
    .restart local v19    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    :cond_12
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    add-int/2addr v5, v12

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_3

    .line 1988
    .end local v4    # "date":Landroid/text/format/Time;
    .end local v19    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    :cond_13
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_14

    .line 1989
    new-instance v4, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1990
    .restart local v4    # "date":Landroid/text/format/Time;
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1991
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 1993
    new-instance v14, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    invoke-direct {v14}, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;-><init>()V

    .line 1994
    .restart local v14    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    iput-object v4, v14, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->startTime:Landroid/text/format/Time;

    .line 1995
    iput-object v4, v14, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->endTime:Landroid/text/format/Time;

    .line 1996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOutterHandler:Landroid/os/Handler;

    const/16 v12, 0xfa7

    invoke-virtual {v5, v12, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 1998
    .restart local v15    # "msg":Landroid/os/Message;
    if-eqz v15, :cond_14

    .line 1999
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 2004
    .end local v4    # "date":Landroid/text/format/Time;
    .end local v14    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2006
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    .line 2007
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateToast:Z

    .line 2009
    if-eqz v16, :cond_15

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 2011
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2014
    :cond_15
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 1869
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 1798
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 1799
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1801
    .local v0, "duration":J
    packed-switch p1, :pswitch_data_0

    .line 1835
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1803
    :pswitch_0
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1808
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1813
    const/4 v2, 0x2

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 1814
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto :goto_0

    .line 1819
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1820
    invoke-direct {p0, v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->switchViews(Z)V

    goto :goto_0

    .line 1822
    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionMode:I

    .line 1823
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 1824
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->performLongClick()Z

    goto :goto_0

    .line 1801
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6395
    const/4 v6, 0x2

    .line 6396
    .local v6, "flags":I
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 6397
    .local v2, "time":J
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-nez v1, :cond_0

    .line 6398
    or-int/lit8 v6, v6, 0x1

    .line 6400
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6401
    or-int/lit16 v6, v6, 0x80

    .line 6403
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->formatDateRange(JJI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 6405
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionDay:I

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPressSelectDay:I

    .line 6406
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionHour:I

    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPressSelectHour:I

    .line 6408
    :try_start_0
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6409
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 6410
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 6412
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    new-instance v5, Lcn/nubia/calendar/submodule_day/view/DayView$8;

    invoke-direct {v5, p0}, Lcn/nubia/calendar/submodule_day/view/DayView$8;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 6413
    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 6428
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6432
    .end local v0    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 6429
    :catch_0
    move-exception v7

    .line 6430
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x1

    .line 5414
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_Y_SPAN:I

    int-to-float v3, v3

    .line 5415
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5417
    .local v2, "spanY":F
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeightBeforeScaleGesture:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 5419
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    if-ge v3, v4, :cond_3

    .line 5422
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    .line 5423
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 5424
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mMinCellHeight:I

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeightBeforeScaleGesture:I

    .line 5431
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    sub-int v1, v3, v4

    .line 5433
    .local v1, "gestureCenterInPixels":I
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 5435
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    .line 5438
    sget-boolean v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG_SCALING:Z

    if-eqz v3, :cond_1

    .line 5439
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 5440
    .local v0, "ViewStartHour":F
    sget-object v3, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScale: mGestureCenterHour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tViewStartHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tmViewStartY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tmCellHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SpanY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5443
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5440
    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5446
    .end local v0    # "ViewStartHour":F
    :cond_1
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-gez v3, :cond_4

    .line 5447
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 5448
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    .line 5455
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeFirstHour()V

    .line 5457
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 5458
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5459
    return v6

    .line 5425
    .end local v1    # "gestureCenterInPixels":I
    :cond_3
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_CELL_HEIGHT:I

    if-le v3, v4, :cond_0

    .line 5426
    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    .line 5427
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_CELL_HEIGHT:I

    sput v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    .line 5428
    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->MAX_CELL_HEIGHT:I

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeightBeforeScaleGesture:I

    goto/16 :goto_0

    .line 5450
    .restart local v1    # "gestureCenterInPixels":I
    :cond_4
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le v3, v4, :cond_2

    .line 5451
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 5452
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 5391
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    .line 5392
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 5394
    .local v1, "gestureCenterInPixels":F
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    .line 5397
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->MIN_Y_SPAN:I

    int-to-float v2, v2

    .line 5398
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 5397
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    .line 5399
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeightBeforeScaleGesture:I

    .line 5401
    sget-boolean v2, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG_SCALING:Z

    if-eqz v2, :cond_0

    .line 5402
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    int-to-float v2, v2

    sget v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 5403
    .local v0, "ViewStartHour":F
    sget-object v2, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScaleBegin: mGestureCenterHour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureCenterHour:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tViewStartHour: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmViewStartY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmCellHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SpanY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5406
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5403
    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5409
    .end local v0    # "ViewStartHour":F
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x0

    .line 5464
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrollStartY:I

    .line 5465
    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollY:F

    .line 5466
    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mInitialScrollX:F

    .line 5467
    iput v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingSpanY:F

    .line 5468
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1527
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    .line 1528
    iput p2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    .line 1529
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1530
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1531
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v0, p1, v2

    .line 1532
    .local v0, "gridAreaWidth":I
    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    div-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellWidth:I

    .line 1533
    add-int/lit8 v2, v0, -0x7

    div-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayCellWidth:I

    .line 1536
    div-int/lit8 v2, p1, 0x7

    sput v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mHorizontalSnapBackThreshold:I

    .line 1538
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1539
    .local v1, "p":Landroid/graphics/Paint;
    sget v2, Lcn/nubia/calendar/submodule_day/view/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1540
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursTextHeight:I

    .line 1541
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_day/view/DayView;->remeasure(II)V

    .line 1542
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5473
    .local v0, "action":I
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 5474
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ev.getPointerCount() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5474
    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5479
    :cond_0
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v6, :cond_4

    .line 5492
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 5670
    sget-boolean v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 5671
    sget-object v5, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not MotionEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5673
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 5676
    :cond_3
    :goto_0
    return v4

    .line 5483
    :cond_4
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_1

    .line 5484
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5485
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 5494
    :pswitch_0
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingScroll:Z

    .line 5495
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 5496
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_DOWN ev.getDownTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5496
    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5500
    :cond_5
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAlldayHeight:I

    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v6, v7

    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v1, v6, v7

    .line 5501
    .local v1, "bottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 5502
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchStartedInAlldayArea:Z

    .line 5506
    :goto_1
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    .line 5507
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    .line 5508
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 5504
    :cond_6
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchStartedInAlldayArea:Z

    goto :goto_1

    .line 5512
    .end local v1    # "bottom":I
    :pswitch_1
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 5513
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE Cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    :cond_7
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v6, :cond_f

    .line 5518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    .line 5519
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastMotionY:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    move v3, v4

    .line 5520
    .local v3, "updirection":Z
    :goto_2
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastMotionY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    move v2, v4

    .line 5521
    .local v2, "downdirection":Z
    :goto_3
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastMotionY:F

    .line 5523
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    .line 5524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    .line 5527
    :cond_8
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5529
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-lez v5, :cond_c

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AUTO_SCROLL_UP:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_c

    .line 5531
    if-eqz v3, :cond_b

    .line 5532
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->UP:I

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->startScroll(I)V

    goto/16 :goto_0

    .end local v2    # "downdirection":Z
    .end local v3    # "updirection":Z
    :cond_9
    move v3, v5

    .line 5519
    goto :goto_2

    .restart local v3    # "updirection":Z
    :cond_a
    move v2, v5

    .line 5520
    goto :goto_3

    .line 5534
    .restart local v2    # "downdirection":Z
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto/16 :goto_0

    .line 5539
    :cond_c
    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-ge v5, v6, :cond_e

    iget v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->AUTO_SCROLL_BOTTOM:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_e

    .line 5542
    if-eqz v2, :cond_d

    .line 5543
    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DOWN:I

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->startScroll(I)V

    goto/16 :goto_0

    .line 5545
    :cond_d
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto/16 :goto_0

    .line 5551
    :cond_e
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto/16 :goto_0

    .line 5559
    .end local v2    # "downdirection":Z
    .end local v3    # "updirection":Z
    :cond_f
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 5565
    :pswitch_2
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_10

    .line 5566
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP Cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5570
    :cond_10
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v6, :cond_12

    .line 5573
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEnd:Z

    .line 5575
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_11

    .line 5577
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5580
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    .line 5581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    .line 5586
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->saveSelectedEvent()V

    .line 5592
    :cond_12
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5593
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5594
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mStartingScroll:Z

    .line 5595
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5596
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    if-nez v6, :cond_13

    .line 5597
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandleActionUp:Z

    .line 5598
    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    .line 5599
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto/16 :goto_0

    .line 5603
    :cond_13
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOnFlingCalled:Z

    if-nez v6, :cond_3

    .line 5609
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    if-eqz v6, :cond_14

    .line 5610
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 5611
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->resetSelectedHour()V

    .line 5612
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5615
    :cond_14
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_3

    .line 5616
    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchMode:I

    .line 5617
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sget v7, Lcn/nubia/calendar/submodule_day/view/DayView;->mHorizontalSnapBackThreshold:I

    if-le v6, v7, :cond_17

    .line 5620
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_15

    .line 5621
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v7, "- horizontal scroll: switch views"

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5622
    :cond_15
    iget v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    if-lez v6, :cond_16

    move v6, v4

    :goto_4
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    int-to-float v7, v7

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/calendar/submodule_day/view/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 5623
    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    goto/16 :goto_0

    :cond_16
    move v6, v5

    .line 5622
    goto :goto_4

    .line 5630
    :cond_17
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_18

    .line 5631
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v7, "- horizontal scroll: snap back"

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5632
    :cond_18
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->recalc()V

    .line 5633
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 5634
    iput v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartX:I

    goto/16 :goto_0

    .line 5642
    :pswitch_3
    sget-boolean v6, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v6, :cond_19

    .line 5643
    sget-object v6, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    const-string v7, "ACTION_CANCEL"

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5647
    :cond_19
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v6, :cond_1b

    .line 5650
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEnd:Z

    .line 5651
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 5653
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5656
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    .line 5657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    .line 5659
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->saveSelectedEvent()V

    .line 5664
    :cond_1b
    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5665
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScrolling:Z

    .line 5666
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->resetSelectedHour()V

    goto/16 :goto_0

    .line 5676
    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 5492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2416
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2419
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragFlag:Z

    if-eqz v0, :cond_0

    .line 2426
    :goto_0
    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 2427
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2430
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2432
    .local v8, "weekStart":Landroid/text/format/Time;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2433
    iput v4, v8, Landroid/text/format/Time;->hour:I

    .line 2434
    iput v4, v8, Landroid/text/format/Time;->minute:I

    .line 2435
    iput v4, v8, Landroid/text/format/Time;->second:I

    .line 2436
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 2439
    .local v6, "millis":J
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastReloadMillis:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    .line 2508
    :goto_1
    return-void

    .line 2422
    .end local v6    # "millis":J
    .end local v8    # "weekStart":Landroid/text/format/Time;
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    goto :goto_0

    .line 2442
    .restart local v6    # "millis":J
    .restart local v8    # "weekStart":Landroid/text/format/Time;
    :cond_1
    iput-wide v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLastReloadMillis:J

    .line 2446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstJulianDay:I

    new-instance v4, Lcn/nubia/calendar/submodule_day/view/DayView$6;

    invoke-direct {v4, p0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView$6;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public restartCurrentTimeUpdates()V
    .locals 2

    .prologue
    .line 6281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaused:Z

    .line 6282
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6283
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateCurrentTime:Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6284
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mUpdateCurrentTime:Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6286
    :cond_0
    return-void
.end method

.method public saveSelectedEvent()V
    .locals 58

    .prologue
    .line 6582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 6907
    :cond_0
    :goto_0
    return-void

    .line 6586
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressY:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragViewStartY:I

    int-to-float v5, v5

    sub-float v22, v4, v5

    .line 6587
    .local v22, "deltaY":F
    sget v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v14, v4, 0x1

    .line 6589
    .local v14, "cellY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v22

    float-to-int v5, v0

    add-int v10, v4, v5

    .line 6590
    .local v10, "bottom":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move/from16 v0, v22

    float-to-int v5, v0

    add-int v52, v4, v5

    .line 6592
    .local v52, "top":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int/2addr v4, v5

    if-lt v10, v4, :cond_2

    .line 6593
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewHeight:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstCell:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v22, v0

    .line 6598
    :cond_2
    if-gtz v52, :cond_3

    .line 6599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v4, v4, 0x0

    int-to-float v0, v4

    move/from16 v22, v0

    .line 6602
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int v19, v4, v5

    .line 6603
    .local v19, "deltaTime":I
    const/16 v39, 0x0

    .line 6605
    .local v39, "numDays":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    int-to-float v4, v4

    const/high16 v5, 0x42700000    # 60.0f

    int-to-float v6, v14

    div-float/2addr v5, v6

    mul-float v5, v5, v22

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v53, v0

    .line 6612
    .local v53, "upStartTime":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    rem-int/lit8 v4, v53, 0xa

    const/4 v6, 0x5

    if-lt v4, v6, :cond_f

    rem-int/lit8 v4, v53, 0xa

    sub-int v4, v53, v4

    add-int/lit8 v4, v4, 0xa

    :goto_1
    iput v4, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 6614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v5, v5, v19

    iput v5, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 6616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    if-gez v4, :cond_4

    .line 6617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_BEGIN_TIME:I

    iput v5, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 6618
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v5, v5, v19

    iput v5, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 6620
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_END_TIME:I

    if-le v4, v5, :cond_5

    .line 6621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    sget v5, Lcn/nubia/calendar/submodule_day/view/DayView;->DAY_END_TIME:I

    iput v5, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 6622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v5, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    sub-int v5, v5, v19

    iput v5, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 6625
    :cond_5
    const-string v4, "yyyy-MM-dd"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v6, v5, Lcn/nubia/calendar/model/Event;->startMillis:J

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 6627
    .local v31, "eventOrginDate":Ljava/lang/String;
    move-object/from16 v30, v31

    .line 6629
    .local v30, "eventNewDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_c

    .line 6631
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTouchX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressX:F

    sub-float/2addr v4, v5

    float-to-double v0, v4

    move-wide/from16 v20, v0

    .line 6633
    .local v20, "deltaX":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-wide/from16 v0, v20

    double-to-int v5, v0

    add-int v33, v4, v5

    .line 6634
    .local v33, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-wide/from16 v0, v20

    double-to-int v5, v0

    add-int v44, v4, v5

    .line 6636
    .local v44, "right":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    move/from16 v0, v33

    if-gt v0, v4, :cond_6

    .line 6637
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    move/from16 v33, v0

    .line 6640
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    move/from16 v0, v44

    if-lt v0, v4, :cond_7

    .line 6641
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int v33, v4, v5

    .line 6646
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOneDayInWeekWidth:I

    .line 6650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v43, v4, v5

    .line 6652
    .local v43, "rectWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEventRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move/from16 v0, v43

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOneDayInWeekWidth:I

    div-int v34, v4, v5

    .line 6658
    .local v34, "maxnumDays":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v4, v33, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOneDayInWeekWidth:I

    div-int v23, v4, v5

    .line 6659
    .local v23, "dragUpDay":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    sub-int v4, v33, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOneDayInWeekWidth:I

    int-to-float v5, v5

    div-float v32, v4, v5

    .line 6660
    .local v32, "i":F
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mLongPressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHoursWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOneDayInWeekWidth:I

    div-int v46, v4, v5

    .line 6663
    .local v46, "selectedDay":I
    move/from16 v0, v23

    int-to-float v4, v0

    sub-float v4, v32, v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 6664
    add-int/lit8 v23, v23, 0x1

    .line 6668
    :cond_8
    if-gez v23, :cond_9

    .line 6669
    const/16 v23, 0x0

    .line 6672
    :cond_9
    const/4 v4, 0x6

    move/from16 v0, v23

    if-le v0, v4, :cond_a

    .line 6673
    const/16 v23, 0x6

    .line 6676
    :cond_a
    sub-int v39, v23, v46

    .line 6681
    move/from16 v0, v34

    neg-int v4, v0

    move/from16 v0, v39

    if-ge v0, v4, :cond_b

    .line 6682
    add-int/lit8 v39, v39, 0x1

    .line 6685
    :cond_b
    if-eqz v39, :cond_c

    .line 6687
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 6688
    .local v13, "calendar":Ljava/util/Calendar;
    new-instance v45, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6689
    .local v45, "sdf":Ljava/text/SimpleDateFormat;
    const/16 v17, 0x0

    .line 6692
    .local v17, "date":Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 6698
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6700
    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 6701
    .local v18, "day":I
    const/4 v4, 0x5

    add-int v5, v18, v39

    invoke-virtual {v13, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 6703
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v30

    .line 6707
    .end local v13    # "calendar":Ljava/util/Calendar;
    .end local v17    # "date":Ljava/util/Date;
    .end local v18    # "day":I
    .end local v20    # "deltaX":D
    .end local v23    # "dragUpDay":I
    .end local v32    # "i":F
    .end local v33    # "left":I
    .end local v34    # "maxnumDays":I
    .end local v43    # "rectWidth":I
    .end local v44    # "right":I
    .end local v45    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v46    # "selectedDay":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    div-int/lit8 v49, v4, 0x3c

    .line 6708
    .local v49, "startTimeHour":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->startTime:I

    rem-int/lit8 v50, v4, 0x3c

    .line 6710
    .local v50, "startTimeMinute":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    div-int/lit8 v27, v4, 0x3c

    .line 6711
    .local v27, "endTimeHour":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget v4, v4, Lcn/nubia/calendar/model/Event;->endTime:I

    rem-int/lit8 v28, v4, 0x3c

    .line 6713
    .local v28, "endTimeMinute":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6714
    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 6715
    .local v48, "startTime":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6716
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 6718
    .local v26, "endTime":Ljava/lang/String;
    new-instance v55, Landroid/content/ContentValues;

    invoke-direct/range {v55 .. v55}, Landroid/content/ContentValues;-><init>()V

    .line 6719
    .local v55, "values":Landroid/content/ContentValues;
    const-string v4, "dtstart"

    .line 6720
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v5

    .line 6721
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    .line 6720
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6719
    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6724
    const-string v4, "dtend"

    .line 6725
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v5

    .line 6726
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    .line 6725
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6724
    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6895
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_19

    if-eqz v39, :cond_19

    .line 6898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    if-nez v4, :cond_e

    .line 6899
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;-><init>(Landroid/content/Context;Lcn/nubia/calendar/model/CalendarEventModel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    .line 6901
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;I)Z

    goto/16 :goto_0

    .line 6612
    .end local v26    # "endTime":Ljava/lang/String;
    .end local v27    # "endTimeHour":I
    .end local v28    # "endTimeMinute":I
    .end local v30    # "eventNewDate":Ljava/lang/String;
    .end local v31    # "eventOrginDate":Ljava/lang/String;
    .end local v48    # "startTime":Ljava/lang/String;
    .end local v49    # "startTimeHour":I
    .end local v50    # "startTimeMinute":I
    .end local v55    # "values":Landroid/content/ContentValues;
    :cond_f
    rem-int/lit8 v4, v53, 0xa

    sub-int v4, v53, v4

    goto/16 :goto_1

    .line 6693
    .restart local v13    # "calendar":Ljava/util/Calendar;
    .restart local v17    # "date":Ljava/util/Date;
    .restart local v20    # "deltaX":D
    .restart local v23    # "dragUpDay":I
    .restart local v30    # "eventNewDate":Ljava/lang/String;
    .restart local v31    # "eventOrginDate":Ljava/lang/String;
    .restart local v32    # "i":F
    .restart local v33    # "left":I
    .restart local v34    # "maxnumDays":I
    .restart local v43    # "rectWidth":I
    .restart local v44    # "right":I
    .restart local v45    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v46    # "selectedDay":I
    :catch_0
    move-exception v24

    .line 6695
    .local v24, "e":Ljava/text/ParseException;
    invoke-virtual/range {v24 .. v24}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_2

    .line 6728
    .end local v13    # "calendar":Ljava/util/Calendar;
    .end local v17    # "date":Ljava/util/Date;
    .end local v20    # "deltaX":D
    .end local v23    # "dragUpDay":I
    .end local v24    # "e":Ljava/text/ParseException;
    .end local v32    # "i":F
    .end local v33    # "left":I
    .end local v34    # "maxnumDays":I
    .end local v43    # "rectWidth":I
    .end local v44    # "right":I
    .end local v45    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v46    # "selectedDay":I
    .restart local v26    # "endTime":Ljava/lang/String;
    .restart local v27    # "endTimeHour":I
    .restart local v28    # "endTimeMinute":I
    .restart local v48    # "startTime":Ljava/lang/String;
    .restart local v49    # "startTimeHour":I
    .restart local v50    # "startTimeMinute":I
    .restart local v55    # "values":Landroid/content/ContentValues;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 6729
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v40

    .line 6730
    .local v40, "preStartMillis":J
    const/4 v11, 0x0

    .line 6732
    .local v11, "c":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    .line 6733
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dtstart"

    aput-object v8, v6, v7

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcn/nubia/calendar/model/Event;->id:J

    move-wide/from16 v56, v0

    .line 6737
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v8, v9

    const/4 v9, 0x0

    .line 6734
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6739
    if-eqz v11, :cond_11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 6740
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v40

    .line 6745
    :cond_11
    if-eqz v11, :cond_12

    .line 6746
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6750
    :cond_12
    :goto_4
    new-instance v42, Landroid/text/format/Time;

    invoke-direct/range {v42 .. v42}, Landroid/text/format/Time;-><init>()V

    .line 6751
    .local v42, "preTime":Landroid/text/format/Time;
    move-object/from16 v0, v42

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 6752
    new-instance v37, Landroid/text/format/Time;

    invoke-direct/range {v37 .. v37}, Landroid/text/format/Time;-><init>()V

    .line 6753
    .local v37, "nowTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 6754
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 6753
    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 6755
    move-object/from16 v0, v42

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v37

    iput v4, v0, Landroid/text/format/Time;->year:I

    .line 6756
    move-object/from16 v0, v42

    iget v4, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v37

    iput v4, v0, Landroid/text/format/Time;->month:I

    .line 6757
    move-object/from16 v0, v42

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, v37

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 6758
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 6759
    const-string v4, "dtstart"

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6763
    const-string v4, "rrule"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v5, v5, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v0, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 6768
    .local v36, "newrule":Ljava/lang/String;
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 6769
    .local v29, "endtime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 6770
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 6769
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 6772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, "WEEKLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 6773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 6775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v47, v4, 0x1

    .line 6776
    .local v47, "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    .line 6777
    .local v25, "end":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 6779
    .local v18, "day":Ljava/lang/String;
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayToInt:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v39

    rem-int/lit8 v38, v4, 0x7

    .line 6780
    .local v38, "num":I
    if-nez v38, :cond_13

    .line 6781
    const/16 v38, 0x7

    .line 6783
    :cond_13
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mIntToDay:Ljava/util/HashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 6786
    .local v35, "newday":Ljava/lang/String;
    new-instance v51, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6788
    .local v51, "strbuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, v51

    move/from16 v1, v47

    move/from16 v2, v25

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 6791
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 6839
    .end local v18    # "day":Ljava/lang/String;
    .end local v25    # "end":I
    .end local v35    # "newday":Ljava/lang/String;
    .end local v38    # "num":I
    .end local v47    # "start":I
    .end local v51    # "strbuffer":Ljava/lang/StringBuffer;
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_d

    if-eqz v39, :cond_d

    .line 6841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    .line 6842
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcn/nubia/calendar/model/Event;->id:J

    move-wide/from16 v56, v0

    .line 6846
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v8, v9

    const/4 v9, 0x0

    .line 6843
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 6849
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_d

    .line 6850
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6851
    new-instance v4, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v4}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 6852
    new-instance v4, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v4}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 6854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 6855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 6856
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 6857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v8, v7, Lcn/nubia/calendar/model/Event;->id:J

    .line 6858
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 6859
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    iput-object v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 6860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    .line 6862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v36

    iput-object v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 6863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v6, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    iput-wide v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    .line 6864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 6865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 6866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    const/16 v6, 0x2bc

    iput v6, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    iput v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    .line 6868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v5

    .line 6869
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 6870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v6, v5, Lcn/nubia/calendar/model/Event;->endMillis:J

    iput-wide v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    .line 6871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->getCalendarFromDateAndTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v5

    .line 6872
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 6873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v4

    if-nez v4, :cond_d

    .line 6874
    new-instance v12, Lcn/nubia/calendar/model/CalendarCustomEventModel;

    invoke-direct {v12}, Lcn/nubia/calendar/model/CalendarCustomEventModel;-><init>()V

    .line 6875
    .local v12, "calenCusEventModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    new-instance v15, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    invoke-direct {v15}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;-><init>()V

    .line 6876
    .local v15, "colorItem":Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mSginColor:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->setSignColor(Ljava/lang/String;)V

    .line 6877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mBgColor:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->setBackColor(Ljava/lang/String;)V

    .line 6878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mLongPressBgColor:Ljava/lang/String;

    .line 6879
    invoke-virtual {v15, v4}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->setLongPressBackColor(Ljava/lang/String;)V

    .line 6880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mLongPressBgBorderColor:Ljava/lang/String;

    .line 6881
    invoke-virtual {v15, v4}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->setLongPressBorderColor(Ljava/lang/String;)V

    .line 6883
    invoke-virtual {v12, v15}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setColorItem(Lcn/nubia/calendar/submodule_agenda/view/ColorItem;)V

    .line 6884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mPicPath:Ljava/lang/String;

    .line 6885
    invoke-virtual {v12, v4}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setPicturePath(Ljava/lang/String;)V

    .line 6886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v4, v12}, Lcn/nubia/calendar/model/CalendarEventModel;->setCalendarCustomEventModel(Lcn/nubia/calendar/model/CalendarCustomEventModel;)V

    goto/16 :goto_3

    .line 6742
    .end local v12    # "calenCusEventModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    .end local v15    # "colorItem":Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v29    # "endtime":Landroid/text/format/Time;
    .end local v36    # "newrule":Ljava/lang/String;
    .end local v37    # "nowTime":Landroid/text/format/Time;
    .end local v42    # "preTime":Landroid/text/format/Time;
    :catch_1
    move-exception v24

    .line 6743
    .local v24, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6745
    if-eqz v11, :cond_12

    .line 6746
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 6745
    .end local v24    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_15

    .line 6746
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6748
    :cond_15
    throw v4

    .line 6794
    .restart local v29    # "endtime":Landroid/text/format/Time;
    .restart local v36    # "newrule":Ljava/lang/String;
    .restart local v37    # "nowTime":Landroid/text/format/Time;
    .restart local v42    # "preTime":Landroid/text/format/Time;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, "MONTHLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v47, v4, 0x1

    .line 6797
    .restart local v47    # "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    .line 6799
    .restart local v25    # "end":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 6801
    .restart local v18    # "day":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v54

    .line 6803
    .local v54, "value":I
    add-int v4, v54, v39

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    .line 6806
    .restart local v35    # "newday":Ljava/lang/String;
    new-instance v51, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6808
    .restart local v51    # "strbuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, v51

    move/from16 v1, v47

    move/from16 v2, v25

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 6811
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v36

    goto/16 :goto_5

    .line 6812
    .end local v35    # "newday":Ljava/lang/String;
    .end local v51    # "strbuffer":Ljava/lang/StringBuffer;
    .end local v54    # "value":I
    :catch_2
    move-exception v24

    .line 6813
    .restart local v24    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 6816
    .end local v18    # "day":Ljava/lang/String;
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v25    # "end":I
    .end local v47    # "start":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, "YEARLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 6818
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v47, v4, 0x1

    .line 6819
    .restart local v47    # "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    .line 6821
    .restart local v25    # "end":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 6823
    .restart local v18    # "day":Ljava/lang/String;
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mDayToInt:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v39

    rem-int/lit8 v38, v4, 0x7

    .line 6824
    .restart local v38    # "num":I
    if-nez v38, :cond_18

    .line 6825
    const/16 v38, 0x7

    .line 6827
    :cond_18
    sget-object v4, Lcn/nubia/calendar/submodule_day/view/DayView;->mIntToDay:Ljava/util/HashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 6831
    .restart local v35    # "newday":Ljava/lang/String;
    new-instance v51, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvent:Lcn/nubia/calendar/model/Event;

    iget-object v4, v4, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6835
    .restart local v51    # "strbuffer":Ljava/lang/StringBuffer;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_5

    .line 6903
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v18    # "day":Ljava/lang/String;
    .end local v25    # "end":I
    .end local v29    # "endtime":Landroid/text/format/Time;
    .end local v35    # "newday":Ljava/lang/String;
    .end local v36    # "newrule":Ljava/lang/String;
    .end local v37    # "nowTime":Landroid/text/format/Time;
    .end local v38    # "num":I
    .end local v40    # "preStartMillis":J
    .end local v42    # "preTime":Landroid/text/format/Time;
    .end local v47    # "start":I
    .end local v51    # "strbuffer":Ljava/lang/StringBuffer;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mDragEvent:Lcn/nubia/calendar/model/Event;

    iget-wide v8, v7, Lcn/nubia/calendar/model/Event;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAnimateDayEventHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 4953
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayEventHeight:I

    .line 4954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 4955
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 4956
    return-void
.end method

.method public setAnimateDayHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 4946
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateDayHeight:I

    .line 4947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 4948
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 4949
    return-void
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .param p1, "todayAlpha"    # I

    .prologue
    .line 1427
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateTodayAlpha:I

    .line 1428
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 1429
    return-void
.end method

.method setFirstVisibleHour(I)V
    .locals 1
    .param p1, "firstHour"    # I

    .prologue
    .line 1322
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    .line 1323
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    .line 1324
    return-void
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 4940
    sput p1, Lcn/nubia/calendar/submodule_day/view/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 4941
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 4942
    return-void
.end method

.method public setSelected(Landroid/text/format/Time;ZZ)V
    .locals 12
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "ignoreTime"    # Z
    .param p3, "animateToday"    # Z

    .prologue
    .line 1328
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1331
    :cond_0
    const-string v7, "%d-%d-%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p1, Landroid/text/format/Time;->year:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p1, Landroid/text/format/Time;->month:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, p1, Landroid/text/format/Time;->monthDay:I

    .line 1332
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1331
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1334
    .local v6, "timeString":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1335
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    iget v8, p1, Landroid/text/format/Time;->month:I

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mClickedDayColor:I

    .line 1336
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedHour(I)V

    .line 1337
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedEvent(Lcn/nubia/calendar/model/Event;)V

    .line 1338
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPrevSelectedEvent:Lcn/nubia/calendar/model/Event;

    .line 1339
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1340
    .local v4, "millis":J
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v8, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v7

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelectedDay(I)V

    .line 1341
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1342
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mComputeSelectedEvents:Z

    .line 1344
    const/high16 v1, -0x80000000

    .line 1346
    .local v1, "gotoY":I
    if-nez p2, :cond_3

    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1347
    const/4 v2, 0x0

    .line 1349
    .local v2, "lastHour":I
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    if-ge v7, v8, :cond_8

    .line 1351
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int v1, v7, v8

    .line 1367
    :cond_1
    :goto_1
    sget-boolean v7, Lcn/nubia/calendar/submodule_day/view/DayView;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1368
    sget-object v7, Lcn/nubia/calendar/submodule_day/view/DayView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Go "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 1st "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "CH "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lh "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " gh "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ymax "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_2
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le v1, v7, :cond_9

    .line 1375
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    .line 1380
    .end local v2    # "lastHour":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->recalc()V

    .line 1381
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mRemeasure:Z

    .line 1382
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 1383
    const/4 v0, 0x0

    .line 1384
    .local v0, "delayAnimateToday":Z
    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_4

    .line 1385
    const-string v7, "viewStartY"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    aput v10, v8, v9

    const/4 v9, 0x1

    aput v1, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1387
    .local v3, "scrollAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1388
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1389
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1390
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1391
    const/4 v0, 0x1

    .line 1393
    .end local v3    # "scrollAnim":Landroid/animation/ValueAnimator;
    :cond_4
    if-eqz p3, :cond_7

    .line 1394
    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimatorListener:Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

    monitor-enter v8

    .line 1395
    :try_start_0
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_5

    .line 1396
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1397
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1399
    :cond_5
    const-string v7, "animateTodayAlpha"

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget v11, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateTodayAlpha:I

    aput v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xff

    aput v11, v9, v10

    invoke-static {p0, v7, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 1401
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mAnimateToday:Z

    .line 1402
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimatorListener:Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 1403
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimatorListener:Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

    iget-object v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v9}, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 1404
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimatorListener:Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1405
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1406
    if-eqz v0, :cond_6

    .line 1407
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1410
    :cond_6
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_day/view/DayView;->sendAccessibilityEventAsNeeded(Z)V

    goto/16 :goto_0

    .line 1353
    .end local v0    # "delayAnimateToday":Z
    .restart local v2    # "lastHour":I
    :cond_8
    iget v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHourOffset:I

    sub-int/2addr v7, v8

    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    div-int/2addr v7, v8

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mFirstHour:I

    add-int v2, v7, v8

    .line 1356
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    if-lt v7, v2, :cond_1

    .line 1362
    iget-object v7, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->minute:I

    int-to-float v8, v8

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    sget v8, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mGridAreaHeight:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v1, v7

    goto/16 :goto_1

    .line 1376
    :cond_9
    if-gez v1, :cond_3

    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_3

    .line 1377
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1410
    .end local v2    # "lastHour":I
    .restart local v0    # "delayAnimateToday":Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public setViewStartY(I)V
    .locals 1
    .param p1, "viewStartY"    # I

    .prologue
    .line 1416
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    if-le p1, v0, :cond_0

    .line 1417
    iget p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    .line 1420
    :cond_0
    iput p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    .line 1422
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->computeFirstHour()V

    .line 1423
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 1424
    return-void
.end method

.method public startScroll(I)V
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x3e8

    const/4 v1, 0x0

    .line 6933
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6965
    :goto_0
    return-void

    .line 6937
    :cond_0
    const/4 v4, 0x0

    .line 6939
    .local v4, "delta":I
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v6, v0, 0x4

    .line 6941
    .local v6, "step":I
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->UP:I

    if-ne p1, v0, :cond_3

    .line 6943
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    if-ge v0, v6, :cond_2

    .line 6944
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    neg-int v4, v0

    .line 6949
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 6964
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto :goto_0

    .line 6946
    :cond_2
    neg-int v4, v6

    goto :goto_1

    .line 6952
    :cond_3
    sget v0, Lcn/nubia/calendar/submodule_day/view/DayView;->DOWN:I

    if-ne p1, v0, :cond_1

    .line 6954
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sub-int/2addr v0, v2

    if-ge v0, v6, :cond_4

    .line 6956
    iget v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mMaxViewStartY:I

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    sub-int v4, v0, v2

    .line 6961
    :goto_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mViewStartY:I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto :goto_2

    .line 6958
    :cond_4
    move v4, v6

    goto :goto_3
.end method

.method public stopEventsAnimation()V
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2518
    :cond_0
    return-void
.end method
