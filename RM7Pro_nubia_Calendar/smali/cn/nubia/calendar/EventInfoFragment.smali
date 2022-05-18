.class public Lcn/nubia/calendar/EventInfoFragment;
.super Landroid/app/DialogFragment;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcn/nubia/calendar/CalendarController$EventHandler;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/EventInfoFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_IDENTITY:I = 0x5

.field private static final ATTENDEES_INDEX_ID_NAMESPACE:I = 0x6

.field private static final ATTENDEES_INDEX_NAME:I = 0x1

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field private static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=?"

.field protected static final BUNDLE_KEY_ATTENDEE_RESPONSE:Ljava/lang/String; = "key_attendee_response"

.field protected static final BUNDLE_KEY_DELETE_DIALOG_VISIBLE:Ljava/lang/String; = "key_delete_dialog_visible"

.field protected static final BUNDLE_KEY_END_MILLIS:Ljava/lang/String; = "key_end_millis"

.field protected static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field protected static final BUNDLE_KEY_IS_DIALOG:Ljava/lang/String; = "key_fragment_is_dialog"

.field protected static final BUNDLE_KEY_START_MILLIS:Ljava/lang/String; = "key_start_millis"

.field protected static final BUNDLE_KEY_WINDOW_STYLE:Ljava/lang/String; = "key_window_style"

.field static final CALENDARS_DUPLICATE_NAME_WHERE:Ljava/lang/String; = "calendar_displayName=?"

.field static final CALENDARS_INDEX_ACCOUNT_NAME:I = 0x4

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_OWNER_CAN_RESPOND:I = 0x3

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=?"

.field private static final CODE_WRITECALENDAR_PERMISSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final DEFAULT_ACCOUNT_NAME:Ljava/lang/String; = "nobody@gmail.com"

.field public static final DEFAULT_CALENDAR_NAME:Ljava/lang/String; = "My Calendar"

.field private static DIALOG_TOP_MARGIN:I = 0x0

.field public static final DIALOG_WINDOW_STYLE:I = 0x1

.field private static final EVENT_INDEX_ACCESS_LEVEL:I = 0xa

.field private static final EVENT_INDEX_ACCOUNT_DISPLAY_NAME:I = 0x13

.field private static final EVENT_INDEX_ACCOUNT_TYPE:I = 0x14

.field private static final EVENT_INDEX_ALLOWED_REMINDERS:I = 0x10

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_COLOR:I = 0xb

.field private static final EVENT_INDEX_CUSTOM_APP_PACKAGE:I = 0x11

.field private static final EVENT_INDEX_CUSTOM_APP_URI:I = 0x12

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_DTSTART:I = 0x5

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_HAS_ALARM:I = 0xe

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xc

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_MAX_REMINDERS:I = 0xf

.field private static final EVENT_INDEX_ORGANIZER:I = 0xd

.field private static final EVENT_INDEX_RDATE:I = 0x16

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_SYNC_ID:I = 0x6

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_UPDATE:I = 0x6e

.field public static final EXCHANGE_ACCOUTN_TYPE:Ljava/lang/String; = "com.android.exchange"

.field private static final FADE_IN_TIME:I = 0x12c

.field public static final FULL_WINDOW_STYLE:I = 0x0

.field public static final GOOGLE_ACCOUTN_TYPE:Ljava/lang/String; = "com.google"

.field private static final LOADING_MSG_DELAY:I = 0x258

.field private static final LOADING_MSG_MIN_DISPLAY_TIME:I = 0x258

.field private static final NANP_ALLOWED_SYMBOLS:Ljava/lang/String; = "()+-*#."

.field private static final NANP_MAX_DIGITS:I = 0xb

.field private static final NANP_MIN_DIGITS:I = 0x7

.field public static final NUBIA_ACCOUTN_TYPE:Ljava/lang/String; = "com.ztemt"

.field private static final PERIOD_SPACE:Ljava/lang/String; = ". "

.field private static final REMINDERS_INDEX_ID:I = 0x0

.field private static final REMINDERS_METHOD_ID:I = 0x2

.field private static final REMINDERS_MINUTES_ID:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=?"

.field public static final TAG:Ljava/lang/String; = "EventInfoFragment"

.field private static final TOKEN_QUERY_ALL:I = 0x1f

.field private static final TOKEN_QUERY_ATTENDEES:I = 0x4

.field private static final TOKEN_QUERY_CALENDARS:I = 0x2

.field private static final TOKEN_QUERY_DUPLICATE_CALENDARS:I = 0x8

.field private static final TOKEN_QUERY_EVENT:I = 0x1

.field private static final TOKEN_QUERY_REMINDERS:I = 0x10

.field static final UPDATE_ALL:I = 0x1

.field static final UPDATE_SINGLE:I

.field private static mCustomAppIconSize:I

.field private static mDialogHeight:I

.field private static mDialogWidth:I

.field private static mScale:F

.field private static final mWildcardPattern:Ljava/util/regex/Pattern;


# instance fields
.field private LeapFlag:Z

.field private alarmManager:Landroid/app/AlarmManager;

.field private canClickRemingd:Z

.field private clickEditButtonAndIntoEditActivity:Z

.field private currentLanguage:Ljava/lang/String;

.field private delete_menu:Landroid/widget/TextView;

.field private edit_menu:Landroid/widget/TextView;

.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAllDay:Z

.field private mAllDayOfBirthday:Z

.field private mAnimateAlpha:Landroid/animation/ObjectAnimator;

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mBirthdayId:J

.field private mCalendarAllowedReminders:Ljava/lang/String;

.field private mCalendarId:J

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field mCcEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentQuery:I

.field private mCursor:Landroid/database/Cursor;

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultReminderMinutes:I

.field private mDeleteDialogVisible:Z

.field private mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

.field private mDesc:Lcn/nubia/calendar/ui_component/view/ExpandableTextView;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDismissOnResume:Z

.field private mEditResponseHelper:Lcn/nubia/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventDeletionStarted:Z

.field private mEventId:J

.field private mEventOrganizerDisplayName:Ljava/lang/String;

.field private mEventOrganizerEmail:Ljava/lang/String;

.field private mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

.field private mHasAlarm:Z

.field private mHasAttendeeData:Z

.field private mHeadlines:Landroid/view/View;

.field private mIsBusyFreeCalendar:Z

.field private mIsDefaultAccount:Z

.field private mIsDialog:Z

.field private mIsOrganizer:Z

.field private mIsPaused:Z

.field private mIsRepeating:Z

.field private mIsTabletConfig:Z

.field private mListDivider2:Landroid/view/View;

.field private final mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

.field private mLoadingMsgStartTime:J

.field private mLoadingMsgView:Landroid/view/View;

.field private mMaxReminders:I

.field private mMenu:Landroid/view/Menu;

.field private mMinTop:I

.field private mNoCrossFade:Z

.field mNoResponseAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfAttendees:I

.field private mOriginalAttendeeResponse:I

.field public mOriginalReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerCanRespond:Z

.field public mRecieverChanged:Z

