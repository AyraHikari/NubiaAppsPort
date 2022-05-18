.class public Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$onReminderMethodResult;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAccountsChangeListener;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;
    }
.end annotation


# static fields
.field private static final CHOOSE_PICK_PICTURE:I = 0x1

.field private static final CHOOSE_TAKE_PICTURE:I = 0x0

.field public static DEFAULT_REMINDERTIME:Ljava/lang/String; = null

.field public static final DEFAULT_RING_MODE:I = -0x1

.field private static final GOOGLE_SECONDARY_CALENDAR:Ljava/lang/String; = "calendar.google.com"

.field public static final LUNARPERMONTH:I = 0x1

.field public static final LUNARPERYEAR:I = 0x2

.field private static final PERIOD_SPACE:Ljava/lang/String; = ". "

.field public static final PICK_EMAILS:I = 0x3

.field public static final PICK_PHONES:I = 0x7d0

.field public static final PICK_PICTURE:I = 0x2

.field public static final PIC_PATH:Ljava/lang/String; = "/zcalendar/picture"

.field public static final REMINDER_METHOD_VALUE:Ljava/lang/String; = "reminder_method_value"

.field public static final REMINDER_METHOD_VALUE_CODE:I = 0x5

.field public static final REMINDER_MINUTES_VALUE_CODE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EditEventView"

.field public static final TAKE_PICTURE:I = 0x1

.field public static mMethodIndex:I


# instance fields
.field private accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private currentLanguage:Ljava/lang/String;

.field private dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

.field private dpd_datePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

.field private dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

.field private editEventActionBarButtons:Landroid/view/View;

.field private isChangeCalendarType:Z

.field private isClickDateOrTimeSet:Z

.field mAccessLevelSpinner:Landroid/widget/Spinner;

.field private mAccounts:[Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcn/nubia/ex/chips/AccountSpecifier;

.field private mAllDay:Z

.field mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mAttendeesGroupParent:Landroid/widget/LinearLayout;

.field private mAvailabilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mAvailabilityValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarSelectorGroup:Landroid/view/View;

.field mCalendarSelectorWrapper:Landroid/view/View;

.field mCalendarStaticGroup:Landroid/view/View;

.field private mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCalendarsSpinner:Landroid/widget/Spinner;

.field mCalendarsTextView:Landroid/widget/TextView;

.field mChoosePicture:Landroid/widget/Button;

.field private mDateAndTimeClickListenerEnd:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

.field private mDateAndTimeClickListenerStart:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

.field private mDateAndTimeListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

.field public mDateLeapFlag:Z

.field private mDateListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

.field private mDayOfMonth:I

.field private mDefaultReminderMinutes:I

.field mDescriptionTextView:Landroid/widget/TextView;

.field private mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

.field public mEditEventLeapFlag:Z

.field mEditOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEditViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcn/nubia/common/Rfc822Validator;

.field mEndDateHome:Landroid/widget/TextView;

.field private mEndDateText:Landroid/widget/TextView;

.field mEndDayParent:Landroid/widget/LinearLayout;

.field private mEndTime:Landroid/text/format/Time;

.field mEndTimeHome:Landroid/widget/TextView;

.field private mEndTimeParent:Landroid/widget/LinearLayout;

.field private mEndTimeText:Landroid/widget/TextView;

.field private mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

.field private mF:Ljava/util/Formatter;

.field private mGroupCount:I

.field private mHour:I

.field private mImageFilePath:Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field mIsAllDay:Z

.field private mIsDefaultAccount:Z

.field private mIsLunarDay:Z

.field private mIsMultipane:Z

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field mLoadingMessage:Landroid/widget/TextView;

.field mLocationTextView:Landroid/widget/TextView;

.field mMEndTimeParent:Landroid/widget/LinearLayout;

.field mMStartTimeParent:Landroid/widget/LinearLayout;

.field private mMinute:I

.field private mModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field private mModification:I

.field public mMonth:Ljava/lang/String;

.field private mMonthOfYear:I

.field private mMoreOption:Landroid/widget/TextView;

.field private mNoCalendarsDialog:Lcn/nubia/commonui/app/AlertDialog;

.field mOrganizerGroup:Landroid/view/View;

.field private mOriginalPadding:[I

.field private mOriginalSpinnerPadding:[I

.field private mPictureRemoveBtn:Landroid/widget/ImageButton;

.field private mPictureShowImg:Landroid/widget/ImageView;

.field private mRdate:Ljava/lang/String;

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public mReminderMethod:Landroid/widget/TextView;

.field private mReminderMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReminderTV:Landroid/widget/TextView;

.field private mReminderWidget:Z

.field mRemindersContainer:Landroid/widget/LinearLayout;

.field mRemindersGroup:Landroid/view/View;

.field mRepeatsSpinner:Landroid/widget/Spinner;

.field mResponseGroup:Landroid/view/View;

.field mResponseRadioGroup:Landroid/widget/RadioGroup;

.field private mSB:Ljava/lang/StringBuilder;

.field private mSaveAfterQueryComplete:Z

.field public mSaveStatus:Z

.field mScrollView:Landroid/widget/ScrollView;

.field private mSelectedFruitIndex:I

.field mStartDateHome:Landroid/widget/TextView;

.field private mStartDateText:Landroid/widget/TextView;

.field mStartDayParent:Landroid/widget/LinearLayout;

.field private mStartTime:Landroid/text/format/Time;

.field mStartTimeHome:Landroid/widget/TextView;

.field private mStartTimeParent:Landroid/widget/LinearLayout;

.field private mStartTimeText:Landroid/widget/TextView;

.field public mTimeLeapFlag:Z

.field public mTimeSaveStatus:Z

.field private mTimeYear:I

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

.field mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

.field mTitleTextView:Landroid/widget/EditText;

.field private final mTvReminderNew:Landroid/widget/TextView;

.field private mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field mViewOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWeek:Ljava/lang/String;

.field mWhenView:Landroid/widget/TextView;

.field public mYear:Ljava/lang/String;

.field public monthStr:Ljava/lang/String;

.field pickPictureListener:Landroid/view/View$OnClickListener;

.field repeatArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectCanlendarAccount:I

.field public weekStr:Ljava/lang/String;

.field public yearStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "done"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    .prologue
    .line 1789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    .line 277
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    .line 380
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsLunarDay:Z

    .line 393
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    .line 402
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    .line 403
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    .line 404
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    .line 415
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsAllDay:Z

    .line 448
    const/4 v9, 0x4

    new-array v9, v9, [I

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    .line 449
    const/4 v9, 0x4

    new-array v9, v9, [I

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    .line 462
    const/4 v9, 0x0

    iput v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSelectedFruitIndex:I

    .line 463
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    .line 464
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    .line 465
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditEventLeapFlag:Z

    .line 466
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveStatus:Z

    .line 467
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeSaveStatus:Z

    .line 471
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    .line 472
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->currentLanguage:Ljava/lang/String;

    .line 473
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRdate:Ljava/lang/String;

    .line 475
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 504
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveAfterQueryComplete:Z

    .line 509
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDay:Z

    .line 510
    const/4 v9, 0x0

    iput v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModification:I

    .line 512
    new-instance v9, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct {v9}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 514
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    .line 516
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x32

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    .line 519
    new-instance v9, Ljava/util/Formatter;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mF:Ljava/util/Formatter;

    .line 522
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    .line 523
    const/4 v9, 0x0

    iput v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->selectCanlendarAccount:I

    .line 525
    const/4 v9, 0x0

    iput v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mGroupCount:I

    .line 1043
    new-instance v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    invoke-direct {v9, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->pickPictureListener:Landroid/view/View$OnClickListener;

    .line 2177
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 3544
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    .line 1790
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    .line 1791
    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    .line 1792
    iput-object p3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    .line 1794
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->getGroupCount()I

    .line 1795
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1796
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->currentLanguage:Ljava/lang/String;

    .line 1797
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "preferences_default_reminder"

    const-string v11, "-1"

    .line 1798
    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->DEFAULT_REMINDERTIME:Ljava/lang/String;

    .line 1800
    const v9, 0x7f110101

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    .line 1801
    const v9, 0x7f110102

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    .line 1802
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v10, "input_method"

    .line 1803
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1807
    const v9, 0x7f110151

    .line 1808
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsTextView:Landroid/widget/TextView;

    .line 1818
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_0

    .line 1819
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    iget v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->selectCanlendarAccount:I

    aget-object v0, v9, v10

    .line 1820
    .local v0, "calendarName":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->localCalendarName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1823
    .end local v0    # "calendarName":Ljava/lang/String;
    :cond_0
    const v9, 0x7f11004b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    .line 1824
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1825
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 1830
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    new-instance v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$4;

    invoke-direct {v10, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$4;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1860
    const v9, 0x7f110128

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    .line 1861
    const v9, 0x7f11009f

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 1862
    const v9, 0x7f11010e

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeParent:Landroid/widget/LinearLayout;

    .line 1863
    const v9, 0x7f110116

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeParent:Landroid/widget/LinearLayout;

    .line 1864
    const v9, 0x7f110111

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    .line 1865
    const v9, 0x7f110119

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    .line 1867
    const v9, 0x7f110114

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateText:Landroid/widget/TextView;

    .line 1868
    const v9, 0x7f11011c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateText:Landroid/widget/TextView;

    .line 1877
    const v9, 0x7f110105

    .line 1878
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAttendeesGroupParent:Landroid/widget/LinearLayout;

    .line 1879
    const v9, 0x7f110104

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMoreOption:Landroid/widget/TextView;

    .line 1880
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMoreOption:Landroid/widget/TextView;

    new-instance v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;

    invoke-direct {v10, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1896
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    const v10, 0x7f11008b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mWhenView:Landroid/widget/TextView;

    .line 1900
    const v9, 0x7f110113

    .line 1901
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDayParent:Landroid/widget/LinearLayout;

    .line 1902
    const v9, 0x7f11011b

    .line 1903
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDayParent:Landroid/widget/LinearLayout;

    .line 1904
    const v9, 0x7f110118

    .line 1905
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMEndTimeParent:Landroid/widget/LinearLayout;

    .line 1906
    const v9, 0x7f110110

    .line 1907
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMStartTimeParent:Landroid/widget/LinearLayout;

    .line 1909
    const v9, 0x7f110121

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    .line 1911
    const v9, 0x7f11012c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 1912
    const v9, 0x7f11012b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    .line 1913
    const v9, 0x7f110130

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    .line 1914
    const v9, 0x7f11012f

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    .line 1915
    const v9, 0x7f11010b

    .line 1916
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 1917
    const v9, 0x7f110140

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 1918
    const v9, 0x7f11014e

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethod:Landroid/widget/TextView;

    .line 1920
    const/4 v9, 0x0

    sput v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    .line 1921
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0026

    .line 1922
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1923
    .local v5, "reminderMethodLabel":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0032

    .line 1924
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1926
    .local v6, "reminderMethodValue":[Ljava/lang/CharSequence;
    const v9, 0x7f11014d

    .line 1927
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1928
    .local v8, "repeatParent":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_1

    .line 1929
    new-instance v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;

    invoke-direct {v9, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1956
    :cond_1
    const v9, 0x7f110147

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 1957
    const v9, 0x7f11014a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    .line 1958
    const v9, 0x7f110122

    .line 1959
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    .line 1960
    const v9, 0x7f110123

    .line 1961
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    .line 1962
    const v9, 0x7f1100db

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    .line 1963
    const v9, 0x7f110141

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersGroup:Landroid/view/View;

    .line 1964
    const v9, 0x7f110132

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseGroup:Landroid/view/View;

    .line 1965
    const v9, 0x7f110138

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOrganizerGroup:Landroid/view/View;

    .line 1969
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    new-instance v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAccountsChangeListener;

    invoke-direct {v10, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAccountsChangeListener;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 1970
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1972
    const v9, 0x7f110142

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderTV:Landroid/widget/TextView;

    .line 1975
    const v9, 0x7f110154

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    .line 1976
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1978
    const v9, 0x7f110156

    .line 1979
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureRemoveBtn:Landroid/widget/ImageButton;

    .line 1980
    const v9, 0x7f110155

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    .line 1983
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1984
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1985
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1986
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 1987
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v11

    aput v11, v9, v10

    .line 1988
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    const/4 v10, 0x1

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v11

    aput v11, v9, v10

    .line 1989
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    const/4 v10, 0x2

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v11

    aput v11, v9, v10

    .line 1990
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    const/4 v10, 0x3

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    aput v11, v9, v10

    .line 1991
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v11

    aput v11, v9, v10

    .line 1992
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    const/4 v10, 0x1

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getPaddingTop()I

    move-result v11

    aput v11, v9, v10

    .line 1993
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    const/4 v10, 0x2

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v11

    aput v11, v9, v10

    .line 1994
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    const/4 v10, 0x3

    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getPaddingBottom()I

    move-result v11

    aput v11, v9, v10

    .line 1995
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v10, 0x7f11010c

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v10, 0x7f110108

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v10, 0x7f110145

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v10, 0x7f110148

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v10, 0x7f11010e

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v10, 0x7f110116

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    const v9, 0x7f110134

    .line 2015
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 2016
    const v9, 0x7f110143

    .line 2017
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 2019
    const v9, 0x7f11014b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTvReminderNew:Landroid/widget/TextView;

    .line 2022
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTvReminderNew:Landroid/widget/TextView;

    sput-object v9, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    .line 2024
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "preferences_default_reminder"

    const-string v11, "-1"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2027
    .local v2, "mReminderTime":Ljava/lang/String;
    const-string v3, " "

    .line 2028
    .local v3, "mReminderTimeLabel":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0007

    .line 2029
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2030
    .local v4, "reminderLabel":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0030

    .line 2031
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 2033
    .local v7, "reminderValue":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v7

    if-ge v1, v9, :cond_3

    .line 2034
    aget-object v9, v7, v1

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2035
    aget-object v3, v4, v1

    .end local v3    # "mReminderTimeLabel":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2036
    .restart local v3    # "mReminderTimeLabel":Ljava/lang/String;
    sput v1, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 2033
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2040
    :cond_3
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v9, :cond_4

    .line 2041
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v9, v9, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v9, :cond_4

    .line 2042
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->initAllDayReminderLables()Ljava/util/ArrayList;

    move-result-object v9

    sget v10, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mReminderTimeLabel":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2047
    .restart local v3    # "mReminderTimeLabel":Ljava/lang/String;
    :cond_4
    sget-object v9, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 2048
    sget-object v9, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    :cond_5
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersGroup:Landroid/view/View;

    new-instance v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;

    invoke-direct {v10, p0, v7, v2, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;[Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2088
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 2089
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsMultipane:Z

    .line 2090
    new-instance v9, Landroid/text/format/Time;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 2091
    new-instance v9, Landroid/text/format/Time;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    .line 2092
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0247

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mYear:Ljava/lang/String;

    .line 2093
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0054

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMonth:Ljava/lang/String;

    .line 2094
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mWeek:Ljava/lang/String;

    .line 2095
    new-instance v9, Lcn/nubia/common/Rfc822Validator;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEmailValidator:Lcn/nubia/common/Rfc822Validator;

    .line 2097
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModel(Lcn/nubia/calendar/model/CalendarEventModel;)V

    .line 2100
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->pickPictureListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2101
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->pickPictureListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2105
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareVisibility()V

    .line 2106
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0247

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->yearStr:Ljava/lang/String;

    .line 2107
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0054

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->monthStr:Ljava/lang/String;

    .line 2108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->weekStr:Ljava/lang/String;

    .line 2110
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    return-object p1
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/DatePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dpd_datePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dpd_datePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;JZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDate(Landroid/widget/TextView;JZ)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isClickDateOrTimeSet:Z

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/TimezoneAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->localCalendarName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAttendeesGroupParent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2602(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAttendeesGroupParent:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$2700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMoreOption:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2702(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMoreOption:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->showRepeatsDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->showCalendarsAccountDialog(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    return v0
.end method

.method static synthetic access$3000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->selectCanlendarAccount:I

    return v0
.end method

.method static synthetic access$3102(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->selectCanlendarAccount:I

    return p1
.end method

.method static synthetic access$3200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->fillAccountsToModel()V

    return-void
.end method

.method static synthetic access$3302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSelectedFruitIndex:I

    return v0
.end method

.method static synthetic access$3502(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSelectedFruitIndex:I

    return p1
.end method

.method static synthetic access$3600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTvReminderNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->addReminder()V

    return-void
.end method

.method static synthetic access$3800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/model/CalendarEventModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureRemoveBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isChangeCalendarType:Z

    return p1
.end method

.method static synthetic access$4100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    return-object v0
.end method

.method static synthetic access$4102(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    return-object p1
.end method

.method static synthetic access$4200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mGroupCount:I

    return v0
.end method

.method static synthetic access$4202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mGroupCount:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->populateRepeats()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;J)V
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # J

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->populateTimezone(J)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;JZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDateAndTime(Landroid/widget/TextView;JZ)V

    return-void
.end method

.method private addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 10
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 2623
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 2653
    .end local p2    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2626
    .restart local p2    # "v":Landroid/view/View;
    :cond_1
    instance-of v8, p2, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 2627
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 2628
    .local v6, "tv":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2629
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2631
    .end local v6    # "tv":Ljava/lang/CharSequence;
    .restart local p2    # "v":Landroid/view/View;
    :cond_2
    instance-of v8, p2, Landroid/widget/RadioGroup;

    if-eqz v8, :cond_3

    move-object v3, p2

    .line 2632
    check-cast v3, Landroid/widget/RadioGroup;

    .line 2633
    .local v3, "rg":Landroid/widget/RadioGroup;
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 2634
    .local v2, "id":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 2635
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2638
    .end local v2    # "id":I
    .end local v3    # "rg":Landroid/widget/RadioGroup;
    :cond_3
    instance-of v8, p2, Landroid/widget/Spinner;

    if-eqz v8, :cond_4

    move-object v4, p2

    .line 2639
    check-cast v4, Landroid/widget/Spinner;

    .line 2640
    .local v4, "s":Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 2641
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2642
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2646
    .end local v4    # "s":Landroid/widget/Spinner;
    .end local v5    # "str":Ljava/lang/String;
    :cond_4
    instance-of v8, p2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v7, p2

    .line 2647
    check-cast v7, Landroid/view/ViewGroup;

    .line 2648
    .local v7, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2649
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 2650
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 2649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addReminder()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 3012
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3013
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xf

    .line 3017
    invoke-static {v2}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(I)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget v9, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    iget-boolean v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    move-object v2, p0

    .line 3013
    invoke-static/range {v0 .. v12}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;ZZ)Z

    .line 3029
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateRemindersVisibility(I)V

    .line 3030
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 3032
    return-void

    .line 3021
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDefaultReminderMinutes:I

    .line 3025
    invoke-static {v2}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(I)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget v9, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    iget-boolean v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    move-object v2, p0

    .line 3021
    invoke-static/range {v0 .. v12}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;ZZ)Z

    goto :goto_0
.end method

.method private checkLuaryRule(ILcn/nubia/calendar/model/CalendarEventModel;)V
    .locals 7
    .param p1, "selection"    # I
    .param p2, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1762
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1763
    iput-object v2, p2, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1764
    new-instance v1, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    .line 1765
    .local v1, "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 1766
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object v6, p2

    .line 1765
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/calendar/util/ChineseCalendar;->getRepeatLunaryMonth(JJLcn/nubia/calendar/model/CalendarEventModel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 1775
    .end local v1    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1768
    iput-object v2, p2, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1769
    new-instance v1, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    .line 1770
    .restart local v1    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 1771
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1770
    invoke-virtual {v1, v2, v3, p2}, Lcn/nubia/calendar/util/ChineseCalendar;->getRepeatLunaryYear(JLcn/nubia/calendar/model/CalendarEventModel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    goto :goto_0

    .line 1772
    .end local v1    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    :cond_2
    if-nez p1, :cond_0

    .line 1773
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    goto :goto_0
.end method

.method private fillAccountsToModel()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3587
    const-string v0, "EditEventView"

    const-string v1, "fillAccountsToModel"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-nez v0, :cond_1

    .line 3589
    const-string v0, "EditEventView"

    const-string v1, "Mode == null retrun"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    :cond_0
    :goto_0
    return-void

    .line 3592
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3593
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 3594
    const-string v0, "EditEventView"

    const-string v1, "mAccounts == null retrun"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3597
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->selectCanlendarAccount:I

    aget-object v8, v0, v1

    .line 3599
    .local v8, "accountDisplayName":Ljava/lang/String;
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/ContentResolver;)V

    const/16 v1, 0xb

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "visible = ? and calendar_displayName = ?"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "1"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    aput-object v8, v6, v4

    move-object v4, v2

    move-object v7, v2

    .line 3613
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillModelFromUI()Z
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1569
    const/16 v17, 0x0

    .line 1757
    :goto_0
    return v17

    .line 1572
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v17

    if-nez v17, :cond_1

    .line 1573
    new-instance v4, Lcn/nubia/calendar/model/CalendarCustomEventModel;

    invoke-direct {v4}, Lcn/nubia/calendar/model/CalendarCustomEventModel;-><init>()V

    .line 1574
    .local v4, "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcn/nubia/calendar/model/CalendarEventModel;->setCalendarCustomEventModel(Lcn/nubia/calendar/model/CalendarCustomEventModel;)V

    .line 1576
    .end local v4    # "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .local v15, "wrongFormatNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->initAllDayReminderMinutes()V

    .line 1580
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 1584
    sget-object v17, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->DEFAULT_REMINDERTIME:Ljava/lang/String;

    const-string v18, "-1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 1585
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 1587
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    sget v19, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 1588
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    .line 1589
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1587
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/model/CalendarEventModel;->normalizeReminders()Z

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_a

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1599
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1600
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/util/Utils;->AddTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1604
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/util/Utils;->AddTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1609
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1615
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1619
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v17, v0

    .line 1621
    invoke-virtual/range {v17 .. v17}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v17

    .line 1620
    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v12

    .line 1622
    .local v12, "status":I
    if-eqz v12, :cond_9

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 1627
    :cond_9
    const/4 v14, 0x0

    .line 1628
    .local v14, "wrongFormatEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 1630
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1590
    .end local v12    # "status":I
    .end local v14    # "wrongFormatEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 1591
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1597
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1664
    .restart local v12    # "status":I
    .restart local v14    # "wrongFormatEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1667
    const-string v17, "UTC"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v8, v18, v20

    .line 1683
    .local v8, "normalizedEndTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    move-wide/from16 v18, v0

    cmp-long v17, v8, v18

    if-gez v17, :cond_e

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 1695
    .end local v8    # "normalizedEndTimeMillis":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    .line 1699
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v19

    .line 1698
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    .line 1704
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModification:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1705
    const/4 v11, 0x0

    .line 1714
    .local v11, "selection":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    .line 1715
    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/util/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    .line 1714
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->updateRecurrenceRule(ILcn/nubia/calendar/model/CalendarEventModel;I)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->checkLuaryRule(ILcn/nubia/calendar/model/CalendarEventModel;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setPicturePath(Ljava/lang/String;)V

    .line 1720
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 1723
    :cond_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1724
    .local v10, "phoneSize":I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1725
    .local v16, "wrongPhones":Ljava/lang/StringBuffer;
    if-lez v10, :cond_13

    .line 1726
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v10, :cond_12

    .line 1727
    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_11

    .line 1728
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1726
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1687
    .end local v7    # "i":I
    .end local v10    # "phoneSize":I
    .end local v11    # "selection":I
    .end local v16    # "wrongPhones":Ljava/lang/StringBuffer;
    .restart local v8    # "normalizedEndTimeMillis":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    goto/16 :goto_3

    .line 1690
    .end local v8    # "normalizedEndTimeMillis":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    goto/16 :goto_3

    .line 1707
    :cond_10
    sget v11, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    .restart local v11    # "selection":I
    goto/16 :goto_4

    .line 1730
    .restart local v7    # "i":I
    .restart local v10    # "phoneSize":I
    .restart local v16    # "wrongPhones":Ljava/lang/StringBuffer;
    :cond_11
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ","

    .line 1731
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1734
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1736
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v20, 0x7f0c0245

    .line 1738
    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 1734
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 1739
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1740
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1744
    .end local v7    # "i":I
    :cond_13
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 1745
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1746
    .local v13, "wrongEmails":Ljava/lang/StringBuffer;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1747
    .local v6, "emailSize":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v6, :cond_15

    .line 1748
    add-int/lit8 v17, v6, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_14

    .line 1749
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1747
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1751
    :cond_14
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 1754
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v20, 0x7f0c0244

    .line 1755
    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1754
    invoke-virtual/range {v17 .. v18}, Lcn/nubia/calendar/model/CalendarEventModel;->setWrongFormatEmailTip(Ljava/lang/String;)V

    .line 1757
    .end local v6    # "emailSize":I
    .end local v7    # "i":I
    .end local v13    # "wrongEmails":Ljava/lang/StringBuffer;
    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .locals 8
    .param p1, "calendarsCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 2963
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    move v2, v4

    .line 2994
    :cond_0
    :goto_0
    return v2

    .line 2967
    :cond_1
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v7, "preference_defaultCalendar"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcn/nubia/calendar/util/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2970
    .local v1, "defaultCalendar":Ljava/lang/String;
    if-nez v1, :cond_2

    move v2, v5

    .line 2971
    goto :goto_0

    .line 2973
    :cond_2
    const-string v3, "ownerAccount"

    .line 2974
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2977
    .local v0, "calendarsOwnerColumn":I
    const-string v3, "nobody@gmail.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2978
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    .line 2982
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setViewVisibility(Z)V

    .line 2985
    const/4 v2, 0x0

    .line 2986
    .local v2, "position":I
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2987
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2989
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2988
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2992
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2980
    .end local v2    # "position":I
    :cond_3
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    goto :goto_1

    .restart local v2    # "position":I
    :cond_4
    move v2, v5

    .line 2994
    goto :goto_0
.end method

.method private getBitmapByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x44480000    # 800.0f

    const/high16 v7, 0x43f00000    # 480.0f

    const/high16 v6, 0x42700000    # 60.0f

    .line 3345
    const/4 v0, 0x0

    .line 3347
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3348
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3350
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3352
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    :goto_0
    float-to-int v3, v4

    .line 3355
    .local v3, "scaleRate":I
    if-gtz v3, :cond_0

    .line 3356
    const/4 v3, 0x1

    .line 3358
    :cond_0
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3361
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3362
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3368
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scaleRate":I
    :goto_1
    if-eqz v0, :cond_2

    .line 3369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v6, v4

    .line 3370
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    .line 3369
    invoke-direct {p0, v0, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3372
    :goto_2
    return-object v4

    .line 3352
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v4, v4

    div-float/2addr v4, v7

    goto :goto_0

    .line 3364
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 3366
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EditEventView"

    const-string v5, "picture not found"

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3372
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1287
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    if-nez v2, :cond_1

    .line 1328
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1290
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    move v0, v1

    .line 1328
    goto :goto_0

    .line 1294
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-virtual {v2}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1296
    :cond_3
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_2

    goto :goto_0

    .line 1301
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-virtual {v2}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1304
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget-object v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthday:[I

    aget v2, v2, v0

    if-gtz v2, :cond_0

    .line 1311
    :cond_4
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthdayCount:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget-object v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthday:[I

    aget v2, v2, v0

    if-gtz v2, :cond_0

    .line 1316
    :cond_5
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    iget-object v2, v2, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryearday:[I

    aget v2, v2, v0

    if-lez v2, :cond_2

    goto :goto_0

    .line 1290
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1334
    const/4 v0, 0x1

    .line 1336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2183
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 2184
    .local v3, "vals":[I
    array-length v2, v3

    .line 2185
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2187
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2188
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2191
    :cond_0
    return-object v1
.end method

.method private static loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2198
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2199
    .local v0, "labels":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2200
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private localCalendarName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "calendarDisplayName"    # Ljava/lang/String;

    .prologue
    .line 3627
    const-string v0, "My Calendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3628
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0189

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3630
    :cond_0
    return-object p1
.end method

.method private populateRepeats()V
    .locals 33

    .prologue
    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v26, v0

    .line 799
    .local v26, "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 801
    .local v23, "r":Landroid/content/res/Resources;
    const/16 v27, 0x7

    move/from16 v0, v27

    new-array v10, v0, [Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x14

    .line 802
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    const/16 v27, 0x1

    const/16 v30, 0x2

    const/16 v31, 0x14

    .line 804
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    const/16 v27, 0x2

    const/16 v30, 0x3

    const/16 v31, 0x14

    .line 806
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x14

    .line 808
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    const/16 v27, 0x4

    const/16 v30, 0x5

    const/16 v31, 0x14

    .line 810
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    const/16 v27, 0x5

    const/16 v30, 0x6

    const/16 v31, 0x14

    .line 812
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    const/16 v27, 0x6

    const/16 v30, 0x7

    const/16 v31, 0x14

    .line 814
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v10, v27

    .line 816
    .local v10, "days":[Ljava/lang/String;
    const v27, 0x7f0a0005

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 821
    .local v20, "ordinals":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isCustomRecurrence()Z

    move-result v13

    .line 822
    .local v13, "isCustomRecurrence":Z
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isWeekdayEvent()Z

    move-result v14

    .line 824
    .local v14, "isWeekdayEvent":Z
    const/16 v22, 0x0

    .line 825
    .local v22, "prefs":Landroid/content/SharedPreferences;
    sget-object v27, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    if-eqz v27, :cond_8

    .line 826
    sget-object v22, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    .line 832
    :goto_0
    const-string v27, "is_lunar_visible"

    const/16 v30, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 834
    .local v18, "mIsLunarVisible":Z
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    .line 837
    .local v19, "mLanguage":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    .line 839
    .local v15, "localLanguage":Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    .line 840
    new-instance v24, Ljava/util/ArrayList;

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 842
    .local v24, "recurrenceIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const v30, 0x7f0c0030

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const v30, 0x7f0c0024

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    if-eqz v14, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const v30, 0x7f0c0043

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_0
    const v27, 0x7f0c009c

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 854
    .local v12, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "%A"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    const/16 v27, 0x3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    move-object/from16 v0, v26

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    div-int/lit8 v9, v27, 0x7

    .line 860
    .local v9, "dayNumber":I
    const v27, 0x7f0c0057

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v32, v20, v9

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, v26

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v32, v0

    aget-object v32, v10, v32

    aput-object v32, v30, v31

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    const/16 v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    const v27, 0x7f0c0056

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    .line 870
    .local v28, "when":J
    const v27, 0x7f0c00a0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 871
    const/4 v11, 0x0

    .line 872
    .local v11, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 873
    or-int/lit16 v11, v11, 0x80

    .line 875
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    .line 876
    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 875
    move-object/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    const/16 v27, 0x6

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 879
    const/16 v27, 0x0

    .line 880
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 881
    .local v21, "position":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    move/from16 v27, v0

    if-nez v27, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    move/from16 v27, v0

    if-nez v27, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveStatus:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditEventLeapFlag:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 883
    :cond_2
    if-eqz v18, :cond_4

    const-string v27, "zh"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 884
    new-instance v17, Lcn/nubia/calendar/util/ChineseCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;Landroid/text/format/Time;)V

    .line 886
    .local v17, "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    const v27, 0x7f0c0182

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 888
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseDate()I

    move-result v16

    .line 889
    .local v16, "lunarDay":I
    const v27, 0x7f0a0024

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 890
    .local v8, "dayNames":[Ljava/lang/String;
    const v27, 0x7f0c00ef

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, "chu":Ljava/lang/String;
    const/4 v7, 0x0

    .line 892
    .local v7, "day":Ljava/lang/String;
    const/16 v27, 0xa

    move/from16 v0, v16

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    const/16 v27, 0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    .line 893
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v30, v16, -0x1

    aget-object v30, v8, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 897
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 898
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const v30, 0x7f0c0030

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v7, v30, v31

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    const/16 v27, 0x8

    .line 903
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    const v27, 0x7f0c0169

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 907
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonthAndDay()Ljava/lang/String;

    move-result-object v5

    .line 908
    .local v5, "chineseMonthDay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v5, v30, v31

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    const/16 v27, 0x9

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isClickDateOrTimeSet:Z

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 912
    sput v21, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    .line 915
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRdate:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRdate:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->isPerMonthLunarEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 917
    const/16 v21, 0x1

    .line 919
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isClickDateOrTimeSet:Z

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 920
    const/16 v27, 0x8

    sput v27, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    .line 1003
    .end local v5    # "chineseMonthDay":Ljava/lang/String;
    .end local v6    # "chu":Ljava/lang/String;
    .end local v7    # "day":Ljava/lang/String;
    .end local v8    # "dayNames":[Ljava/lang/String;
    .end local v16    # "lunarDay":I
    .end local v17    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    :cond_4
    :goto_2
    new-instance v4, Lcn/nubia/calendar/SpinnerArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    const v30, 0x7f030056

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v4, v0, v1, v2}, Lcn/nubia/calendar/SpinnerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1005
    .local v4, "adapter":Lcn/nubia/calendar/SpinnerArrayAdapter;
    const v27, 0x1090009

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/SpinnerArrayAdapter;->setDropDownViewResource(I)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1009
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isClickDateOrTimeSet:Z

    move/from16 v27, v0

    if-eqz v27, :cond_14

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isChangeCalendarType:Z

    move/from16 v27, v0

    if-eqz v27, :cond_12

    .line 1011
    const/16 v27, 0x0

    sput v27, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    .line 1018
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethod:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    sget v31, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1038
    :cond_7
    return-void

    .line 828
    .end local v4    # "adapter":Lcn/nubia/calendar/SpinnerArrayAdapter;
    .end local v9    # "dayNumber":I
    .end local v11    # "flags":I
    .end local v12    # "format":Ljava/lang/String;
    .end local v15    # "localLanguage":Ljava/lang/String;
    .end local v18    # "mIsLunarVisible":Z
    .end local v19    # "mLanguage":Ljava/lang/String;
    .end local v21    # "position":I
    .end local v24    # "recurrenceIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28    # "when":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    const-string v30, "custom_calendar"

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    goto/16 :goto_0

    .line 895
    .restart local v6    # "chu":Ljava/lang/String;
    .restart local v7    # "day":Ljava/lang/String;
    .restart local v8    # "dayNames":[Ljava/lang/String;
    .restart local v9    # "dayNumber":I
    .restart local v11    # "flags":I
    .restart local v12    # "format":Ljava/lang/String;
    .restart local v15    # "localLanguage":Ljava/lang/String;
    .restart local v16    # "lunarDay":I
    .restart local v17    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    .restart local v18    # "mIsLunarVisible":Z
    .restart local v19    # "mLanguage":Ljava/lang/String;
    .restart local v21    # "position":I
    .restart local v24    # "recurrenceIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v28    # "when":J
    :cond_9
    add-int/lit8 v27, v16, -0x1

    aget-object v7, v8, v27

    goto/16 :goto_1

    .line 923
    .restart local v5    # "chineseMonthDay":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRdate:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->isPerYearLunarEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 924
    const/16 v21, 0x2

    .line 926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isClickDateOrTimeSet:Z

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 927
    const/16 v27, 0x9

    sput v27, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    goto/16 :goto_2

    .line 941
    .end local v5    # "chineseMonthDay":Ljava/lang/String;
    .end local v6    # "chu":Ljava/lang/String;
    .end local v7    # "day":Ljava/lang/String;
    .end local v8    # "dayNames":[Ljava/lang/String;
    .end local v16    # "lunarDay":I
    .end local v17    # "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 942
    if-eqz v13, :cond_c

    .line 943
    const/16 v27, 0x7

    .line 944
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    goto/16 :goto_2

    .line 946
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 987
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isClickDateOrTimeSet:Z

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    sput v27, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    goto/16 :goto_2

    .line 948
    :pswitch_0
    const/16 v27, 0x1

    .line 949
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 950
    goto :goto_5

    .line 952
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 953
    const/16 v27, 0x2

    .line 954
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    goto :goto_5

    .line 956
    :cond_d
    const/16 v27, 0x3

    .line 957
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 959
    goto :goto_5

    .line 961
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 962
    const/16 v27, 0x4

    .line 963
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    goto/16 :goto_5

    .line 966
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    move-object/from16 v27, v0

    .line 967
    invoke-virtual/range {v27 .. v27}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnLunarYearCount()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 968
    const/16 v27, 0x9

    .line 969
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    goto/16 :goto_5

    .line 970
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    move-object/from16 v27, v0

    .line 971
    invoke-virtual/range {v27 .. v27}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnLunarDayCount()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 972
    const/16 v27, 0x8

    .line 973
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    goto/16 :goto_5

    .line 977
    :cond_10
    const/16 v27, 0x5

    .line 978
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 980
    goto/16 :goto_5

    .line 982
    :pswitch_3
    const/16 v27, 0x6

    .line 983
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    goto/16 :goto_5

    .line 992
    :cond_11
    sput v21, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    goto/16 :goto_2

    .line 1013
    .restart local v4    # "adapter":Lcn/nubia/calendar/SpinnerArrayAdapter;
    :cond_12
    sget v27, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    .line 1014
    .local v25, "repeatIndex":I
    if-ltz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-gt v0, v1, :cond_5

    .line 1015
    :cond_13
    const/16 v27, 0x0

    sput v27, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    goto/16 :goto_3

    .line 1021
    .end local v25    # "repeatIndex":I
    :cond_14
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethod:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 946
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone(J)V
    .locals 3
    .param p1, "eventStartTime"    # J

    .prologue
    .line 739
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Lcn/nubia/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/nubia/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    .line 746
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setTimezone(I)V

    .line 757
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/calendar/TimezoneAdapter;->setTime(J)V

    goto :goto_0
.end method

.method private populateWhen()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 551
    .local v12, "startMillis":J
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 553
    .local v10, "endMillis":J
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v12, v13, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDate(Landroid/widget/TextView;JZ)V

    .line 554
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v10, v11, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDate(Landroid/widget/TextView;JZ)V

    .line 563
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v12, v13, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDateAndTime(Landroid/widget/TextView;JZ)V

    .line 564
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v10, v11, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDateAndTime(Landroid/widget/TextView;JZ)V

    .line 565
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 567
    .local v1, "dTDialogStartTitle":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 577
    .local v8, "dTDialogEndTitle":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerStart:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateText:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;-><init>(Ljava/lang/CharSequence;Landroid/text/format/Time;Landroid/view/View;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerStart:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    .line 583
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeParent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerStart:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerEnd:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    if-nez v0, :cond_1

    .line 586
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateText:Landroid/widget/TextView;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    move-object v3, v8

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;-><init>(Ljava/lang/CharSequence;Landroid/text/format/Time;Landroid/view/View;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerEnd:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    .line 589
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeParent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerEnd:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    return-void
.end method

.method private prepareAvailability()V
    .locals 5

    .prologue
    .line 2204
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2206
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0a0029

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    .line 2207
    const/high16 v2, 0x7f0a0000

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    .line 2209
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2210
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2218
    :cond_0
    new-instance v0, Lcn/nubia/calendar/SpinnerArrayAdapter;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030056

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v4}, Lcn/nubia/calendar/SpinnerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2220
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2221
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2222
    return-void
.end method

.method private prepareReminders()V
    .locals 21

    .prologue
    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v16, v0

    .line 2243
    .local v16, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 2254
    .local v18, "r":Landroid/content/res/Resources;
    const v2, 0x7f0a0036

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 2256
    const v2, 0x7f0a000b

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2258
    const v2, 0x7f0a0033

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 2260
    const v2, 0x7f0a000a

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 2267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2272
    :cond_0
    const/16 v17, 0x0

    .line 2273
    .local v17, "numReminders":I
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_8

    .line 2274
    move-object/from16 v0, v16

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 2275
    .local v19, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2278
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 2279
    .local v10, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2282
    invoke-virtual {v10}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v6

    .line 2280
    invoke-static {v3, v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2291
    .end local v10    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2292
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 2293
    .restart local v10    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2294
    invoke-virtual {v10}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_7

    .line 2295
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v11, 0x7fffffff

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    const/4 v14, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v14}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;ZZ)Z

    .line 2300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v2, :cond_4

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_4

    .line 2302
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->initAllDayReminderLables()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2303
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->initAllDayReminderMinutes()V

    .line 2306
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 2307
    invoke-virtual {v10}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v3

    .line 2306
    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v15

    .line 2308
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_6

    .line 2309
    invoke-virtual {v10}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 2310
    sget-object v2, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 2311
    sget-object v2, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c00ac

    .line 2312
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2311
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2320
    :cond_5
    :goto_2
    sput v15, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    goto/16 :goto_1

    .line 2315
    :cond_6
    sget-object v2, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 2316
    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2317
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2323
    .end local v15    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2327
    .end local v10    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .end local v19    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateRemindersVisibility(I)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v2, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 2330
    return-void
.end method

.method private prepareVisibility()V
    .locals 5

    .prologue
    .line 2225
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2227
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0a000e

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mVisibilityLabels:Ljava/util/ArrayList;

    .line 2228
    new-instance v0, Lcn/nubia/calendar/SpinnerArrayAdapter;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030056

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mVisibilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v4}, Lcn/nubia/calendar/SpinnerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2230
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2231
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2232
    return-void
.end method

.method private scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleXFactor"    # F
    .param p3, "scaleYFactor"    # F

    .prologue
    const/4 v1, 0x0

    .line 3388
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3389
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 3390
    .local v8, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 3392
    .local v9, "centerY":I
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3393
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v2, v9

    int-to-float v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3394
    int-to-float v0, v8

    int-to-float v2, v9

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3396
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3397
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 3396
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3399
    .local v7, "bm":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private sendAccessibilityEvent()V
    .locals 6

    .prologue
    .line 2603
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v5, "accessibility"

    .line 2604
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2605
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-nez v4, :cond_1

    .line 2620
    :cond_0
    :goto_0
    return-void

    .line 2608
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2609
    .local v1, "b":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 2610
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2612
    .local v3, "msg":Ljava/lang/CharSequence;
    const/16 v4, 0x8

    .line 2613
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2614
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2615
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2616
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2619
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;JZ)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "millis"    # J
    .param p4, "SwitchButton"    # Z

    .prologue
    const/4 v5, 0x1

    .line 608
    const v1, 0x18016

    .line 612
    .local v1, "flags":I
    const-class v3, Ljava/util/TimeZone;

    monitor-enter v3

    .line 613
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 614
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->currentLanguage:Ljava/lang/String;

    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 615
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    if-eqz v2, :cond_1

    .line 616
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->NongliSetText(Landroid/widget/TextView;JZ)V

    .line 617
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    .line 640
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 641
    monitor-exit v3

    .line 643
    return-void

    .line 618
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveStatus:Z

    if-nez v2, :cond_4

    .line 619
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditEventLeapFlag:Z

    if-eq v2, v5, :cond_2

    if-ne p4, v5, :cond_3

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    if-ne v2, v5, :cond_3

    .line 621
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->NongliSetText(Landroid/widget/TextView;JZ)V

    .line 622
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 624
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    .line 625
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 630
    .end local v0    # "dateString":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    .line 631
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 633
    .restart local v0    # "dateString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 636
    .end local v0    # "dateString":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 637
    .restart local v0    # "dateString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setDateAndTime(Landroid/widget/TextView;JZ)V
    .locals 12
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "millis"    # J
    .param p4, "SwitchBotton"    # Z

    .prologue
    .line 3052
    const v9, 0x18017

    .line 3055
    .local v9, "flags":I
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3056
    or-int/lit16 v9, v9, 0x80

    .line 3067
    :cond_0
    const-class v10, Ljava/util/TimeZone;

    monitor-enter v10

    .line 3068
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 3069
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->currentLanguage:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3070
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    if-eqz v0, :cond_3

    .line 3071
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->getDateTime(J)V

    .line 3072
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getAmPmStr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    .line 3073
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeYear:I

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMonthOfYear:I

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDayOfMonth:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->yearStr:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->monthStr:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->weekStr:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 3076
    .local v7, "StratdateString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3079
    .local v8, "dateString":Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    .line 3108
    .end local v7    # "StratdateString":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 3109
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3110
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3111
    return-void

    .line 3076
    .end local v8    # "dateString":Ljava/lang/String;
    .restart local v7    # "StratdateString":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3080
    .end local v7    # "StratdateString":Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveStatus:Z

    if-nez v0, :cond_7

    .line 3081
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditEventLeapFlag:Z

    if-nez v0, :cond_4

    if-eqz p4, :cond_6

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    if-eqz v0, :cond_6

    .line 3083
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->getDateTime(J)V

    .line 3084
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getAmPmStr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    .line 3085
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeYear:I

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMonthOfYear:I

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDayOfMonth:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->yearStr:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->monthStr:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->weekStr:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 3088
    .restart local v7    # "StratdateString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3091
    .restart local v8    # "dateString":Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    goto/16 :goto_1

    .line 3109
    .end local v7    # "StratdateString":Ljava/lang/String;
    .end local v8    # "dateString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3088
    .restart local v7    # "StratdateString":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3093
    .end local v7    # "StratdateString":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    .line 3095
    .restart local v8    # "dateString":Ljava/lang/String;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    goto/16 :goto_1

    .line 3098
    .end local v8    # "dateString":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    .line 3100
    .restart local v8    # "dateString":Ljava/lang/String;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z

    goto/16 :goto_1

    .line 3103
    .end local v8    # "dateString":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    .line 3104
    .restart local v8    # "dateString":Ljava/lang/String;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderWidget:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private setPictureLayControlShow(Z)V
    .locals 3
    .param p1, "isExistPic"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1258
    if-eqz p1, :cond_0

    .line 1259
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureRemoveBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1268
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    const v1, 0x7f0c01d7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1265
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureRemoveBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1266
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPicturePath()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42700000    # 60.0f

    .line 1221
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    invoke-static {v2, v3, v3}, Lcn/nubia/calendar/util/PictureUtils;->getBitmapByPathForScale(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1224
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1225
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 1227
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    goto :goto_0

    .line 1230
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1231
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 1232
    invoke-virtual {v2}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v1

    .line 1233
    .local v1, "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getPicturePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1235
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getPicturePath()Ljava/lang/String;

    move-result-object v2

    .line 1234
    invoke-static {v2, v3, v3}, Lcn/nubia/calendar/util/PictureUtils;->getBitmapByPathForScale(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1236
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1237
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    .line 1238
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1240
    :cond_2
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    goto :goto_0

    .line 1243
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    goto :goto_0

    .line 1246
    .end local v1    # "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    :cond_4
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    goto :goto_0
.end method

.method private setTimezone(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x1

    .line 3114
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcn/nubia/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 3126
    :cond_0
    :goto_0
    return-void

    .line 3117
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    .line 3119
    .local v0, "timezone":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3120
    iget-object v1, v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 3121
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3122
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3123
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3124
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3125
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewStates(I)V
    .locals 11
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2864
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 2865
    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyEvent(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2866
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setWhenString()V

    .line 2868
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2869
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2871
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2872
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2874
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2875
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 2876
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2878
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2879
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2880
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2881
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2882
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canAddReminders(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2883
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2887
    :goto_3
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2888
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2890
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2891
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2895
    :cond_5
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2896
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2951
    :goto_4
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 2952
    return-void

    .line 2885
    :cond_6
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2899
    :cond_7
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2900
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2902
    .end local v0    # "v":Landroid/view/View;
    :cond_8
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2903
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 2905
    .end local v0    # "v":Landroid/view/View;
    :cond_9
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2906
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2907
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2908
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2909
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v1, v1, v6

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v5, v5, v10

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7

    .line 2913
    .end local v0    # "v":Landroid/view/View;
    :cond_b
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 2914
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2915
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2920
    :goto_8
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 2921
    invoke-virtual {v1}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 2920
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2922
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalSpinnerPadding:[I

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 2925
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 2926
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2933
    :goto_9
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    .line 2934
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 2933
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2935
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOriginalPadding:[I

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2939
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2946
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2948
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2949
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2917
    :cond_c
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2918
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 2928
    :cond_d
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_9
.end method

.method private setViewVisibility(Z)V
    .locals 3
    .param p1, "isDefaultAccount"    # Z

    .prologue
    const/16 v2, 0x8

    .line 2596
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f110145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2597
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f110148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2598
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f110158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2599
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f110159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2600
    return-void
.end method

.method private showCalendarsAccountDialog(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 3
    .param p1, "editEventView"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 2130
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    iget-object v1, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->setAccounts([Ljava/lang/String;)V

    .line 2132
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->selectCanlendarAccount:I

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->setCheckedId(I)V

    .line 2134
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 2136
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2137
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 2138
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 2141
    :cond_1
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;

    invoke-direct {v2, p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2142
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$8;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$8;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2163
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 2172
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 2173
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 2175
    return-void
.end method

.method private showRepeatsDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 3507
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001b

    .line 3508
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 3509
    .local v1, "reminderMethodLabel":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 3510
    .local v2, "reminderValue":[Ljava/lang/CharSequence;
    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 3512
    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3514
    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSelectedFruitIndex:I

    .line 3511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3518
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v3, :cond_2

    .line 3519
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 3520
    iput-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    .line 3523
    :cond_2
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSelectedFruitIndex:I

    new-instance v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;

    invoke-direct {v5, p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;[Ljava/lang/CharSequence;)V

    .line 3524
    invoke-virtual {v3, v1, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 3539
    invoke-virtual {v3, v4, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    .line 3540
    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    .line 3541
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 3542
    return-void
.end method

.method private showTimezoneDialog()V
    .locals 7

    .prologue
    .line 760
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 762
    .local v0, "alertDialogContext":Landroid/content/Context;
    const v4, 0x7f0c0093

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 763
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 764
    invoke-virtual {v5, v6}, Lcn/nubia/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v5

    .line 763
    invoke-virtual {v1, v4, v5, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 767
    const-string v4, "layout_inflater"

    .line 768
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 769
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300be

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 772
    .local v3, "timezoneFooterView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0035

    .line 773
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 772
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;

    invoke-direct {v4, p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 793
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 794
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 795
    return-void
.end method

.method private updateHomeTime()V
    .locals 23

    .prologue
    .line 3265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 3266
    .local v9, "tz":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModification:I

    if-eqz v2, :cond_6

    .line 3268
    const/4 v8, 0x1

    .line 3269
    .local v8, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    .line 3270
    .local v18, "is24Format":Z
    if-eqz v18, :cond_0

    .line 3271
    or-int/lit16 v8, v8, 0x80

    .line 3273
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 3274
    .local v4, "millisStart":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 3276
    .local v12, "millisEnd":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_7

    const/16 v20, 0x1

    .line 3277
    .local v20, "isDSTStart":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_8

    const/16 v19, 0x1

    .line 3280
    .local v19, "isDSTEnd":Z
    :goto_1
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    .line 3281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 3280
    move/from16 v0, v20

    invoke-virtual {v2, v0, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 3282
    .local v22, "tzDisplay":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 3284
    .local v21, "time":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v6, v4

    .line 3286
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 3285
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 3287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3288
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    if-nez v2, :cond_9

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    const v3, 0x7f11012c

    .line 3292
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 3293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 3294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3300
    :cond_1
    :goto_2
    const v8, 0x80016

    .line 3303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 3305
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 3306
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3305
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3310
    :cond_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 3311
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    .line 3312
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 3311
    move/from16 v0, v19

    invoke-virtual {v2, v0, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 3314
    :cond_3
    const/4 v8, 0x1

    .line 3315
    if-eqz v18, :cond_4

    .line 3316
    or-int/lit16 v8, v8, 0x80

    .line 3320
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3322
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    .line 3323
    invoke-static/range {v10 .. v17}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 3322
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 3324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3325
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3329
    :cond_5
    const v8, 0x80016

    .line 3332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 3334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v3

    .line 3335
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3334
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3338
    .end local v4    # "millisStart":J
    .end local v8    # "flags":I
    .end local v12    # "millisEnd":J
    .end local v18    # "is24Format":Z
    .end local v19    # "isDSTEnd":Z
    .end local v20    # "isDSTStart":Z
    .end local v21    # "time":Ljava/lang/StringBuilder;
    .end local v22    # "tzDisplay":Ljava/lang/String;
    :cond_6
    return-void

    .line 3276
    .restart local v4    # "millisStart":J
    .restart local v8    # "flags":I
    .restart local v12    # "millisEnd":J
    .restart local v18    # "is24Format":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3277
    .restart local v20    # "isDSTStart":Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 3298
    .restart local v19    # "isDSTEnd":Z
    .restart local v21    # "time":Ljava/lang/StringBuilder;
    .restart local v22    # "tzDisplay":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateRemindersVisibility(I)V
    .locals 2
    .param p1, "numReminders"    # I

    .prologue
    .line 2998
    if-nez p1, :cond_0

    .line 2999
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3003
    :goto_0
    return-void

    .line 3001
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public CalcelInput()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 274
    :cond_0
    return-void
.end method

.method public NongliSetText(Landroid/widget/TextView;JZ)V
    .locals 10
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "milis"    # J
    .param p4, "flag"    # Z

    .prologue
    .line 597
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 598
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-virtual {v7, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 599
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 600
    .local v0, "year":I
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 601
    .local v1, "monthOfYear":I
    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 602
    .local v2, "dayOfMonth":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mYear:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMonth:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mWeek:Ljava/lang/String;

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 604
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    return-void
.end method

.method public addMessageReceivers(ILjava/lang/String;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 3413
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3414
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3416
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3421
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mNoCalendarsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3422
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mNoCalendarsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->cancel()V

    .line 3424
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3425
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->cancel()V

    .line 3427
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 3428
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 3430
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3431
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    .line 3433
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 3434
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3436
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    if-eqz v0, :cond_5

    .line 3437
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    .line 3439
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    if-eqz v0, :cond_6

    .line 3440
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    .line 3443
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 3444
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    .line 3447
    :cond_7
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerStart:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    if-eqz v0, :cond_8

    .line 3448
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerStart:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    .line 3451
    :cond_8
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerEnd:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    if-eqz v0, :cond_9

    .line 3452
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeClickListenerEnd:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;

    .line 3455
    :cond_9
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    if-eqz v0, :cond_a

    .line 3456
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    .line 3459
    :cond_a
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    if-eqz v0, :cond_b

    .line 3460
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateAndTimeListener:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    .line 3463
    :cond_b
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    if-eqz v0, :cond_c

    .line 3464
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsAdapter:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    .line 3467
    :cond_c
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    if-eqz v0, :cond_d

    .line 3468
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->dismiss()V

    .line 3471
    :cond_d
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dpd_datePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    if-eqz v0, :cond_e

    .line 3472
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dpd_datePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->dismiss()V

    .line 3475
    :cond_e
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 3476
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 3477
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->accountsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 3480
    :cond_f
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 3481
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 3482
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->dialogForReminder:Lcn/nubia/commonui/app/AlertDialog;

    .line 3485
    :cond_10
    return-void
.end method

.method public fillModelFromReadOnlyUi()Z
    .locals 6

    .prologue
    .line 1480
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1481
    :cond_0
    const/4 v1, 0x0

    .line 1494
    :goto_0
    return v1

    .line 1483
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 1486
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1487
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->normalizeReminders()Z

    .line 1488
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 1490
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 1489
    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v0

    .line 1491
    .local v0, "status":I
    if-eqz v0, :cond_2

    .line 1492
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 1494
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDateTime(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 3042
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3043
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3044
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeYear:I

    .line 3045
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMonthOfYear:I

    .line 3046
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDayOfMonth:I

    .line 3047
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mHour:I

    .line 3048
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMinute:I

    .line 3049
    return-void
.end method

.method public getEditEventActionBarButtons()Landroid/view/View;
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->editEventActionBarButtons:Landroid/view/View;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2779
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/ContentResolver;)V

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "calendar_displayName"

    aput-object v5, v4, v1

    const-string v5, "visible = ? and calendar_access_level != ? and calendar_displayName != \'PC Sync\'"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v1

    const-string v7, "200"

    aput-object v7, v6, v8

    move-object v7, v2

    .line 2806
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mGroupCount:I

    return v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public initAccountsArray(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2758
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 2759
    .local v4, "accounts":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 2760
    const/4 v4, 0x0

    .line 2775
    .end local v4    # "accounts":[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 2762
    .restart local v4    # "accounts":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 2763
    .local v5, "i":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2764
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2765
    const-string v6, "account_type"

    .line 2766
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2767
    .local v3, "accountTypeColumn":I
    const-string v6, "account_name"

    .line 2768
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2769
    .local v1, "accountNameColumn":I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2770
    .local v2, "accountType":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2771
    .local v0, "accountName":Ljava/lang/String;
    aput-object v0, v4, v5

    .line 2772
    add-int/lit8 v5, v5, 0x1

    .line 2773
    goto :goto_0
.end method

.method public initAllDayReminderLables()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    .local v2, "myReminderMinuteLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001b

    .line 3494
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 3495
    .local v3, "reminderMethodLabel":[Ljava/lang/CharSequence;
    array-length v1, v3

    .line 3496
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 3497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3498
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3501
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method

.method public initAllDayReminderMinutes()V
    .locals 2

    .prologue
    .line 3487
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 3489
    return-void
.end method

.method public isEmptyEvent()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3547
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 3548
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3549
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 3574
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 3559
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 3560
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3561
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 3566
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 3567
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3568
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3569
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 3574
    .end local v0    # "description":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1520
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_1

    .line 1521
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 1522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveAfterQueryComplete:Z

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mNoCalendarsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 1524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1525
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1527
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1536
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mNoCalendarsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-ne p1, v3, :cond_2

    .line 1537
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1538
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    if-eqz v3, :cond_0

    .line 1539
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    invoke-interface {v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1540
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    invoke-interface {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->run()V

    .line 1542
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 1543
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1544
    .local v2, "nextIntent":Landroid/content/Intent;
    new-array v0, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.calendar"

    aput-object v4, v0, v3

    .line 1545
    .local v0, "array":[Ljava/lang/String;
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1548
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1562
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "nextIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1550
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-ne p1, v3, :cond_1

    .line 1551
    if-ltz p2, :cond_1

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezoneAdapter:Lcn/nubia/calendar/TimezoneAdapter;

    invoke-virtual {v3}, Lcn/nubia/calendar/TimezoneAdapter;->getCount()I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 1552
    invoke-direct {p0, p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setTimezone(I)V

    .line 1553
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateHomeTime()V

    .line 1555
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1556
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1504
    .local v2, "reminderItem":Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1506
    .local v1, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1507
    .local v0, "grandParent":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1508
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1509
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderTV:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0128

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateRemindersVisibility(I)V

    .line 1512
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget v5, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v3, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 1514
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3185
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 3186
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 3258
    :cond_0
    :goto_0
    return-void

    .line 3193
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    .line 3194
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3195
    .local v2, "accountName":Ljava/lang/String;
    const-string v15, "nobody@gmail.com"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3196
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    .line 3200
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setViewVisibility(Z)V

    .line 3201
    const-string v15, "calendar_color"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 3202
    .local v10, "colorColumn":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3203
    .local v7, "color":I
    invoke-static {v7}, Lcn/nubia/calendar/util/Utils;->getDisplayColorFromColor(I)I

    move-result v11

    .line 3205
    .local v11, "displayColor":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsMultipane:Z

    if-eqz v15, :cond_2

    .line 3206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    if-eqz v15, :cond_2

    .line 3207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    invoke-virtual {v15, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3215
    :cond_2
    const-string v15, "_id"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 3216
    .local v12, "idColumn":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3217
    .local v8, "calendarId":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    move-wide/from16 v16, v0

    cmp-long v15, v8, v16

    if-eqz v15, :cond_0

    .line 3220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput-wide v8, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 3221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput v7, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarColor:I

    .line 3223
    const-string v15, "maxReminders"

    .line 3224
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 3225
    .local v13, "maxRemindersColumn":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    .line 3226
    const-string v15, "allowedReminders"

    .line 3227
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 3228
    .local v5, "allowedRemindersColumn":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 3229
    const-string v15, "allowedAttendeeTypes"

    .line 3230
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 3231
    .local v3, "allowedAttendeeTypesColumn":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 3232
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 3233
    const-string v15, "allowedAvailability"

    .line 3234
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 3235
    .local v4, "allowedAvailabilityColumn":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 3236
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 3243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v15, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v15, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v15, v15, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    iput-boolean v15, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 3248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const v16, 0x7f110143

    .line 3250
    invoke-virtual/range {v15 .. v16}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 3251
    .local v14, "reminderLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3252
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareReminders()V

    .line 3253
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareAvailability()V

    .line 3255
    if-eqz v6, :cond_0

    .line 3256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3198
    .end local v3    # "allowedAttendeeTypesColumn":I
    .end local v4    # "allowedAvailabilityColumn":I
    .end local v5    # "allowedRemindersColumn":I
    .end local v7    # "color":I
    .end local v8    # "calendarId":J
    .end local v10    # "colorColumn":I
    .end local v11    # "displayColor":I
    .end local v12    # "idColumn":I
    .end local v13    # "maxRemindersColumn":I
    .end local v14    # "reminderLayout":Landroid/widget/LinearLayout;
    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    goto/16 :goto_1

    .line 3245
    .restart local v3    # "allowedAttendeeTypesColumn":I
    .restart local v4    # "allowedAvailabilityColumn":I
    .restart local v5    # "allowedRemindersColumn":I
    .restart local v7    # "color":I
    .restart local v8    # "calendarId":J
    .restart local v10    # "colorColumn":I
    .restart local v11    # "displayColor":I
    .restart local v12    # "idColumn":I
    .restart local v13    # "maxRemindersColumn":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3342
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onReminderMethodResult(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3580
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3584
    :goto_0
    return-void

    .line 3581
    :catch_0
    move-exception v0

    .line 3582
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMethodIndex:I

    goto :goto_0
.end method

.method public prepareForSave()Z
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1474
    :cond_0
    const/4 v0, 0x0

    .line 1476
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->fillModelFromUI()Z

    move-result v0

    goto :goto_0
.end method

.method public refreshCount()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2818
    new-array v8, v10, [Ljava/lang/String;

    const-string v0, "account_type as primary_key"

    aput-object v0, v8, v9

    .line 2820
    .local v8, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    .line 2821
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "calendar_displayName"

    aput-object v3, v2, v9

    const-string v3, "visible = ? and calendar_access_level != ? and calendar_displayName != \'PC Sync\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v9

    const-string v5, "200"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    .line 2822
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2826
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2827
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mGroupCount:I

    .line 2828
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mGroupCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    .line 2829
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2830
    const/4 v7, 0x0

    .line 2831
    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2832
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 2833
    const-string v0, "nobody@gmail.com"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2834
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0189

    .line 2835
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v7

    .line 2839
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2837
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccounts:[Ljava/lang/String;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_1

    .line 2841
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2843
    .end local v7    # "index":I
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->fillAccountsToModel()V

    .line 2844
    return-void
.end method

.method protected setAllDayViewsVisibility(Z)V
    .locals 9
    .param p1, "isChecked"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3132
    if-eqz p1, :cond_3

    .line 3133
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_2

    .line 3134
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_0

    .line 3135
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 3138
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 3139
    .local v0, "endMillis":J
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3140
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3141
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 3143
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0, v1, v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDate(Landroid/widget/TextView;JZ)V

    .line 3146
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3147
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3149
    .end local v0    # "endMillis":J
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDateText:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDate(Landroid/widget/TextView;JZ)V

    .line 3150
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDateText:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDate(Landroid/widget/TextView;JZ)V

    .line 3151
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDayParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3152
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDayParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3153
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMEndTimeParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3154
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMStartTimeParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3175
    :goto_0
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDay:Z

    .line 3176
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateHomeTime()V

    .line 3177
    return-void

    .line 3157
    :cond_3
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_5

    .line 3158
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_4

    .line 3159
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 3162
    :cond_4
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 3164
    :cond_5
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3165
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3168
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMEndTimeParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3169
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mMStartTimeParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3170
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartDayParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3171
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndDayParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3172
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDateAndTime(Landroid/widget/TextView;JZ)V

    .line 3173
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setDateAndTime(Landroid/widget/TextView;JZ)V

    goto :goto_0
.end method

.method public setCalendarsCursor(Landroid/database/Cursor;Z)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "userVisible"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2691
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2692
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2694
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_1

    .line 2695
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2697
    :cond_1
    if-nez p2, :cond_3

    .line 2755
    :cond_2
    :goto_0
    return-void

    .line 2702
    :cond_3
    new-instance v8, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2703
    .local v8, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v0, 0x7f0c005b

    invoke-virtual {v8, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005a

    .line 2704
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0015

    .line 2705
    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    .line 2706
    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 2707
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2708
    invoke-virtual {v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mNoCalendarsDialog:Lcn/nubia/commonui/app/AlertDialog;

    goto :goto_0

    .line 2711
    .end local v8    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v9

    .line 2715
    .local v9, "defaultCalendarPosition":I
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/ContentResolver;)V

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "visible = ? and calendar_access_level != ? and calendar_displayName != \'PC Sync\'"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v6, v1

    const-string v4, "200"

    aput-object v4, v6, v10

    move-object v4, v2

    move-object v7, v2

    .line 2728
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_2

    .line 2737
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2738
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->fillModelFromUI()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2739
    if-eqz p2, :cond_5

    .line 2740
    .local v10, "exit":I
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    if-eqz v0, :cond_2

    .line 2741
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    or-int/lit8 v1, v10, 0x2

    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 2742
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0

    .end local v10    # "exit":I
    :cond_5
    move v10, v1

    .line 2739
    goto :goto_1

    .line 2744
    :cond_6
    if-eqz p2, :cond_7

    .line 2745
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    if-eqz v0, :cond_2

    .line 2746
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0, v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 2747
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_0

    .line 2750
    :cond_7
    const-string v0, "EditEventView"

    const-string v1, "SetCalendarsCursor:Save failed and unable to exit view"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setEditEventActionBarButtons(Landroid/view/View;)V
    .locals 0
    .param p1, "editEventActionBarButtons"    # Landroid/view/View;

    .prologue
    .line 1785
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->editEventActionBarButtons:Landroid/view/View;

    .line 1786
    return-void
.end method

.method public setImageFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageFilePath"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setModel(Lcn/nubia/calendar/model/CalendarEventModel;)V
    .locals 22
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 2342
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 2346
    if-nez p1, :cond_0

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2592
    :goto_0
    return-void

    .line 2353
    :cond_0
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canRespond(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v10

    .line 2355
    .local v10, "canRespond":Z
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 2356
    .local v6, "begin":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 2357
    .local v14, "end":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 2360
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_1

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 2365
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-lez v20, :cond_2

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 2370
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2371
    .local v18, "rrule":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEventRecurrence:Lcn/nubia/calendarcommon2/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 2374
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mRdate:Ljava/lang/String;

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v20, v0

    new-instance v21, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;

    invoke-direct/range {v21 .. v22}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2379
    invoke-virtual/range {v20 .. v21}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v16

    .line 2431
    .local v16, "prevAllDay":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDay:Z

    .line 2433
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 2445
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 2446
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 2449
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->populateTimezone(J)V

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    .line 2452
    invoke-static/range {v20 .. v20}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 2453
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "preferences_default_reminder"

    const-string v21, "-1"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2456
    .local v11, "defaultReminderString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDefaultReminderMinutes:I

    .line 2457
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareAvailability()V

    .line 2460
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2470
    .local v4, "addReminderOnClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsMultipane:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f110108

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$12;

    invoke-direct/range {v21 .. v22}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$12;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2480
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 2481
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2482
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEditEventLeapFlag:Z

    .line 2483
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 2485
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setSelection(I)V

    .line 2490
    :cond_7
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "calendar.google.com"

    .line 2491
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 2492
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f110139

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f11013a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mOrganizerGroup:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2500
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 2504
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 2508
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2509
    .local v5, "availIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_b

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2512
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f110133

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 2515
    .local v17, "responseLabel":Landroid/view/View;
    if-eqz v10, :cond_10

    .line 2516
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    move/from16 v20, v0

    .line 2517
    invoke-static/range {v20 .. v20}, Lcn/nubia/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v8

    .line 2518
    .local v8, "buttonToCheck":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 2521
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2528
    .end local v8    # "buttonToCheck":I
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/nubia/calendar/util/Utils;->getDisplayColorFromColor(I)I

    move-result v12

    .line 2529
    .local v12, "displayColor":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f110122

    .line 2533
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2534
    .local v9, "calendarGroup":Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f110150

    .line 2537
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2538
    .local v19, "tv":Landroid/widget/TextView;
    if-eqz v19, :cond_c

    .line 2539
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2540
    const-string v20, "nobody@gmail.com"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 2541
    const v20, 0x7f0c0189

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2546
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_11

    const-string v20, "nobody@gmail.com"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2548
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 2549
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    .line 2553
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setViewVisibility(Z)V

    .line 2561
    .end local v19    # "tv":Landroid/widget/TextView;
    :goto_5
    const-string v20, "EditEventView"

    const-string v21, "setModel->prepareReminders"

    invoke-static/range {v20 .. v21}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareReminders()V

    .line 2564
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->populateWhen()V

    .line 2565
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->populateRepeats()V

    .line 2569
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPicturePath()V

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureRemoveBtn:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureRemoveBtn:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    new-instance v21, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;

    invoke-direct/range {v21 .. v22}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2587
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateView()V

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2590
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->fillAccountsToModel()V

    .line 2591
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->sendAccessibilityEvent()V

    goto/16 :goto_0

    .line 2441
    .end local v4    # "addReminderOnClickListener":Landroid/view/View$OnClickListener;
    .end local v5    # "availIndex":I
    .end local v9    # "calendarGroup":Landroid/view/View;
    .end local v11    # "defaultReminderString":Ljava/lang/String;
    .end local v12    # "displayColor":I
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "responseLabel":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto/16 :goto_1

    .line 2496
    .restart local v4    # "addReminderOnClickListener":Landroid/view/View$OnClickListener;
    .restart local v11    # "defaultReminderString":Ljava/lang/String;
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f11013a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2497
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2523
    .restart local v5    # "availIndex":I
    .restart local v17    # "responseLabel":Landroid/view/View;
    :cond_10
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mResponseGroup:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2551
    .restart local v9    # "calendarGroup":Landroid/view/View;
    .restart local v12    # "displayColor":I
    .restart local v19    # "tv":Landroid/widget/TextView;
    :cond_11
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    goto/16 :goto_4

    .line 2556
    .end local v9    # "calendarGroup":Landroid/view/View;
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f1100db

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2557
    .restart local v9    # "calendarGroup":Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setModification(I)V
    .locals 0
    .param p1, "modifyWhich"    # I

    .prologue
    .line 2955
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModification:I

    .line 2956
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateView()V

    .line 2957
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->updateHomeTime()V

    .line 2958
    return-void
.end method

.method public setPicturePathText()V
    .locals 3

    .prologue
    const/high16 v2, 0x43200000    # 160.0f

    .line 1274
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mImageFilePath:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcn/nubia/calendar/util/PictureUtils;->getBitmapByPathForScale(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1277
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1278
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    .line 1279
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mPictureShowImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1284
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1281
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPictureLayControlShow(Z)V

    goto :goto_0
.end method

.method public setReminderMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "reminder"    # Ljava/lang/String;

    .prologue
    .line 3634
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethod:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3635
    return-void
.end method

.method protected setWhenString()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 2660
    const/16 v6, 0x10

    .line 2661
    .local v6, "flags":I
    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimezone:Ljava/lang/String;

    .line 2662
    .local v7, "tz":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_1

    .line 2663
    or-int/lit8 v6, v6, 0x2

    .line 2664
    const-string v7, "UTC"

    .line 2671
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 2672
    .local v2, "startMillis":J
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 2673
    .local v4, "endMillis":J
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2674
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mF:Ljava/util/Formatter;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 2675
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2676
    .local v8, "when":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mWhenView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2677
    return-void

    .line 2666
    .end local v2    # "startMillis":J
    .end local v4    # "endMillis":J
    .end local v8    # "when":Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 2667
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2668
    or-int/lit16 v6, v6, 0x80

    goto :goto_0
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 2851
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-nez v0, :cond_0

    .line 2860
    :goto_0
    return-void

    .line 2854
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyEvent(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2855
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mModification:I

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setViewStates(I)V

    .line 2859
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsDefaultAccount:Z

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setViewVisibility(Z)V

    goto :goto_0

    .line 2857
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setViewStates(I)V

    goto :goto_1
.end method