.field private mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mReminderMethodLabel:[Ljava/lang/CharSequence;

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

.field private final mReminderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersCursor:Landroid/database/Cursor;

.field private final mSDCardObserverReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedFruitIndex:I

.field private mStartMillis:J

.field private mSyncAccountName:Ljava/lang/String;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field mToEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateEventHandler:Landroid/os/Handler;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private mUserModifiedReminders:Z

.field private mUserSetResponse:I

.field private mView:Landroid/view/View;

.field private mWhenDateTime:Landroid/widget/TextView;

.field private mWhere:Landroid/widget/TextView;

.field private mWindowStyle:I

.field private mX:I

.field private mY:I

.field private menuContainer:Landroid/widget/LinearLayout;

.field public monthStr:Ljava/lang/String;

.field private final onDeleteRunnable:Ljava/lang/Runnable;

.field private share_menu:Landroid/widget/ImageView;

.field public weekStr:Ljava/lang/String;

.field public yearStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "calendar_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "customAppPackage"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "customAppUri"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "dtend"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 266
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "attendeeIdentity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attendeeIdNamespace"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 289
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 301
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v6

    const-string v1, "account_name"

    aput-object v1, v0, v7

    sput-object v0, Lcn/nubia/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->mScale:F

    .line 333
    const/16 v0, 0x20

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->mCustomAppIconSize:I

    .line 386
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 501
    const/16 v0, 0x1f4

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->mDialogWidth:I

    .line 502
    const/16 v0, 0x258

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->mDialogHeight:I

    .line 503
    const/16 v0, 0x8

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 169
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDefaultAccount:Z

    .line 199
    iput v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    .line 210
    iput v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 338
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 344
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 354
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 358
    iput v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 359
    iput v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 365
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 372
    iput-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 381
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoCrossFade:Z

    .line 382
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->LeapFlag:Z

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 402
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateHandler:Landroid/os/Handler;

    .line 430
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$1;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 460
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$2;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    .line 491
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$3;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateEventHandler:Landroid/os/Handler;

    .line 504
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    .line 505
    iput-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsPaused:Z

    .line 506
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 507
    iput v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mX:I

    .line 508
    iput v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mY:I

    .line 513
    iput v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mSelectedFruitIndex:I

    .line 515
    iput-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    .line 516
    iput-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mCursor:Landroid/database/Cursor;

    .line 519
    iput-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    .line 700
    iput-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->canClickRemingd:Z

    .line 1025
    iput-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1078
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$11;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$11;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 1383
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->clickEditButtonAndIntoEditActivity:Z

    .line 2165
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$16;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$16;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mSDCardObserverReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJIZI)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "attendeeResponse"    # I
    .param p9, "isDialog"    # Z
    .param p10, "windowStyle"    # I

    .prologue
    .line 704
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcn/nubia/calendar/EventInfoFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V

    .line 706
    iput-wide p2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    .line 707
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->yearStr:Ljava/lang/String;

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->monthStr:Ljava/lang/String;

    .line 709
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->weekStr:Ljava/lang/String;

    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 711
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->canClickRemingd:Z

    .line 713
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJIZIZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "attendeeResponse"    # I
    .param p9, "isDialog"    # Z
    .param p10, "windowStyle"    # I
    .param p11, "canClickRemingd"    # Z

    .prologue
    .line 717
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v3 .. v12}, Lcn/nubia/calendar/EventInfoFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V

    .line 719
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->yearStr:Ljava/lang/String;

    .line 721
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->monthStr:Ljava/lang/String;

    .line 722
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->weekStr:Ljava/lang/String;

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 724
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    .line 725
    move/from16 v0, p11

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->canClickRemingd:Z

    .line 726
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "attendeeResponse"    # I
    .param p8, "isDialog"    # Z
    .param p9, "windowStyle"    # I

    .prologue
    .line 666
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 169
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDefaultAccount:Z

    .line 199
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    .line 342
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 344
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 354
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 358
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 359
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoCrossFade:Z

    .line 382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->LeapFlag:Z

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 427
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateHandler:Landroid/os/Handler;

    .line 430
    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$1;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 460
    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$2;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    .line 491
    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$3;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateEventHandler:Landroid/os/Handler;

    .line 504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsPaused:Z

    .line 506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mX:I

    .line 508
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mY:I

    .line 513
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mSelectedFruitIndex:I

    .line 515
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCursor:Landroid/database/Cursor;

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    .line 700
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->canClickRemingd:Z

    .line 1025
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1078
    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$11;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$11;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 1383
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->clickEditButtonAndIntoEditActivity:Z

    .line 2165
    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$16;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$16;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mSDCardObserverReceiver:Landroid/content/BroadcastReceiver;

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 668
    .local v0, "r":Landroid/content/res/Resources;
    sget v1, Lcn/nubia/calendar/EventInfoFragment;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcn/nubia/calendar/EventInfoFragment;->mScale:F

    .line 670
    sget v1, Lcn/nubia/calendar/EventInfoFragment;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 671
    sget v1, Lcn/nubia/calendar/EventInfoFragment;->mCustomAppIconSize:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/EventInfoFragment;->mCustomAppIconSize:I

    .line 672
    if-eqz p8, :cond_0

    .line 673
    sget v1, Lcn/nubia/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    .line 677
    :cond_0
    if-eqz p8, :cond_1

    .line 678
    invoke-direct {p0, v0}, Lcn/nubia/calendar/EventInfoFragment;->setDialogSize(Landroid/content/res/Resources;)V

    .line 680
    :cond_1
    iput-boolean p8, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    .line 682
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/nubia/calendar/EventInfoFragment;->setStyle(II)V

    .line 683
    iput-object p2, p0, Lcn/nubia/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 684
    iput-wide p3, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 685
    iput-wide p5, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    .line 686
    iput p7, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 687
    iput p9, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    .line 688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->yearStr:Ljava/lang/String;

    .line 689
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->monthStr:Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->weekStr:Ljava/lang/String;

    .line 691
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 692
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    .line 693
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->getQuaryoperation()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->prepareReminders()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcn/nubia/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/EventInfoFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHasAlarm:Z

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcn/nubia/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2002(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2202(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2300(Lcn/nubia/calendar/EventInfoFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCurrentQuery:I

    return v0
.end method

.method static synthetic access$2400(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoCrossFade:Z

    return v0
.end method

.method static synthetic access$2402(Lcn/nubia/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoCrossFade:Z

    return p1
.end method

.method static synthetic access$2502(Lcn/nubia/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    return p1
.end method

.method static synthetic access$2600(Lcn/nubia/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    return v0
.end method

.method static synthetic access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$2802(Lcn/nubia/calendar/EventInfoFragment;Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/DeleteEventHelper;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    return-object p1
.end method

.method static synthetic access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3000(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    return v0
.end method

.method static synthetic access$3100(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$3200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3302(Lcn/nubia/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    return p1
.end method

.method static synthetic access$3400(Lcn/nubia/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcn/nubia/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcn/nubia/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3702(Lcn/nubia/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcn/nubia/calendar/EventInfoFragment;->clickEditButtonAndIntoEditActivity:Z

    return p1
.end method

.method static synthetic access$3800(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    return v0
.end method

.method static synthetic access$3900(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgStartTime:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcn/nubia/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDismissOnResume:Z

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/calendar/EventInfoFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgStartTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$4102(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$4200(Lcn/nubia/calendar/EventInfoFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4300(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$4400(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->openBrowse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->doEdit()V

    return-void
.end method

.method static synthetic access$4602(Lcn/nubia/calendar/EventInfoFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mSelectedFruitIndex:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->initEventCursor()Z

    move-result v0

    return v0
.end method

.method private addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcn/nubia/calendar/ui_component/view/ExpandableTextView;)V
    .locals 2
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "etv"    # Lcn/nubia/calendar/ui_component/view/ExpandableTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/widget/TextView;",
            "Lcn/nubia/calendar/ui_component/view/ExpandableTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2437
    .local p1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p2, :cond_1

    .line 2438
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2445
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2446
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2447
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2448
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2449
    const-string v1, ". "

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 2439
    :cond_1
    if-eqz p3, :cond_0

    .line 2440
    invoke-virtual {p3}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "cs":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3159
    .local p1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcn/nubia/calendar/util/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3160
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    :cond_0
    return-void
.end method

.method public static addSearchBehaviorToTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 2218
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2219
    .local v2, "text":Ljava/lang/String;
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$17;

    invoke-direct {v0, p0, v2}, Lcn/nubia/calendar/EventInfoFragment$17;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2233
    .local v0, "span":Landroid/text/style/ClickableSpan;
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2234
    .local v1, "spanStr":Landroid/text/SpannableString;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2236
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2237
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2238
    return-void
.end method

.method private applyDialogParams()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 764
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 765
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 767
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 768
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 770
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 771
    .local v0, "a":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3ecccccd    # 0.4f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 773
    sget v3, Lcn/nubia/calendar/EventInfoFragment;->mDialogWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 774
    sget v3, Lcn/nubia/calendar/EventInfoFragment;->mDialogHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 779
    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mY:I

    if-eq v3, v4, :cond_2

    .line 780
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mX:I

    sget v4, Lcn/nubia/calendar/EventInfoFragment;->mDialogWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 781
    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mY:I

    sget v4, Lcn/nubia/calendar/EventInfoFragment;->mDialogHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 782
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mMinTop:I

    if-ge v3, v4, :cond_1

    .line 783
    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mMinTop:I

    sget v4, Lcn/nubia/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 785
    :cond_1
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 787
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 788
    return-void
.end method

.method private createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 3241
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$20;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$20;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    return-object v0
.end method

.method private createExceptionResponse(JI)V
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "status"    # I

    .prologue
    .line 1497
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1498
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "originalInstanceTime"

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1499
    const-string v1, "selfAttendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1500
    const-string v1, "eventStatus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 1504
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1503
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1505
    .local v0, "exceptionUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1506
    invoke-virtual {v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1505
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v2}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->getNextToken()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "com.android.calendar"

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 1510
    return-void
.end method

.method private doEdit()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 1549
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 1552
    .local v14, "c":Landroid/content/Context;
    if-eqz v14, :cond_0

    .line 1553
    invoke-static {v14}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    iget-wide v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v8, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    const-wide/16 v12, -0x1

    move-object v1, p0

    move v11, v10

    invoke-virtual/range {v0 .. v13}, Lcn/nubia/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 1557
    :cond_0
    return-void
.end method

.method private emailAttendees()V
    .locals 4

    .prologue
    .line 3169
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3170
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "eventId"

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3171
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3172
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/EventInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 3173
    return-void
.end method

.method public static findButtonIdForResponse(I)I
    .locals 1
    .param p0, "response"    # I

    .prologue
    .line 1532
    packed-switch p0, :pswitch_data_0

    .line 1543
    :pswitch_0
    const/4 v0, -0x1

    .line 1545
    .local v0, "buttonId":I
    :goto_0
    return v0

    .line 1534
    .end local v0    # "buttonId":I
    :pswitch_1
    const v0, 0x7f110135

    .line 1535
    .restart local v0    # "buttonId":I
    goto :goto_0

    .line 1537
    .end local v0    # "buttonId":I
    :pswitch_2
    const v0, 0x7f110136

    .line 1538
    .restart local v0    # "buttonId":I
    goto :goto_0

    .line 1540
    .end local v0    # "buttonId":I
    :pswitch_3
    const v0, 0x7f110137

    .line 1541
    .restart local v0    # "buttonId":I
    goto :goto_0

    .line 1532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static findNanpMatchEnd(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0x31

    const/4 v5, -0x1

    .line 2072
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2073
    .local v2, "endPos":I
    move v1, p1

    .line 2074
    .local v1, "curPos":I
    const/4 v4, 0x0

    .line 2075
    .local v4, "foundDigits":I
    const/16 v3, 0x78

    .line 2077
    .local v3, "firstDigit":C
    :goto_0
    if-gt v1, v2, :cond_5

    .line 2079
    if-ge v1, v2, :cond_2

    .line 2080
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2085
    .local v0, "ch":C
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2086
    if-nez v4, :cond_0

    .line 2087
    move v3, v0

    .line 2089
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 2090
    if-le v4, v8, :cond_9

    move v1, v5

    .line 2112
    .end local v0    # "ch":C
    .end local v1    # "curPos":I
    :cond_1
    :goto_2
    return v1

    .line 2082
    .restart local v1    # "curPos":I
    :cond_2
    const/16 v0, 0x1b

    .restart local v0    # "ch":C
    goto :goto_1

    .line 2094
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2095
    if-ne v3, v7, :cond_4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_9

    const/4 v6, 0x4

    if-eq v4, v6, :cond_9

    :cond_4
    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    .line 2106
    .end local v0    # "ch":C
    :cond_5
    if-eq v3, v7, :cond_6

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1

    :cond_6
    if-ne v3, v7, :cond_7

    if-eq v4, v8, :cond_1

    :cond_7
    move v1, v5

    .line 2112
    goto :goto_2

    .line 2098
    .restart local v0    # "ch":C
    :cond_8
    const-string v6, "()+-*#."

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v5, :cond_5

    .line 2103
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 2104
    goto :goto_0
.end method

.method static findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1959
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1961
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1962
    .local v5, "startPos":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    add-int/lit8 v0, v6, 0x1

    .line 1963
    .local v0, "endPos":I
    if-gez v0, :cond_2

    .line 1964
    const/4 v6, 0x0

    new-array v4, v6, [I

    .line 2001
    :cond_0
    return-object v4

    .line 1983
    :cond_1
    invoke-static {p0, v5}, Lcn/nubia/calendar/EventInfoFragment;->findNanpMatchEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1984
    .local v3, "matchEnd":I
    if-le v3, v5, :cond_5

    .line 1985
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    move v5, v3

    .line 1972
    .end local v3    # "matchEnd":I
    :cond_2
    if-ge v5, v0, :cond_4

    .line 1974
    :goto_0
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ge v5, v0, :cond_3

    .line 1976
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1978
    :cond_3
    if-ne v5, v0, :cond_1

    .line 1997
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 1998
    .local v4, "result":[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1999
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v1

    .line 1998
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1990
    .end local v1    # "i":I
    .end local v4    # "result":[I
    .restart local v3    # "matchEnd":I
    :cond_5
    :goto_2
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    if-ge v5, v0, :cond_2

    .line 1992
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private getCalendarIdByEventId(Landroid/content/ContentResolver;J)J
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "id"    # J

    .prologue
    .line 473
    const/4 v6, 0x0

    .line 475
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 477
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    .line 475
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 478
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 484
    if-eqz v6, :cond_0

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    const/4 v6, 0x0

    .line 489
    :cond_0
    :goto_0
    return-wide v0

    .line 484
    :cond_1
    if-eqz v6, :cond_2

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    const/4 v6, 0x0

    .line 489
    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v7

    .line 482
    .local v7, "exception":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    if-eqz v6, :cond_2

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    const/4 v6, 0x0

    goto :goto_1

    .line 484
    .end local v7    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    const/4 v6, 0x0

    .line 488
    :cond_3
    throw v0
.end method

.method private getPendingIntent2CalendarAppWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3215
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3217
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3218
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3219
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntent2CalendarFactory(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3233
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3234
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3235
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3236
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3237
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntent2CalendarPressWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3224
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3225
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3226
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3227
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3228
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getQuaryoperation()V
    .locals 6

    .prologue
    .line 446
    :try_start_0
    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 459
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 450
    .local v2, "eventId":J
    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->getCalendarIdByEventId(Landroid/content/ContentResolver;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarId:J

    .line 452
    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    .line 453
    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/CalendarApplication;

    invoke-virtual {v4}, Lcn/nubia/calendar/CalendarApplication;->getUserModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->getBirthdayCalendarId()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mBirthdayId:J

    .line 454
    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateEventHandler:Landroid/os/Handler;

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 455
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "eventId":J
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResponseFromButtonId(I)I
    .locals 1
    .param p0, "buttonId"    # I

    .prologue
    .line 1514
    packed-switch p0, :pswitch_data_0

    .line 1525
    const/4 v0, 0x0

    .line 1527
    .local v0, "response":I
    :goto_0
    return v0

    .line 1516
    .end local v0    # "response":I
    :pswitch_0
    const/4 v0, 0x1

    .line 1517
    .restart local v0    # "response":I
    goto :goto_0

    .line 1519
    .end local v0    # "response":I
    :pswitch_1
    const/4 v0, 0x4

    .line 1520
    .restart local v0    # "response":I
    goto :goto_0

    .line 1522
    .end local v0    # "response":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1523
    .restart local v0    # "response":I
    goto :goto_0

    .line 1514
    nop

    :pswitch_data_0
    .packed-switch 0x7f110135
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAttendeesCursor(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 1136
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 1138
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 1140
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1142
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1143
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1144
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    .line 1148
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1149
    .local v6, "status":I
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    .line 1150
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1151
    .local v1, "name":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    .line 1152
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, "email":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 1159
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_1

    .line 1160
    const v0, 0x7f11017b

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1162
    const v0, 0x7f11013a

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1168
    :cond_1
    iget-wide v8, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 1169
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1170
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    .line 1171
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    iput-wide v8, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 1172
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    .line 1173
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 1206
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1209
    invoke-direct {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->updateAttendees(Landroid/view/View;)V

    .line 1212
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v6    # "status":I
    :cond_2
    return-void

    .line 1175
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v6    # "status":I
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    .line 1176
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1177
    .local v4, "identity":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    .line 1178
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1184
    .local v5, "idNamespace":Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 1201
    :pswitch_0
    iget-object v7, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    :pswitch_1
    iget-object v7, p0, Lcn/nubia/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1191
    :pswitch_2
    iget-object v7, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1196
    :pswitch_3
    iget-object v7, p0, Lcn/nubia/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    const/4 v3, 0x4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initEventCursor()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1113
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v3, v2

    .line 1130
    :cond_1
    :goto_0
    return v3

    .line 1116
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1117
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    .line 1118
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "rRule":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsRepeating:Z

    .line 1120
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xe

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mHasAlarm:Z

    .line 1122
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mMaxReminders:I

    .line 1123
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x10

    .line 1124
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1126
    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const-string v4, "dtstart"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 1128
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const-string v4, "dtend"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    goto :goto_0

    :cond_3
    move v1, v3

    .line 1119
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1120
    goto :goto_2
.end method

.method public static linkifyTextView(Landroid/widget/TextView;)V
    .locals 23
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 2272
    const-string v20, "user.region"

    const-string v21, "US"

    invoke-static/range {v20 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2273
    .local v5, "defaultPhoneRegion":Ljava/lang/String;
    const-string v20, "US"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 2274
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v10

    .line 2294
    .local v10, "linkifyFoundLinks":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    .line 2295
    .local v19, "text":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcn/nubia/calendar/EventInfoFragment;->findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I

    move-result-object v14

    .line 2305
    .local v14, "phoneSequences":[I
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/SpannableString;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v17, v19

    .line 2306
    check-cast v17, Landroid/text/SpannableString;

    .line 2315
    .local v17, "spanText":Landroid/text/Spannable;
    :goto_1
    const/16 v20, 0x0

    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v21

    const-class v22, Landroid/text/style/URLSpan;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 2321
    .local v8, "existingSpans":[Landroid/text/style/URLSpan;
    const/4 v13, 0x0

    .line 2322
    .local v13, "phoneCount":I
    const/4 v11, 0x0

    .local v11, "match":I
    :goto_2
    array-length v0, v14

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 2323
    mul-int/lit8 v20, v11, 0x2

    aget v18, v14, v20

    .line 2324
    .local v18, "start":I
    mul-int/lit8 v20, v11, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v7, v14, v20

    .line 2326
    .local v7, "end":I
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v8, v1, v7}, Lcn/nubia/calendar/EventInfoFragment;->spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 2327
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2328
    .local v15, "seq":Ljava/lang/CharSequence;
    const-string v20, "EventInfoFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Not linkifying "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " as phone number due to overlap"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/calendar/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    .end local v15    # "seq":Ljava/lang/CharSequence;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2308
    .end local v7    # "end":I
    .end local v8    # "existingSpans":[Landroid/text/style/URLSpan;
    .end local v11    # "match":I
    .end local v13    # "phoneCount":I
    .end local v17    # "spanText":Landroid/text/Spannable;
    .end local v18    # "start":I
    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v17

    .restart local v17    # "spanText":Landroid/text/Spannable;
    goto :goto_1

    .line 2342
    .restart local v7    # "end":I
    .restart local v8    # "existingSpans":[Landroid/text/style/URLSpan;
    .restart local v11    # "match":I
    .restart local v13    # "phoneCount":I
    .restart local v18    # "start":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2343
    .local v6, "dialBuilder":Ljava/lang/StringBuilder;
    move/from16 v9, v18

    .local v9, "i":I
    :goto_4
    if-ge v9, v7, :cond_6

    .line 2344
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    .line 2345
    .local v4, "ch":C
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v4, v0, :cond_4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2346
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2343
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2349
    .end local v4    # "ch":C
    :cond_6
    new-instance v16, Landroid/text/style/URLSpan;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "tel:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 2351
    .local v16, "span":Landroid/text/style/URLSpan;
    const/16 v20, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2352
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2355
    .end local v6    # "dialBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "end":I
    .end local v9    # "i":I
    .end local v16    # "span":Landroid/text/style/URLSpan;
    .end local v18    # "start":I
    :cond_7
    if-eqz v13, :cond_a

    .line 2358
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 2359
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2366
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v12

    .line 2368
    .local v12, "mm":Landroid/text/method/MovementMethod;
    if-eqz v12, :cond_9

    instance-of v0, v12, Landroid/text/method/LinkMovementMethod;

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 2369
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2370
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2375
    .end local v12    # "mm":Landroid/text/method/MovementMethod;
    :cond_a
    if-nez v10, :cond_0

    if-nez v13, :cond_0

    .line 2376
    const-string v20, "EventInfoFragment"

    const-string v21, "No linkification matches, using geo default"

    invoke-static/range {v20 .. v21}, Lcn/nubia/calendar/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    sget-object v20, Lcn/nubia/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    const-string v21, "geo:0,0?q="

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto/16 :goto_0
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
    .line 3179
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 3180
    .local v3, "vals":[I
    array-length v2, v3

    .line 3181
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3183
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3184
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3187
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
    .line 3194
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3195
    .local v0, "labels":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3196
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private static openBrowse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 2191
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2192
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2195
    .local v3, "search":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.baidu.com/s?wd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&cl=3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2197
    .local v0, "contentUrl":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2198
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .end local v0    # "contentUrl":Landroid/net/Uri;
    .end local v3    # "search":Ljava/lang/String;
    :goto_0
    return-void

    .line 2199
    :catch_0
    move-exception v1

    .line 2201
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized prepareReminders()V
    .locals 4

    .prologue
    .line 3023
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 3059
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3038
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3039
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a0036

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 3041
    const v1, 0x7f0a000b

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 3043
    const v1, 0x7f0a0033

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 3045
    const v1, 0x7f0a000a

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 3052
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3053
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3056
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3057
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3023
    .end local v0    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private saveResponse()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1423
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 1466
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f110134

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1430
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 1429
    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v6

    .line 1431
    .local v6, "status":I
    if-eqz v6, :cond_0

    .line 1436
    iget v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    if-eq v6, v2, :cond_0

    .line 1441
    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1445
    iget-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v2, :cond_2

    .line 1447
    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v1, v8

    .line 1448
    goto :goto_0

    .line 1452
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEditResponseHelper:Lcn/nubia/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcn/nubia/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v7

    .line 1453
    .local v7, "whichEvents":I
    packed-switch v7, :pswitch_data_0

    .line 1463
    const-string v2, "EventInfoFragment"

    const-string v3, "Unexpected choice for updating invitation response"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    :pswitch_1
    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-direct {p0, v2, v3, v6}, Lcn/nubia/calendar/EventInfoFragment;->createExceptionResponse(JI)V

    move v1, v8

    .line 1458
    goto :goto_0

    .line 1460
    :pswitch_2
    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v1, v8

    .line 1461
    goto :goto_0

    .line 1453
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static searchInfoByAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 2016
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    invoke-static {p0, p1}, Lcn/nubia/calendar/EventInfoFragment;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 2025
    :goto_0
    return-void

    .line 2021
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2019
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendAccessibilityEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2404
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "accessibility"

    .line 2405
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2406
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2410
    :cond_0
    const/16 v5, 0x8

    .line 2411
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2412
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2413
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2414
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    .line 2415
    .local v4, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v7}, Lcn/nubia/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcn/nubia/calendar/ui_component/view/ExpandableTextView;)V

    .line 2416
    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v7}, Lcn/nubia/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcn/nubia/calendar/ui_component/view/ExpandableTextView;)V

    .line 2417
    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v7}, Lcn/nubia/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcn/nubia/calendar/ui_component/view/ExpandableTextView;)V

    .line 2418
    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mDesc:Lcn/nubia/calendar/ui_component/view/ExpandableTextView;

    invoke-direct {p0, v4, v7, v5}, Lcn/nubia/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcn/nubia/calendar/ui_component/view/ExpandableTextView;)V

    .line 2420
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f110134

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 2422
    .local v3, "response":Landroid/widget/RadioGroup;
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 2423
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 2424
    .local v2, "id":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 2425
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f110133

    .line 2426
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 2425
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2431
    .end local v2    # "id":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0
.end method

.method private sendAccessibilityEventIfQueryDone(I)V
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 658
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 659
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCurrentQuery:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 660
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->sendAccessibilityEvent()V

    .line 662
    :cond_0
    return-void
.end method

.method private setDialogSize(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 3266
    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->mDialogWidth:I

    .line 3267
    const v0, 0x7f090009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/EventInfoFragment;->mDialogHeight:I

    .line 3268
    return-void
.end method

.method private setEventPicture(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2125
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2126
    .local v6, "eventId":I
    sget-object v2, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 2127
    .local v2, "customUri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    int-to-long v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 2128
    .local v4, "cusWhereArgs":[Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "image_path"

    aput-object v0, v3, v7

    .line 2129
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2130
    .local v5, "image":Landroid/widget/ImageView;
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/EventInfoFragment$15;-><init>(Lcn/nubia/calendar/EventInfoFragment;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2161
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2786
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2787
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 2794
    :goto_0
    return-void

    .line 2789
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2790
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->LeapFlag:Z

    .line 2791
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2793
    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 2797
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2798
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2799
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2801
    :cond_0
    return-void
.end method

.method private shareWithApplications()V
    .locals 4

    .prologue
    .line 1305
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v2, v3}, Lcn/nubia/calendar/util/Utils;->shareAgendaByChooser(Landroid/content/Context;J)V

    .line 1306
    return-void
.end method

.method private showCtsWarningDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "permissionInCtsDialog"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1029
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1030
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030047

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1032
    .local v1, "layout":Landroid/widget/RelativeLayout;
    const v3, 0x7f1100c3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1033
    .local v2, "msg":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 1035
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1036
    iput-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1038
    :cond_0
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1039
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 1040
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/EventInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/calendar/EventInfoFragment$10;

    invoke-direct {v5, p0}, Lcn/nubia/calendar/EventInfoFragment$10;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0140

    .line 1048
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/EventInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/calendar/EventInfoFragment$9;

    invoke-direct {v5, p0}, Lcn/nubia/calendar/EventInfoFragment$9;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    .line 1058
    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1059
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 1060
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1061
    return-void
.end method

.method private static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 2035
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2036
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v1, 0x7f0a0012

    new-instance v2, Lcn/nubia/calendar/EventInfoFragment$14;

    invoke-direct {v2, p0, p1}, Lcn/nubia/calendar/EventInfoFragment$14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 2050
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 2051
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "showWritePermission":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/calendar/EventInfoFragment;->showCtsWarningDialog(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method private showRepeatsDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2982
    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    if-eqz v3, :cond_1

    .line 2983
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabel:[Ljava/lang/CharSequence;

    .line 2989
    :goto_0
    const/4 v2, 0x0

    .line 2990
    .local v2, "reminderValue":[Ljava/lang/CharSequence;
    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 2991
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabel:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 2992
    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabel:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2994
    iput v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mSelectedFruitIndex:I

    .line 2991
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2986
    .end local v1    # "i":I
    .end local v2    # "reminderValue":[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabel:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 2998
    .restart local v2    # "reminderValue":[Ljava/lang/CharSequence;
    :cond_2
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabel:[Ljava/lang/CharSequence;

    iget v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mSelectedFruitIndex:I

    new-instance v6, Lcn/nubia/calendar/EventInfoFragment$19;

    invoke-direct {v6, p0}, Lcn/nubia/calendar/EventInfoFragment$19;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    .line 2999
    invoke-virtual {v3, v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 3015
    invoke-virtual {v3, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    .line 3016
    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 3017
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 3018
    return-void
.end method

.method private static spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z
    .locals 6
    .param p0, "spanText"    # Landroid/text/Spannable;
    .param p1, "spanList"    # [Landroid/text/style/URLSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 2387
    if-ne p2, p3, :cond_1

    .line 2400
    :cond_0
    :goto_0
    return v3

    .line 2391
    :cond_1
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, p1, v4

    .line 2392
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2393
    .local v1, "existingStart":I
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2394
    .local v0, "existingEnd":I
    if-lt p2, v1, :cond_2

    if-lt p2, v0, :cond_3

    :cond_2
    if-le p3, v1, :cond_4

    if-gt p3, v0, :cond_4

    .line 2396
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 2391
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private updateAttendees(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2559
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->updateEmailAttendees()V

    .line 2560
    return-void
.end method

.method private updateCalendar(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2455
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2456
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 2457
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2458
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    .line 2459
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2460
    .local v11, "tempAccount":Ljava/lang/String;
    if-nez v11, :cond_0

    const-string v11, ""

    .end local v11    # "tempAccount":Ljava/lang/String;
    :cond_0
    iput-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2463
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    const-string v1, "nobody@gmail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDefaultAccount:Z

    .line 2469
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    .line 2470
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    .line 2471
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    .line 2472
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    .line 2474
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    .line 2475
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2478
    .local v10, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_displayName=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xd

    .line 2484
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    .line 2485
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    .line 2486
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    .line 2488
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    const-string v1, "calendar.google.com"

    .line 2490
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2491
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 2494
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2495
    const v0, 0x7f11013a

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2496
    const v0, 0x7f11017b

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2501
    :goto_2
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    .line 2502
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHasAttendeeData:Z

    .line 2503
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    .line 2505
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyEvent:Z

    .line 2506
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    .line 2507
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->updateMenu()V

    .line 2508
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_2

    .line 2510
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2511
    .local v8, "b":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2512
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$18;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$18;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2533
    .end local v8    # "b":Landroid/view/View;
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_3

    .line 2534
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2535
    .local v9, "button":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 2536
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2537
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2540
    .end local v9    # "button":Landroid/view/View;
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyEvent:Z

    if-eqz v0, :cond_4

    .line 2541
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2542
    .restart local v9    # "button":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 2543
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2544
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2548
    .end local v9    # "button":Landroid/view/View;
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_7

    .line 2550
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2556
    .end local v10    # "displayName":Ljava/lang/String;
    :cond_7
    :goto_7
    return-void

    .line 2466
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDefaultAccount:Z

    goto/16 :goto_0

    .line 2470
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2499
    .restart local v10    # "displayName":Ljava/lang/String;
    :cond_a
    const v0, 0x7f11017b

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_2

    .line 2502
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2503
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 2505
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 2506
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 2553
    .end local v10    # "displayName":Ljava/lang/String;
    :cond_f
    const v0, 0x7f1100d8

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2554
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcn/nubia/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    goto :goto_7
.end method

.method private updateCustomAppButton()V
    .locals 15

    .prologue
    .line 1870
    iget-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v12, 0x7f110180

    .line 1871
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1872
    .local v8, "launchButton":Landroid/widget/Button;
    if-nez v8, :cond_1

    .line 1944
    :cond_0
    :goto_0
    iget-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v12, 0x7f11017f

    const/16 v13, 0x8

    invoke-direct {p0, v11, v12, v13}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1945
    :goto_1
    return-void

    .line 1875
    :cond_1
    iget-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v12, 0x11

    .line 1876
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1877
    .local v0, "customAppPackage":Ljava/lang/String;
    iget-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v12, 0x12

    .line 1878
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1880
    .local v1, "customAppUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1881
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1884
    iget-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1885
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_0

    .line 1890
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9, v0, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1891
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 1897
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1898
    .local v10, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

    invoke-direct {v6, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1900
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1901
    const-string v11, "customAppUri"

    invoke-virtual {v6, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1902
    const-string v11, "beginTime"

    iget-wide v12, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1905
    const/4 v11, 0x0

    invoke-virtual {v9, v6, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1908
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1909
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 1911
    invoke-virtual {v8}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1912
    .local v2, "d":[Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcn/nubia/calendar/EventInfoFragment;->mCustomAppIconSize:I

    sget v14, Lcn/nubia/calendar/EventInfoFragment;->mCustomAppIconSize:I

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1913
    const/4 v11, 0x1

    aget-object v11, v2, v11

    const/4 v12, 0x2

    aget-object v12, v2, v12

    const/4 v13, 0x3

    aget-object v13, v2, v13

    invoke-virtual {v8, v4, v11, v12, v13}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1916
    .end local v2    # "d":[Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1917
    .local v7, "label":Ljava/lang/CharSequence;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_4

    .line 1918
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1925
    :cond_3
    new-instance v11, Lcn/nubia/calendar/EventInfoFragment$13;

    invoke-direct {v11, p0, v6}, Lcn/nubia/calendar/EventInfoFragment$13;-><init>(Lcn/nubia/calendar/EventInfoFragment;Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1938
    iget-object v11, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v12, 0x7f11017f

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 1893
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "label":Ljava/lang/CharSequence;
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1894
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 1919
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "label":Ljava/lang/CharSequence;
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_4
    if-nez v4, :cond_3

    goto/16 :goto_0
.end method

.method private updateEmailAttendees()V
    .locals 4

    .prologue
    .line 2568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 2569
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 2570
    .local v0, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 2572
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 2573
    .restart local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 2575
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 2576
    .restart local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    .line 2578
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 2579
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 2580
    .restart local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_3

    .line 2586
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :cond_3
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    .line 2587
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    .line 2588
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2589
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcn/nubia/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2596
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2597
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2598
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2607
    :cond_5
    return-void
.end method

.method private updateEvent(Landroid/view/View;)V
    .locals 49
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 1588
    .local v12, "context":Landroid/content/Context;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 1592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1593
    .local v30, "eventName":Ljava/lang/String;
    if-eqz v30, :cond_2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1594
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c005c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1597
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x13

    .line 1599
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1600
    .local v24, "birthdayName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1601
    .local v36, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1602
    .local v27, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1603
    .local v41, "rRule":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    .line 1604
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1605
    .local v33, "eventTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x13

    .line 1606
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1607
    .local v18, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x14

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1608
    .local v19, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x16

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1609
    .local v42, "rdate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 1610
    .local v32, "eventStartTime":Ljava/lang/Long;
    const/16 v16, 0x0

    .line 1611
    .local v16, "LunarBirthdayFlag":Z
    if-eqz v18, :cond_8

    .line 1612
    const-string v4, "My Calendar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1613
    const v4, 0x7f0c0189

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1615
    :cond_4
    const-string v4, "Birthday"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 1616
    if-nez v41, :cond_5

    .line 1617
    const/16 v16, 0x1

    .line 1619
    :cond_5
    const v4, 0x7f0c0187

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1621
    :cond_6
    const-string v4, "Contact Birthday"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1622
    const v4, 0x7f0c0187

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1624
    :cond_7
    const v4, 0x7f1100ed

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1626
    :cond_8
    const v4, 0x7f110182

    .line 1627
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1628
    .local v17, "accountColor":Landroid/widget/ImageView;
    if-eqz v17, :cond_9

    .line 1629
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/EventInfoFragment;->getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1639
    :cond_9
    if-eqz v30, :cond_12

    .line 1640
    const v4, 0x7f11004b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v4, v2}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1647
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    .line 1649
    .local v10, "localTimezone":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    .line 1652
    .local v44, "resources":Landroid/content/res/Resources;
    const/16 v28, 0x0

    .line 1653
    .local v28, "displayedDatetime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->currentLanguage:Ljava/lang/String;

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1654
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->LeapFlag:Z

    if-nez v4, :cond_a

    if-eqz v16, :cond_16

    .line 1655
    :cond_a
    invoke-static {v12}, Lcn/nubia/commonui/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 1656
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1657
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v4, :cond_13

    .line 1658
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 1660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/EventInfoFragment;->yearStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/EventInfoFragment;->monthStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/EventInfoFragment;->weekStr:Ljava/lang/String;

    .line 1658
    invoke-static/range {v4 .. v15}, Lcn/nubia/calendar/util/Utils;->getDisplayedLunorDatetime(JJJLjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1698
    :goto_3
    const/16 v29, 0x0

    .line 1699
    .local v29, "displayedTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    if-nez v4, :cond_b

    .line 1700
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, v33

    invoke-static {v4, v5, v10, v0}, Lcn/nubia/calendar/util/Utils;->getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1704
    :cond_b
    if-nez v29, :cond_1a

    .line 1705
    if-nez v28, :cond_18

    .line 1706
    const v4, 0x7f110172

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1732
    :goto_4
    const/16 v43, 0x0

    .line 1733
    .local v43, "repeatString":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v35

    .line 1734
    .local v35, "localLanguage":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1735
    new-instance v31, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct/range {v31 .. v31}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 1736
    .local v31, "eventRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1737
    new-instance v25, Landroid/text/format/Time;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v25, "date":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1739
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v4, :cond_c

    .line 1740
    const-string v4, "UTC"

    move-object/from16 v0, v25

    iput-object v4, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1742
    :cond_c
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-static {v0, v1, v4}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcn/nubia/calendarcommon2/EventRecurrence;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    .line 1754
    .end local v25    # "date":Landroid/text/format/Time;
    .end local v31    # "eventRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    :cond_d
    :goto_5
    if-nez v43, :cond_1e

    .line 1755
    const v4, 0x7f110175

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1765
    :goto_6
    if-eqz v36, :cond_e

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mBirthdayId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1f

    .line 1768
    :cond_e
    const v4, 0x7f110178

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1818
    :cond_f
    :goto_7
    if-eqz v27, :cond_20

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    .line 1820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mDesc:Lcn/nubia/calendar/ui_component/view/ExpandableTextView;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->setText(Ljava/lang/String;)V

    .line 1864
    :cond_10
    :goto_8
    const v4, 0x7f11017a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcn/nubia/calendar/EventInfoFragment;->setEventPicture(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1597
    .end local v10    # "localTimezone":Ljava/lang/String;
    .end local v16    # "LunarBirthdayFlag":Z
    .end local v17    # "accountColor":Landroid/widget/ImageView;
    .end local v18    # "accountName":Ljava/lang/String;
    .end local v19    # "accountType":Ljava/lang/String;
    .end local v24    # "birthdayName":Ljava/lang/String;
    .end local v27    # "description":Ljava/lang/String;
    .end local v28    # "displayedDatetime":Ljava/lang/String;
    .end local v29    # "displayedTimezone":Ljava/lang/String;
    .end local v32    # "eventStartTime":Ljava/lang/Long;
    .end local v33    # "eventTimezone":Ljava/lang/String;
    .end local v35    # "localLanguage":Ljava/lang/String;
    .end local v36    # "location":Ljava/lang/String;
    .end local v41    # "rRule":Ljava/lang/String;
    .end local v42    # "rdate":Ljava/lang/String;
    .end local v43    # "repeatString":Ljava/lang/String;
    .end local v44    # "resources":Landroid/content/res/Resources;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1642
    .restart local v16    # "LunarBirthdayFlag":Z
    .restart local v17    # "accountColor":Landroid/widget/ImageView;
    .restart local v18    # "accountName":Ljava/lang/String;
    .restart local v19    # "accountType":Ljava/lang/String;
    .restart local v24    # "birthdayName":Ljava/lang/String;
    .restart local v27    # "description":Ljava/lang/String;
    .restart local v32    # "eventStartTime":Ljava/lang/Long;
    .restart local v33    # "eventTimezone":Ljava/lang/String;
    .restart local v36    # "location":Ljava/lang/String;
    .restart local v41    # "rRule":Ljava/lang/String;
    .restart local v42    # "rdate":Ljava/lang/String;
    :cond_12
    const v4, 0x7f11004b

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_2

    .line 1663
    .restart local v10    # "localTimezone":Ljava/lang/String;
    .restart local v28    # "displayedDatetime":Ljava/lang/String;
    .restart local v44    # "resources":Landroid/content/res/Resources;
    :cond_13
    const/16 v26, 0x0

    .line 1664
    .local v26, "datetimeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 1665
    move-object/from16 v0, v42

    invoke-static {v4, v5, v0}, Lcn/nubia/calendar/util/Utils;->setLunarMillis(JLjava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 1666
    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1667
    const-string v26, "HH:mm"

    .line 1671
    :goto_9
    new-instance v25, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1672
    .local v25, "date":Ljava/util/Date;
    new-instance v34, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v34, "formatter1":Ljava/text/SimpleDateFormat;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 1676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/EventInfoFragment;->yearStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/EventInfoFragment;->monthStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/EventInfoFragment;->weekStr:Ljava/lang/String;

    .line 1674
    invoke-static/range {v4 .. v15}, Lcn/nubia/calendar/util/Utils;->getDisplayedLunorDatetime(JJJLjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1678
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1679
    goto/16 :goto_3

    .line 1669
    .end local v25    # "date":Ljava/util/Date;
    .end local v34    # "formatter1":Ljava/text/SimpleDateFormat;
    :cond_14
    const-string v26, "aaa hh:mm"

    goto :goto_9

    .line 1681
    .end local v26    # "datetimeStr":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    .line 1683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/EventInfoFragment;->yearStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/EventInfoFragment;->monthStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/EventInfoFragment;->weekStr:Ljava/lang/String;

    .line 1681
    invoke-static/range {v4 .. v15}, Lcn/nubia/calendar/util/Utils;->getDisplayedLunorDatetime(JJJLjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_3

    .line 1687
    :cond_16
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    .line 1688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    .line 1687
    invoke-static/range {v4 .. v12}, Lcn/nubia/calendar/util/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_3

    .line 1693
    :cond_17
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    .line 1694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    .line 1693
    invoke-static/range {v4 .. v12}, Lcn/nubia/calendar/util/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_3

    .line 1709
    .restart local v29    # "displayedTimezone":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->LeapFlag:Z

    if-eqz v4, :cond_19

    .line 1710
    const v4, 0x7f110174

    .line 1711
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 1712
    .local v45, "textView":Landroid/widget/TextView;
    if-eqz v45, :cond_0

    .line 1714
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1716
    .end local v45    # "textView":Landroid/widget/TextView;
    :cond_19
    const v4, 0x7f110174

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1721
    :cond_1a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v46

    .line 1723
    .local v46, "timezoneIndex":I
    if-nez v28, :cond_1b

    .line 1724
    const v4, 0x7f110172

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 1727
    :cond_1b
    const v4, 0x7f110174

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1745
    .end local v46    # "timezoneIndex":I
    .restart local v35    # "localLanguage":Ljava/lang/String;
    .restart local v43    # "repeatString":Ljava/lang/String;
    :cond_1c
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "zh"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1746
    if-eqz v24, :cond_1d

    const-string v4, "Contact Birthday"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1748
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1747
    invoke-static {v12, v4, v5}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->getBirthdayRepeatString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_5

    .line 1751
    :cond_1d
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1750
    move-object/from16 v0, v42

    invoke-static {v12, v0, v4, v5}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->getLunarRepeatString(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_5

    .line 1757
    :cond_1e
    const v4, 0x7f110177

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v4, v2}, Lcn/nubia/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1770
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    move-object/from16 v45, v0

    .line 1771
    .restart local v45    # "textView":Landroid/widget/TextView;
    if-eqz v45, :cond_f

    .line 1781
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1821
    .end local v45    # "textView":Landroid/widget/TextView;
    :cond_20
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mBirthdayId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    .line 1822
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    .line 1823
    new-instance v21, Landroid/text/format/Time;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1829
    .local v21, "birthTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    .line 1830
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1829
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1831
    .local v22, "birthTimeInEventsCursor":Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 1833
    .local v38, "nowTimeMillis":J
    new-instance v37, Landroid/text/format/Time;

    move-object/from16 v0, v37

    invoke-direct {v0, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1834
    .local v37, "nowTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1835
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 1837
    .local v47, "title":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    .line 1839
    .local v23, "birthTimeYear":I
    const/16 v40, 0x0

    .line 1840
    .local v40, "oldYear":I
    const/16 v4, 0x7b2

    move/from16 v0, v23

    if-ne v4, v0, :cond_21

    sget v4, Lcn/nubia/calendar/HomeActivity;->age:I

    if-eqz v4, :cond_21

    .line 1841
    sget v40, Lcn/nubia/calendar/HomeActivity;->age:I

    .line 1847
    :goto_a
    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    .line 1848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    .line 1850
    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c012d

    .line 1852
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/EventInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1853
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1851
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1861
    .local v20, "birthDescription":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mDesc:Lcn/nubia/calendar/ui_component/view/ExpandableTextView;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1843
    .end local v20    # "birthDescription":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, v37

    iget v4, v0, Landroid/text/format/Time;->year:I

    sub-int v40, v4, v23

    goto :goto_a

    .line 1855
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c012d

    .line 1858
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/EventInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1859
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1857
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "birthDescription":Ljava/lang/String;
    goto :goto_b
.end method

.method private updateMenu()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->menuContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyEvent:Z

    if-eqz v0, :cond_2

    .line 1070
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->menuContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1072
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->menuContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateResponse(JJI)V
    .locals 11
    .param p1, "eventId"    # J
    .param p3, "attendeeId"    # J
    .param p5, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 1472
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1474
    .local v5, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    const-string v0, "attendeeEmail"

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_0
    const-string v0, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1478
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1480
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1482
    .local v4, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v0}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->getNextToken()I

    move-result v2

    const-wide/16 v8, 0x0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 1484
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1098
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0041

    .line 1100
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1099
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public eventsChanged()V
    .locals 0

    .prologue
    .line 2896
    return-void
.end method

.method public getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, "id":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1563
    const/4 v1, 0x0

    .line 1580
    :goto_0
    return v1

    .line 1566
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1567
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0189

    .line 1568
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1569
    const v0, 0x7f020087

    :cond_1
    :goto_1
    move v1, v0

    .line 1580
    goto :goto_0

    .line 1571
    :cond_2
    const v0, 0x7f020086

    goto :goto_1

    .line 1573
    :cond_3
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1574
    const v0, 0x7f020090

    goto :goto_1

    .line 1575
    :cond_4
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1576
    const v0, 0x7f020091

    goto :goto_1

    .line 1577
    :cond_5
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1578
    const v0, 0x7f020098

    goto :goto_1
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 3262
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 3254
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 3258
    iget-wide v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 2900
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 2905
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 2907
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->reloadEvents()V

    .line 2909
    :cond_0
    return-void
.end method

.method public initReminders(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2614
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2615
    const/4 v4, 0x1

    .line 2616
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2617
    .local v20, "minutes":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2620
    .local v19, "method":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    move/from16 v0, v20

    invoke-static {v4, v6, v7, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->queryReminderPhoneNumbers(Landroid/app/Activity;JI)Ljava/lang/String;

    move-result-object v23

    .line 2624
    .local v23, "phones":Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 2625
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2628
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    move/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(IILjava/lang/String;)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2632
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2637
    :cond_1
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(IILjava/lang/String;)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2641
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2648
    .end local v19    # "method":I
    .end local v20    # "minutes":I
    .end local v23    # "phones":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2650
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    if-eqz v4, :cond_4

    .line 2743
    :goto_1
    return-void

    .line 2656
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v5, 0x7f110143

    .line 2657
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 2658
    .local v22, "parent":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_5

    .line 2659
    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2661
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 2662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2665
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eqz v4, :cond_e

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 2669
    .local v26, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2670
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v4, :cond_c

    .line 2671
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2673
    .local v21, "myReminderMinuteLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    if-eqz v4, :cond_7

    .line 2674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 2675
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001c

    .line 2676
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v25

    .line 2684
    .local v25, "reminderMethodLabel":[Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v18, v0

    .line 2685
    .local v18, "len":I
    if-lez v18, :cond_9

    .line 2686
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 2687
    aget-object v4, v25, v17

    .line 2688
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2687
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2679
    .end local v17    # "i":I
    .end local v18    # "len":I
    .end local v25    # "reminderMethodLabel":[Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001b

    .line 2680
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "reminderMethodLabel":[Ljava/lang/CharSequence;
    goto :goto_2

    .line 2690
    .restart local v17    # "i":I
    .restart local v18    # "len":I
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2691
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    if-eqz v4, :cond_b

    .line 2692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 2693
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0034

    .line 2692
    invoke-static {v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 2714
    .end local v17    # "i":I
    .end local v18    # "len":I
    .end local v21    # "myReminderMinuteLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "reminderMethodLabel":[Ljava/lang/CharSequence;
    :cond_9
    :goto_4
    if-eqz v26, :cond_a

    .line 2715
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 2716
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mAllDayOfBirthday:Z

    if-eqz v4, :cond_d

    .line 2719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 2722
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    const v13, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcn/nubia/calendar/EventInfoFragment;->mIsDefaultAccount:Z

    const/16 v16, 0x1

    move-object/from16 v6, p0

    .line 2719
    invoke-static/range {v4 .. v16}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;ZZ)Z

    .line 2737
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 2696
    .restart local v17    # "i":I
    .restart local v18    # "len":I
    .restart local v21    # "myReminderMinuteLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "reminderMethodLabel":[Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 2697
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0035

    .line 2696
    invoke-static {v4, v5}, Lcn/nubia/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    goto :goto_4

    .line 2702
    .end local v17    # "i":I
    .end local v18    # "len":I
    .end local v21    # "myReminderMinuteLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "reminderMethodLabel":[Ljava/lang/CharSequence;
    :cond_c
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 2703
    .local v24, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2705
    invoke-virtual/range {v24 .. v24}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v8

    .line 2703
    invoke-static {v5, v6, v7, v8}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_6

    .line 2727
    .end local v24    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 2730
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    const v13, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcn/nubia/calendar/EventInfoFragment;->mIsDefaultAccount:Z

    const/16 v16, 0x1

    move-object/from16 v6, p0

    .line 2727
    invoke-static/range {v4 .. v16}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;ZZ)Z

    goto :goto_5

    .line 2741
    .end local v26    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    :cond_e
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 730
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 732
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$4;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 750
    if-eqz p1, :cond_0

    .line 751
    const-string v0, "key_fragment_is_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    .line 753
    const-string v0, "key_window_style"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    .line 757
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_1

    .line 758
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->applyDialogParams()V

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    .line 761
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 3063
    if-ne p2, v4, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3065
    const-string v0, "reminder_time_name"

    .line 3066
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3067
    .local v8, "label":Ljava/lang/String;
    const-string v0, "reminder_time_index"

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 3069
    .local v7, "index":I
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3070
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3072
    :cond_0
    sput v7, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 3074
    .end local v7    # "index":I
    .end local v8    # "label":Ljava/lang/String;
    :cond_1
    add-int/lit16 v0, p1, -0x7d0

    if-ltz v0, :cond_2

    .line 3075
    if-ne p2, v4, :cond_2

    .line 3076
    if-eqz p3, :cond_2

    .line 3078
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3079
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 3080
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3082
    .local v6, "cur":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3083
    const-string v0, "data1"

    .line 3084
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 3083
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3085
    .local v9, "phone":Ljava/lang/String;
    add-int/lit16 v10, p1, -0x7d0

    .line 3087
    .local v10, "position":I
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 3088
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 3089
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3096
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v9    # "phone":Ljava/lang/String;
    .end local v10    # "position":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3097
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 823
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 824
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 825
    new-instance v0, Lcn/nubia/calendar/EditResponseHelper;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEditResponseHelper:Lcn/nubia/calendar/EditResponseHelper;

    .line 827
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEditResponseHelper:Lcn/nubia/calendar/EditResponseHelper;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 830
    :cond_0
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    invoke-direct {v0, p0, p1}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;-><init>(Lcn/nubia/calendar/EventInfoFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    .line 831
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_1

    .line 832
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/EventInfoFragment;->setHasOptionsMenu(Z)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->alarmManager:Landroid/app/AlarmManager;

    .line 836
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 801
    invoke-static {p2}, Lcn/nubia/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 802
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 814
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEditResponseHelper:Lcn/nubia/calendar/EditResponseHelper;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEditResponseHelper:Lcn/nubia/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcn/nubia/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2919
    iget-boolean v6, p0, Lcn/nubia/calendar/EventInfoFragment;->canClickRemingd:Z

    if-nez v6, :cond_0

    .line 2978
    :goto_0
    return-void

    .line 2923
    :cond_0
    iget-object v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0007

    .line 2924
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2925
    .local v3, "reminderLabel":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0030

    .line 2926
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2931
    .local v4, "reminderValue":[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    const/4 v8, 0x0

    .line 2932
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    invoke-virtual {v6}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v6

    .line 2931
    invoke-static {v7, v6}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v1

    .line 2933
    .local v1, "index":I
    iget-boolean v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mAllDay:Z

    if-nez v6, :cond_5

    .line 2934
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2935
    .local v2, "intent":Landroid/content/Intent;
    sget v6, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    aget-object v5, v4, v6

    check-cast v5, Ljava/lang/String;

    .line 2936
    .local v5, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_2

    .line 2937
    aget-object v6, v4, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2938
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 2937
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2939
    aget-object v5, v4, v0

    .end local v5    # "value":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2936
    .restart local v5    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2942
    :cond_2
    sget-object v6, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 2943
    const/4 v0, 0x0

    :goto_2
    array-length v6, v4

    if-ge v0, v6, :cond_4

    .line 2944
    aget-object v6, v3, v0

    sget-object v7, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    .line 2946
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2945
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2947
    aget-object v5, v4, v0

    .end local v5    # "value":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2943
    .restart local v5    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2957
    :cond_4
    const-string v6, "reminder_time_value"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2958
    iget-object v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-class v7, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2959
    iget-object v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x4

    invoke-virtual {v6, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2962
    .end local v0    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v6}, Lcn/nubia/calendar/EventInfoFragment;->showRepeatsDialog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3273
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3274
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    .line 3275
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v4, 0x7f110160

    .line 3276
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 3277
    .local v2, "spinner":Landroid/widget/Spinner;
    if-eqz v2, :cond_0

    .line 3279
    :try_start_0
    const-class v3, Landroid/widget/Spinner;

    const-string v4, "dissmiss"

    const/4 v5, 0x0

    .line 3280
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3281
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3287
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "spinner":Landroid/widget/Spinner;
    :cond_0
    :goto_0
    return-void

    .line 3282
    .restart local v2    # "spinner":Landroid/widget/Spinner;
    :catch_0
    move-exception v0

    .line 3283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1230
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1231
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/calendar/HomeActivity;

    if-eqz v0, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_0

    .line 1237
    :cond_3
    const v0, 0x7f120002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1238
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 850
    if-eqz p3, :cond_0

    .line 851
    const-string v0, "key_fragment_is_dialog"

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    .line 853
    const-string v0, "key_window_style"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    .line 855
    const-string v0, "key_delete_dialog_visible"

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 860
    :cond_0
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    if-ne v0, v1, :cond_7

    .line 861
    const v0, 0x7f030054

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    .line 869
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f11016d

    .line 870
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 871
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f11016b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    .line 872
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f11004b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    .line 873
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f110174

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    .line 874
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f11008c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 875
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f11009f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDesc:Lcn/nubia/calendar/ui_component/view/ExpandableTextView;

    .line 876
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f11016e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    .line 881
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0f000d

    invoke-static {v0, v3}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsTabletConfig:Z

    .line 883
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 885
    const-string v0, "key_event_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    .line 886
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 887
    const-string v0, "key_start_millis"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    .line 888
    const-string v0, "key_end_millis"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    .line 891
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const-string v3, "Alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    .line 892
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 893
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcn/nubia/calendar/EventInfoFragment$5;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/EventInfoFragment$5;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 920
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 921
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setAlpha(F)V

    .line 922
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 930
    .local v8, "b":Landroid/view/View;
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment$6;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EventInfoFragment$6;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_4

    .line 951
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f11016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 952
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 956
    invoke-static {v0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 957
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "preferences_default_reminder"

    const-string v1, "-1"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 960
    .local v9, "defaultReminderString":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    .line 961
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->prepareReminders()V

    .line 964
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->edit_menu:Landroid/widget/TextView;

    .line 965
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->delete_menu:Landroid/widget/TextView;

    .line 968
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f110057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->menuContainer:Landroid/widget/LinearLayout;

    .line 976
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->edit_menu:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 977
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->edit_menu:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$7;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$7;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->delete_menu:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 999
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->delete_menu:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$8;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$8;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0

    .line 864
    .end local v8    # "b":Landroid/view/View;
    .end local v9    # "defaultReminderString":Ljava/lang/String;
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    const v0, 0x7f030053

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 891
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDeleteStarted()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x44c

    .line 3200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 3203
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    .line 3204
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->alarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcn/nubia/calendar/EventInfoFragment;->getPendingIntent2CalendarAppWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3205
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->alarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcn/nubia/calendar/EventInfoFragment;->getPendingIntent2CalendarPressWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3206
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->alarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcn/nubia/calendar/EventInfoFragment;->getPendingIntent2CalendarFactory(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3211
    :cond_0
    :goto_0
    return-void

    .line 3208
    :catch_0
    move-exception v0

    .line 3209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1386
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1392
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1393
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1395
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1396
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1400
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mUpdateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1402
    :cond_4
    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    .line 1403
    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 1404
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 1406
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->clickEditButtonAndIntoEditActivity:Z

    if-nez v0, :cond_5

    .line 1407
    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->cleanUp()V

    .line 1410
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 1411
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1412
    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1414
    :cond_6
    return-void
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 1366
    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "android.permission.WRITE_CALENDAR"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "android.permission.READ_CALENDAR"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 1367
    .local v1, "hasCalendarPermission":Z
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 1368
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->saveResponse()Z

    move-result v2

    .line 1370
    .local v2, "responseSaved":Z
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->saveReminders()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->resetReminders()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v2    # "responseSaved":Z
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 1380
    return-void

    .line 1366
    .end local v1    # "hasCalendarPermission":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1375
    .restart local v1    # "hasCalendarPermission":Z
    .restart local v2    # "responseSaved":Z
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 842
    iput-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    .line 843
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 844
    return-void
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
    .line 818
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    .line 1296
    :goto_0
    return v0

    .line 1257
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1296
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1260
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->saveReminders()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    if-nez v0, :cond_2

    .line 1261
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 1262
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1265
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1257
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsPaused:Z

    .line 2845
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2846
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 2852
    iget-boolean v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    if-eqz v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcn/nubia/calendar/DeleteEventHelper;->dismissAlertDialog()V

    .line 2854
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    .line 2857
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mSDCardObserverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2859
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 2863
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 2864
    iget-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v2, :cond_0

    .line 2865
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/calendar/EventInfoFragment;->setDialogSize(Landroid/content/res/Resources;)V

    .line 2866
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->applyDialogParams()V

    .line 2868
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsPaused:Z

    .line 2869
    iget-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mDismissOnResume:Z

    if-eqz v2, :cond_1

    .line 2870
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 2873
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v2, :cond_3

    .line 2874
    new-instance v2, Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-nez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {v2, v3, v4, v1}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    .line 2876
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2877
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteHelper:Lcn/nubia/calendar/DeleteEventHelper;

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v6, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    const/4 v8, -0x1

    iget-object v9, p0, Lcn/nubia/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    .line 2883
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2884
    .local v0, "sdCardFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2885
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2886
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2887
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2890
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mSDCardObserverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2892
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1216
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1217
    const-string v0, "key_event_id"

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1218
    const-string v0, "key_start_millis"

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1219
    const-string v0, "key_end_millis"

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1220
    const-string v0, "key_fragment_is_dialog"

    iget-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1221
    const-string v0, "key_window_style"

    iget v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mWindowStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1222
    const-string v0, "key_delete_dialog_visible"

    iget-boolean v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1224
    const-string v0, "key_attendee_response"

    iget v1, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    return-void
.end method

.method public reloadEvents()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2912
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment;->mHandler:Lcn/nubia/calendar/EventInfoFragment$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    return-void
.end method

.method public resetReminders()V
    .locals 5

    .prologue
    .line 1312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v1, "wrongFormatPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 1316
    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    .line 1317
    .local v0, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    iput-wide v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 1318
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    iput-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 1319
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarEventModel;->normalizeReminders()Z

    .line 1320
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcn/nubia/calendar/EventInfoFragment$12;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/EventInfoFragment$12;-><init>(Lcn/nubia/calendar/EventInfoFragment;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1360
    return-void
.end method

.method public saveReminders()Z
    .locals 22

    .prologue
    .line 3102
    new-instance v7, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3104
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3105
    .local v20, "wrongFormatPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3107
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3108
    .local v19, "size":I
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 3109
    .local v21, "wrongPhones":Ljava/lang/StringBuffer;
    if-lez v19, :cond_2

    .line 3110
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 3111
    add-int/lit8 v4, v19, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    .line 3112
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3110
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 3114
    :cond_0
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3117
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3119
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c0245

    .line 3121
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 3117
    invoke-static {v4, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3122
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3124
    const/4 v4, 0x0

    .line 3149
    .end local v18    # "i":I
    :goto_2
    return v4

    .line 3128
    :cond_2
    new-instance v5, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v5}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    .line 3129
    .local v5, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    iput-wide v8, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 3130
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    if-nez v4, :cond_3

    .line 3131
    const/4 v4, 0x0

    goto :goto_2

    .line 3136
    :cond_3
    new-instance v3, Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 3137
    .local v3, "service":Lcn/nubia/calendar/AsyncQueryService;
    const/4 v4, 0x0

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 3140
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcn/nubia/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 3143
    .local v12, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 3144
    .local v2, "hasAlarm":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eq v2, v4, :cond_4

    .line 3145
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 3146
    .local v13, "values":Landroid/content/ContentValues;
    const-string v6, "hasAlarm"

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3147
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v17}, Lcn/nubia/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 3149
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 3146
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public setDialogParams(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minTop"    # I

    .prologue
    .line 791
    iput p1, p0, Lcn/nubia/calendar/EventInfoFragment;->mX:I

    .line 792
    iput p2, p0, Lcn/nubia/calendar/EventInfoFragment;->mY:I

    .line 793
    iput p3, p0, Lcn/nubia/calendar/EventInfoFragment;->mMinTop:I

    .line 794
    return-void
.end method

.method public showContactInfo(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "attendee"    # Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x0

    .line 2810
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2811
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 2812
    .local v0, "address":Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 2813
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2812
    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2814
    .local v1, "dataUri":Landroid/net/Uri;
    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 2817
    .local v3, "lookupUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 2819
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, p2, v3, v9, v10}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 2840
    :goto_0
    return-void

    .line 2823
    :cond_0
    const-string v8, "mailto"

    invoke-static {v8, v0, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2824
    .local v4, "mailUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2828
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/text/util/Rfc822Token;

    iget-object v8, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    iget-object v9, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {v6, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    .local v6, "sender":Landroid/text/util/Rfc822Token;
    const-string v8, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2833
    iget-object v7, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 2834
    .local v7, "senderPersonal":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2835
    const-string v8, "name"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2838
    :cond_1
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/EventInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateResponse(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f11017c

    .line 2760
    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mHasAttendeeData:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mNumOfAttendees:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    if-nez v3, :cond_2

    .line 2763
    :cond_1
    const/16 v3, 0x8

    invoke-direct {p0, p1, v5, v3}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2783
    :goto_0
    return-void

    .line 2767
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v5, v3}, Lcn/nubia/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2770
    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserSetResponse:I

    if-eqz v3, :cond_3

    .line 2771
    iget v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 2778
    .local v2, "response":I
    :goto_1
    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    .line 2779
    .local v0, "buttonToCheck":I
    const v3, 0x7f110134

    .line 2780
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 2781
    .local v1, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 2782
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_0

    .line 2772
    .end local v0    # "buttonToCheck":I
    .end local v1    # "radioGroup":Landroid/widget/RadioGroup;
    .end local v2    # "response":I
    :cond_3
    iget v3, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v3, :cond_4

    .line 2773
    iget v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .restart local v2    # "response":I
    goto :goto_1

    .line 2775
    .end local v2    # "response":I
    :cond_4
    iget v2, p0, Lcn/nubia/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .restart local v2    # "response":I
    goto :goto_1
.end method
