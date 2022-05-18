.class public Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
.super Landroid/app/Service;
.source "DataBackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;
    }
.end annotation


# static fields
.field public static final ACCESS_LEVEL:Ljava/lang/String; = "access_level"

.field private static final ACTION:Ljava/lang/String; = "action"

.field public static final ALLDAY:Ljava/lang/String; = "allDay"

.field public static final ATTENDEE_CONTENT_URI:Ljava/lang/String; = "content://com.android.calendar/attendees"

.field public static final ATTENDEE_EMAIL:Ljava/lang/String; = "attendeeEmail"

.field public static final ATTENDEE_NAME:Ljava/lang/String; = "attendeeName"

.field public static final ATTENDEE_RELATIONSHIP:Ljava/lang/String; = "attendeeRelationship"

.field public static final ATTENDEE_STATUS:Ljava/lang/String; = "attendeeStatus"

.field public static final ATTENDEE_TYPE:Ljava/lang/String; = "attendeeType"

.field public static final ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field public static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field private static final BACKUP_DESCRIPT_FILE_NAME:Ljava/lang/String; = "descript.xml"

.field private static final BACKUP_FILE_NAME:Ljava/lang/String; = "calendar.xml"

.field static final CALENDARS_COLUMNS:[Ljava/lang/String;

.field public static final CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field public static CALENDAR_URI:Landroid/net/Uri; = null

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COMMENTSURI:Ljava/lang/String; = "commentsUri"

.field private static final CUSTOM_EVENT_CONTENT_URI:Ljava/lang/String; = "content://cn.nubia.calendar.provider.eventdata/event"

.field private static final CUSTOM_REMINDER_CONTENT_URI:Ljava/lang/String; = "content://cn.nubia.calendar.provider.eventdata/reminder"

.field private static final DATA:Ljava/lang/String; = "data"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DTEND:Ljava/lang/String; = "dtend"

.field public static final DTSTART:Ljava/lang/String; = "dtstart"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EVENTLOCATION:Ljava/lang/String; = "eventLocation"

.field public static final EVENTSTATUS:Ljava/lang/String; = "eventStatus"

.field private static EVENTS_COLUMNS:[Ljava/lang/String; = null

.field public static final EVENTTIMEZONE:Ljava/lang/String; = "eventTimezone"

.field public static EVENT_ID:Ljava/lang/String; = null

.field public static final EXDATE:Ljava/lang/String; = "exdate"

.field public static final EXRULE:Ljava/lang/String; = "exrule"

.field public static final GUESTSCANINVITEOTHERS:Ljava/lang/String; = "guestsCanInviteOthers"

.field public static final GUESTSCANMODIFY:Ljava/lang/String; = "guestsCanModify"

.field public static final GUESTSCANSEEGUESTS:Ljava/lang/String; = "guestsCanSeeGuests"

.field public static final HASALARM:Ljava/lang/String; = "hasAlarm"

.field public static final HASATTENDEEDATA:Ljava/lang/String; = "hasAttendeeData"

.field public static final HASEXTENDEDPROPERTIES:Ljava/lang/String; = "hasExtendedProperties"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final HTMLURI:Ljava/lang/String; = "htmlUri"

.field public static final KEY_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final LASTDATE:Ljava/lang/String; = "lastDate"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORGANIZER:Ljava/lang/String; = "organizer"

.field public static final ORIGINALALLDAY:Ljava/lang/String; = "originalAllDay"

.field public static final ORIGINALEVENT:Ljava/lang/String; = "originalEvent"

.field public static final ORIGINALINSTANCETIME:Ljava/lang/String; = "originalInstanceTime"

.field public static final OWNERACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final RDATE:Ljava/lang/String; = "rdate"

.field public static final REMINDER_CONTENT_URI:Ljava/lang/String; = "content://com.android.calendar/reminders"

.field private static final ROOT:Ljava/lang/String; = "root"

.field public static final RRULE:Ljava/lang/String; = "rrule"

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field public static final SELFATTENDEESTATUS:Ljava/lang/String; = "selfAttendeeStatus"

.field private static final SPACE:Ljava/lang/String; = ""

.field public static final SYNC_ACCOUNT_TYPE:Ljava/lang/String; = "_sync_account_type"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "_sync_dirty"

.field public static final SYNC_ID:Ljava/lang/String; = "_sync_id"

.field public static final SYNC_LOCAL_ID:Ljava/lang/String; = "_sync_local_id"

.field public static final SYNC_TIME:Ljava/lang/String; = "_sync_time"

.field public static final SYNC_VERSION:Ljava/lang/String; = "_sync_version"

.field private static final TAG:Ljava/lang/String; = "DataBackupService"

.field public static final TAG_DEVICE:Ljava/lang/String; = "device"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRANSPARENCY:Ljava/lang/String; = "transparency"

.field public static final URL:Ljava/lang/String; = "url"

.field private static final UTF_8:Ljava/lang/String; = "utf-8"

.field public static final VERSION:I = 0x1

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final attendeeColumns:[Ljava/lang/String;

.field private static final customEventColumns:[Ljava/lang/String;

.field private static final customReminderColumns:[Ljava/lang/String;

.field private static final reminderColumns:[Ljava/lang/String;


# instance fields
.field private attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private backupDataFile:Ljava/io/File;

.field private final calendarsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cvEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private cvReminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private isBackupCanceled:Z

.field private isRestoreCanceled:Z

.field private final mAddCalendarOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mAppBackupFilesDir:Ljava/io/File;

.field private mAppDataDir:Ljava/io/File;

.field private mBinder:Landroid/os/IBinder;

.field private mPauseBackup:Z

.field private mPauseRestore:Z

.field private mTotalCount:I

.field private rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private reminderBuilder:Landroid/content/ContentProviderOperation$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const-string v0, "event_id"

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    .line 122
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "_sync_id"

    aput-object v1, v0, v6

    const-string v1, "dirty"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_color_index"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "calendar_location"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "canModifyTimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "canPartiallyUpdate"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->CALENDARS_COLUMNS:[Ljava/lang/String;

    .line 131
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderColumns:[Ljava/lang/String;

    .line 134
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeColumns:[Ljava/lang/String;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "miniutes"

    aput-object v1, v0, v3

    const-string v1, "phone_numbers"

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customReminderColumns:[Ljava/lang/String;

    .line 141
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_ring_mode"

    aput-object v1, v0, v3

    const-string v1, "event_ring_tone"

    aput-object v1, v0, v4

    const-string v1, "sign_color"

    aput-object v1, v0, v5

    const-string v1, "background_color"

    aput-object v1, v0, v6

    const-string v1, "long_press_backcolor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "long_press_bordercolor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_path"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customEventColumns:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const-string v1, "dirty"

    aput-object v1, v0, v5

    const-string v1, "lastSynced"

    aput-object v1, v0, v6

    const-string v1, "calendar_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eventColor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventColor_index"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hasExtendedProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "originalAllDay"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lastDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "guestsCanInviteOthers"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "guestsCanSeeGuests"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "eventEndTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENTS_COLUMNS:[Ljava/lang/String;

    .line 157
    const-string v0, "content://com.android.calendar/events"

    .line 158
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->CALENDAR_URI:Landroid/net/Uri;

    .line 157
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->calendarsIdMap:Ljava/util/HashMap;

    .line 52
    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 53
    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 54
    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvReminderList:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvEventList:Ljava/util/List;

    .line 175
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;

    invoke-direct {v0, p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;-><init>(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mBinder:Landroid/os/IBinder;

    .line 176
    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 177
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 178
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 179
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 180
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBackupEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 701
    .line 702
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 703
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 706
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    .line 707
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 701
    return-object v0
.end method

.method private backupCalendar(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 25
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 518
    const-string v3, "DataBackupService"

    const-string v5, "backupCalendar begin"

    invoke-static {v3, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/16 v23, 0x1

    .line 520
    .local v23, "isSuccess":Z
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    .line 522
    .local v16, "context":Landroid/content/Context;
    const/16 v24, 0x0

    .line 523
    .local v24, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v15, 0x0

    .line 524
    .local v15, "commonkindCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 525
    .local v13, "calendarCursor":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 526
    .local v19, "eventsCursor":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 529
    .local v20, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v3, "content://com.android.calendar/calendars"

    .line 530
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 531
    .local v4, "calendarUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->CALENDARS_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 534
    const-string v3, "content://com.android.calendar/events"

    .line 535
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 536
    .local v6, "rawCalendarUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENTS_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 539
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 540
    .local v14, "calendar_total":I
    const-string v3, "DataBackupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calendar.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    .line 545
    const-string v3, "DataBackupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 547
    const/16 v23, 0x0

    .line 548
    const-string v3, "DataBackupService"

    const-string v5, "backupCalendar 1, return false"

    invoke-static {v3, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 549
    const/4 v3, 0x0

    .line 666
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v13, v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 667
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v19, v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 668
    const/4 v8, 0x0

    .line 670
    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v20, :cond_0

    .line 671
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    const/16 v20, 0x0

    :cond_0
    :goto_0
    move-object v10, v15

    .line 680
    .end local v4    # "calendarUri":Landroid/net/Uri;
    .end local v6    # "rawCalendarUri":Landroid/net/Uri;
    .end local v14    # "calendar_total":I
    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .local v10, "commonkindCursor":Landroid/database/Cursor;
    :goto_1
    return v3

    .line 674
    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v4    # "calendarUri":Landroid/net/Uri;
    .restart local v6    # "rawCalendarUri":Landroid/net/Uri;
    .restart local v14    # "calendar_total":I
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v17

    .line 675
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 552
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 556
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .local v21, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    .line 557
    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_4
    const-string v3, "utf-8"

    move-object/from16 v0, v21

    invoke-interface {v8, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 558
    const-string v3, "calendar"

    const-string v5, "0"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v8}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->createPre(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 559
    const/16 v22, 0x0

    .line 560
    .local v22, "index":I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    const/4 v3, 0x0

    const-string v5, "amount"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    const/4 v3, 0x0

    const-string v5, "amount"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const/4 v3, 0x0

    const-string v5, "calendars_wrap"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    const/4 v3, 0x0

    const-string v5, "calendars"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    :cond_2
    const/4 v3, 0x0

    const-string v5, "item"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    sget-object v3, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->CALENDARS_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 571
    const/4 v3, 0x0

    const-string v5, "item"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c00d6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 572
    move-object/from16 v0, p2

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v3, v5}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V

    .line 578
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 579
    const/4 v3, 0x0

    const-string v5, "calendars"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    const/4 v3, 0x0

    const-string v5, "calendars_wrap"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    :cond_3
    const-string v3, ""

    const-string v5, "data"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v10, v15

    .line 586
    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x0

    :try_start_5
    const-string v5, "item"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    const-string v3, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 588
    .local v18, "eventId":Ljava/lang/String;
    sget-object v3, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENTS_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 591
    const-string v3, "content://com.android.calendar/attendees"

    .line 592
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeColumns:[Ljava/lang/String;

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 594
    const-string v9, "attendee"

    sget-object v11, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeColumns:[Ljava/lang/String;

    sget-object v12, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeColumns:[Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 598
    const-string v3, "content://com.android.calendar/reminders"

    .line 599
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderColumns:[Ljava/lang/String;

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 602
    const-string v9, "reminder"

    sget-object v11, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderColumns:[Ljava/lang/String;

    sget-object v12, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderColumns:[Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 606
    const-string v3, "content://cn.nubia.calendar.provider.eventdata/reminder"

    .line 607
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customReminderColumns:[Ljava/lang/String;

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 610
    const-string v9, "customreminder"

    sget-object v11, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customReminderColumns:[Ljava/lang/String;

    sget-object v12, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customReminderColumns:[Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 615
    const-string v3, "content://cn.nubia.calendar.provider.eventdata/event"

    .line 616
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customEventColumns:[Ljava/lang/String;

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 619
    const-string v9, "customevent"

    sget-object v11, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customEventColumns:[Ljava/lang/String;

    sget-object v12, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customEventColumns:[Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 623
    const/4 v3, 0x0

    const-string v5, "item"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v3, :cond_5

    .line 626
    const/16 v23, 0x0

    .line 655
    :goto_2
    const-string v3, ""

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    const-string v3, ""

    const-string v5, "data"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    const-string v3, ""

    const-string v5, "root"

    invoke-interface {v8, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 658
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 666
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v13, v3, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 667
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v19, v3, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 668
    const/4 v8, 0x0

    .line 670
    if-eqz v21, :cond_b

    .line 671
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 672
    const/16 v20, 0x0

    .line 679
    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    const-string v3, "DataBackupService"

    const-string v5, "backupCalendar end"

    invoke-static {v3, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v23

    .line 680
    goto/16 :goto_1

    .line 629
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c00d6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 629
    move-object/from16 v0, p2

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v3, v5}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-nez v3, :cond_6

    .line 636
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 638
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 642
    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 644
    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v3, :cond_9

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 648
    :cond_7
    const/16 v23, 0x0

    .line 650
    goto/16 :goto_2

    .line 639
    :catch_1
    move-exception v17

    .line 640
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 642
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 660
    .end local v18    # "eventId":Ljava/lang/String;
    :catch_2
    move-exception v17

    move-object/from16 v20, v21

    .line 661
    .end local v4    # "calendarUri":Landroid/net/Uri;
    .end local v6    # "rawCalendarUri":Landroid/net/Uri;
    .end local v14    # "calendar_total":I
    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "index":I
    .local v17, "e":Ljava/lang/Exception;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    const/16 v23, 0x0

    .line 663
    const-string v3, "DataBackupService"

    const-string v5, "backupCalendar 3 failed"

    invoke-static {v3, v5}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 666
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v13, v3, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 667
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v19, v3, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 668
    const/4 v8, 0x0

    .line 670
    if-eqz v20, :cond_8

    .line 671
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 672
    const/16 v20, 0x0

    .end local v17    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    move/from16 v3, v23

    .line 664
    goto/16 :goto_1

    .line 653
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "calendarUri":Landroid/net/Uri;
    .restart local v6    # "rawCalendarUri":Landroid/net/Uri;
    .restart local v14    # "calendar_total":I
    .restart local v18    # "eventId":Ljava/lang/String;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v22    # "index":I
    :cond_9
    :try_start_f
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    .line 674
    :catch_3
    move-exception v17

    .line 675
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v20, v21

    .line 677
    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 674
    .end local v4    # "calendarUri":Landroid/net/Uri;
    .end local v6    # "rawCalendarUri":Landroid/net/Uri;
    .end local v14    # "calendar_total":I
    .end local v18    # "eventId":Ljava/lang/String;
    .end local v22    # "index":I
    .local v17, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    .line 675
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 666
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v3

    move-object v10, v15

    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    move-object/from16 v8, v24

    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_7
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v13, v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 667
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v19, v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 668
    const/4 v8, 0x0

    .line 670
    if-eqz v20, :cond_a

    .line 671
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 672
    const/16 v20, 0x0

    .line 677
    :cond_a
    :goto_8
    throw v3

    .line 674
    :catch_5
    move-exception v17

    .line 675
    .restart local v17    # "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 666
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .end local v17    # "e":Ljava/io/IOException;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "calendarUri":Landroid/net/Uri;
    .restart local v6    # "rawCalendarUri":Landroid/net/Uri;
    .restart local v14    # "calendar_total":I
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_2
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v15

    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    move-object/from16 v8, v24

    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_7

    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v15

    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    goto :goto_7

    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v22    # "index":I
    :catchall_4
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v4    # "calendarUri":Landroid/net/Uri;
    .end local v6    # "rawCalendarUri":Landroid/net/Uri;
    .end local v14    # "calendar_total":I
    .end local v22    # "index":I
    .local v17, "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    goto :goto_7

    .line 660
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_6
    move-exception v17

    move-object v10, v15

    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    move-object/from16 v8, v24

    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto/16 :goto_5

    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "calendarUri":Landroid/net/Uri;
    .restart local v6    # "rawCalendarUri":Landroid/net/Uri;
    .restart local v14    # "calendar_total":I
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_7
    move-exception v17

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v15

    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    move-object/from16 v8, v24

    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto/16 :goto_5

    .end local v10    # "commonkindCursor":Landroid/database/Cursor;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v17

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v15

    .end local v15    # "commonkindCursor":Landroid/database/Cursor;
    .restart local v10    # "commonkindCursor":Landroid/database/Cursor;
    goto/16 :goto_5

    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "eventId":Ljava/lang/String;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v22    # "index":I
    :cond_b
    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method private varargs closeCursors([Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .prologue
    .line 1483
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 1484
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1485
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1489
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method private createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendarDataUri"    # Landroid/net/Uri;
    .param p3, "columnNames"    # [Ljava/lang/String;
    .param p4, "rawID"    # Ljava/lang/String;

    .prologue
    .line 1438
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createCalendarCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendarDataUri"    # Landroid/net/Uri;
    .param p3, "columnNames"    # [Ljava/lang/String;
    .param p4, "rawID"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 1422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    .local v6, "where":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v7, "whereList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    sget-object v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1431
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 1430
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createPre(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "requestCount"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1399
    const-string v0, "utf-8"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1401
    const-string v0, ""

    const-string v1, "root"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1402
    const-string v0, ""

    const-string v1, "version"

    .line 1403
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1402
    invoke-interface {p3, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1404
    if-eqz p1, :cond_0

    .line 1405
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p3, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1407
    :cond_0
    const-string v0, ""

    const-string v1, "device"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1409
    const-string v0, ""

    const-string v1, "device"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1411
    const-string v0, ""

    const-string v1, "action"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1412
    const-string v0, "calendar"

    invoke-interface {p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1413
    const-string v0, ""

    const-string v1, "action"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1414
    const-string v0, ""

    const-string v1, "request_count"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1415
    invoke-interface {p3, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1416
    const-string v0, ""

    const-string v1, "request_count"

    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1418
    return-void
.end method

.method private deleteAll(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 327
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 330
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 331
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteAll(Ljava/io/File;)V

    .line 332
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private generateDescriptFile()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 453
    const-string v9, "DataBackupService"

    const-string v10, "generateDescriptFile begin"

    invoke-static {v9, v10}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 456
    .local v5, "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    const/4 v0, 0x0

    .line 458
    .local v0, "descriptFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Lcn/nubia/databackup/utils/KXmlSerializer;

    invoke-direct {v6}, Lcn/nubia/databackup/utils/KXmlSerializer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .local v6, "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    const-string v10, "descript.xml"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 461
    .end local v0    # "descriptFile":Ljava/io/File;
    .local v1, "descriptFile":Ljava/io/File;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 462
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    const-string v9, "utf-8"

    invoke-virtual {v6, v4, v9}, Lcn/nubia/databackup/utils/KXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 463
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 464
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 467
    const/4 v9, 0x0

    const-string v10, "backup_descript"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    const/4 v9, 0x0

    const-string v10, "version"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcn/nubia/databackup/utils/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    const/4 v9, 0x0

    const-string v10, "type"

    const-string v11, "calendar"

    invoke-virtual {v6, v9, v10, v11}, Lcn/nubia/databackup/utils/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    const/4 v9, 0x0

    const-string v10, "device"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcn/nubia/databackup/utils/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    const/4 v9, 0x0

    const-string v10, "device"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const/4 v9, 0x0

    const-string v10, "checksum"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const-string v9, "xxxx"

    invoke-virtual {v6, v9}, Lcn/nubia/databackup/utils/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const/4 v9, 0x0

    const-string v10, "checksum"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    const/4 v9, 0x0

    const-string v10, "date"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    if-eqz v9, :cond_0

    .line 478
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/databackup/utils/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    :cond_0
    const/4 v9, 0x0

    const-string v10, "date"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    const/4 v9, 0x0

    const-string v10, "encrypt"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/databackup/utils/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    const/4 v9, 0x0

    const-string v10, "encrypt"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    const/4 v9, 0x0

    const-string v10, "amount"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    iget v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/databackup/utils/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    const/4 v9, 0x0

    const-string v10, "amount"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    const/4 v9, 0x0

    const-string v10, "backup_descript"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/databackup/utils/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    invoke-virtual {v6}, Lcn/nubia/databackup/utils/KXmlSerializer;->endDocument()V

    .line 489
    iget-boolean v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v9, :cond_3

    .line 490
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 491
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 492
    const/4 v0, 0x0

    .line 502
    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    :goto_0
    const/4 v5, 0x0

    .line 504
    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    if-eqz v4, :cond_2

    .line 505
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 506
    const/4 v3, 0x0

    .line 513
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v7

    .line 508
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 502
    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :cond_3
    const/4 v5, 0x0

    .line 504
    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    if-eqz v4, :cond_5

    .line 505
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 506
    const/4 v3, 0x0

    .line 512
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    const-string v7, "DataBackupService"

    const-string v9, "generateDescriptFile end"

    invoke-static {v7, v9}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move v7, v8

    .line 513
    goto :goto_1

    .line 508
    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 509
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 511
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 497
    .end local v1    # "descriptFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "descriptFile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    const-string v8, "DataBackupService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateDescriptFile Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 502
    const/4 v5, 0x0

    .line 504
    if-eqz v3, :cond_1

    .line 505
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 506
    const/4 v3, 0x0

    goto :goto_1

    .line 508
    :catch_3
    move-exception v2

    .line 509
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    const/4 v5, 0x0

    .line 504
    if-eqz v3, :cond_4

    .line 505
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 506
    const/4 v3, 0x0

    .line 511
    :cond_4
    :goto_5
    throw v7

    .line 508
    :catch_4
    move-exception v2

    .line 509
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    goto :goto_4

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    goto :goto_4

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :catchall_3
    move-exception v7

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 497
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/databackup/utils/KXmlSerializer;
    :cond_6
    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    goto :goto_0
.end method

.method private getBackupEntries()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    new-instance v10, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    invoke-direct {v10}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;-><init>()V

    .line 298
    .local v10, "entry":Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setId(Ljava/lang/String;)V

    .line 300
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, "calendarUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->CALENDARS_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 304
    .local v8, "calendarCursor":Landroid/database/Cursor;
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 305
    .local v3, "rawCalendarUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENTS_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 308
    .local v11, "eventsCursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int v12, v0, v2

    .line 309
    .local v12, "totalCount":I
    invoke-virtual {v10, v12}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setItemCount(I)V

    .line 310
    const-string v0, "calendar"

    invoke-virtual {v10, v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setDesc(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setPackageName(Ljava/lang/String;)V

    .line 312
    const v0, 0x7f020083

    invoke-virtual {v10, v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setIconResId(I)V

    .line 313
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    invoke-direct {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 316
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    invoke-direct {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    .line 317
    return-object v9
.end method

.method private getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 1455
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "checkSDExist":Z
    if-eqz v0, :cond_1

    .line 188
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "flycow/appdata"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppDataDir:Ljava/io/File;

    .line 189
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppDataDir:Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    .line 190
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v1, "calendar_preset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSDExist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEventExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pfilterTitle"    # Ljava/lang/String;
    .param p3, "pfilterEventLocation"    # Ljava/lang/String;
    .param p4, "pfilterDtstart"    # Ljava/lang/String;
    .param p5, "pfilterDtend"    # Ljava/lang/String;
    .param p6, "pfilterDuration"    # Ljava/lang/String;
    .param p7, "pfilterAllDay"    # Ljava/lang/String;
    .param p8, "pfilterAccessLevel"    # Ljava/lang/String;
    .param p9, "pfilterAvailability"    # Ljava/lang/String;
    .param p10, "pfilterOrganizer"    # Ljava/lang/String;

    .prologue
    .line 1321
    const-string v1, "content://com.android.calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1323
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "_id>-1"

    .line 1324
    .local v4, "where":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v9, "whereList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND title=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1328
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND eventLocation=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1333
    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND dtstart="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1340
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND dtend="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1344
    :cond_3
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND duration=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1346
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_4
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND allDay="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1353
    :cond_5
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND accessLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1357
    :cond_6
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND availability="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1361
    :cond_7
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND organizer=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1363
    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_8
    const/4 v7, 0x0

    .line 1369
    .local v7, "cs":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 1371
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 1369
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1372
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_a

    .line 1373
    const/4 v1, 0x1

    .line 1378
    if-eqz v7, :cond_9

    .line 1379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1383
    :cond_9
    :goto_0
    return v1

    .line 1378
    :cond_a
    if-eqz v7, :cond_b

    .line 1379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1383
    :cond_b
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1375
    :catch_0
    move-exception v8

    .line 1376
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    if-eqz v7, :cond_b

    .line 1379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1378
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_c

    .line 1379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1381
    :cond_c
    throw v1
.end method

.method private restoreCalendar(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 50
    .param p1, "token"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 713
    const-string v4, "DataBackupService"

    const-string v15, "restoreCalendar begin"

    invoke-static {v4, v15}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 715
    .local v5, "context":Landroid/content/Context;
    const/16 v32, 0x0

    .line 718
    .local v32, "fis":Ljava/io/FileInputStream;
    const/16 v43, 0x0

    .line 719
    .local v43, "rawIndex":I
    const/16 v24, 0x0

    .line 720
    .local v24, "calendarUri":Landroid/net/Uri;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 721
    .local v25, "calendarValues":Landroid/content/ContentValues;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v42

    .line 722
    .local v42, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v39, ""

    .line 723
    .local v39, "nextText":Ljava/lang/String;
    const-string v40, ""

    .line 724
    .local v40, "organizer":Ljava/lang/String;
    const-string v41, ""

    .line 725
    .local v41, "owenerAccount":Ljava/lang/String;
    const/16 v22, 0x0

    .line 726
    .local v22, "calendarCursor":Landroid/database/Cursor;
    const/16 v23, 0x1

    .line 728
    .local v23, "calendarId":I
    const/16 v26, -0x1

    .line 729
    .local v26, "curEventId":I
    const/16 v27, 0x1

    .line 730
    .local v27, "curEventIsNeedToAddToDB":Z
    const-string v6, ""

    .line 731
    .local v6, "filterTitle":Ljava/lang/String;
    const-string v7, ""

    .line 732
    .local v7, "filterEventLocation":Ljava/lang/String;
    const-string v8, ""

    .line 733
    .local v8, "filterDtstart":Ljava/lang/String;
    const-string v9, ""

    .line 734
    .local v9, "filterDtend":Ljava/lang/String;
    const-string v10, ""

    .line 735
    .local v10, "filterDuration":Ljava/lang/String;
    const-string v11, ""

    .line 736
    .local v11, "filterAllDay":Ljava/lang/String;
    const-string v12, ""

    .line 737
    .local v12, "filterAccessLevel":Ljava/lang/String;
    const-string v13, ""

    .line 738
    .local v13, "filterAvailability":Ljava/lang/String;
    const-string v14, ""

    .line 739
    .local v14, "filterOrganizer":Ljava/lang/String;
    const/16 v37, 0x0

    .line 740
    .local v37, "index":I
    const/16 v21, 0x0

    .line 741
    .local v21, "amount":I
    const/16 v38, 0x0

    .line 744
    .local v38, "isSuccess":Z
    :try_start_0
    new-instance v33, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v15, "calendar.xml"

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 745
    .end local v32    # "fis":Ljava/io/FileInputStream;
    .local v33, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string v4, "utf-8"

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 746
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v31

    .line 747
    .local v31, "event":I
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_5d

    .line 749
    packed-switch v31, :pswitch_data_0

    .line 1285
    :cond_0
    :goto_1
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    goto :goto_0

    .line 751
    :pswitch_0
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 756
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 757
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x3

    if-ne v4, v15, :cond_1

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 760
    const/16 v27, 0x1

    .line 761
    const-string v4, "content://com.android.calendar/events"

    .line 763
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 762
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 766
    const-string v6, ""

    .line 767
    const-string v7, ""

    .line 768
    const-string v8, ""

    .line 769
    const-string v9, ""

    .line 770
    const-string v10, ""

    .line 771
    const-string v11, ""

    .line 772
    const-string v12, ""

    .line 773
    const-string v13, ""

    .line 774
    const-string v14, ""

    goto :goto_1

    .line 776
    :cond_1
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v15, "amount"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 777
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 778
    const-string v4, "DataBackupService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "amount:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1289
    .end local v31    # "event":I
    :catch_0
    move-exception v30

    move-object/from16 v32, v33

    .line 1290
    .end local v33    # "fis":Ljava/io/FileInputStream;
    .local v30, "e":Ljava/lang/Exception;
    .restart local v32    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1294
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v15, 0x7f0c00d7

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1292
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1298
    :goto_3
    :try_start_4
    const-string v4, "DataBackupService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "restoreCalendar Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1300
    const/16 v42, 0x0

    .line 1301
    if-eqz v32, :cond_2

    .line 1303
    :try_start_5
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1307
    .end local v30    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    const/16 v32, 0x0

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_5
    move/from16 v4, v38

    .line 1312
    :goto_6
    return v4

    .line 779
    .end local v32    # "fis":Ljava/io/FileInputStream;
    .restart local v31    # "event":I
    .restart local v33    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_6
    const-string v4, "_id"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 780
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x4

    if-ne v4, v15, :cond_4

    .line 782
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    goto/16 :goto_1

    .line 789
    :cond_4
    const-string v4, "lastSynced"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "lastSynced"

    .line 791
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1300
    .end local v31    # "event":I
    :catchall_0
    move-exception v4

    move-object/from16 v32, v33

    .end local v33    # "fis":Ljava/io/FileInputStream;
    .restart local v32    # "fis":Ljava/io/FileInputStream;
    :goto_7
    const/16 v42, 0x0

    .line 1301
    if-eqz v32, :cond_5

    .line 1303
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1307
    :cond_5
    :goto_8
    const/16 v32, 0x0

    .line 1308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1309
    throw v4

    .line 792
    .end local v32    # "fis":Ljava/io/FileInputStream;
    .restart local v31    # "event":I
    .restart local v33    # "fis":Ljava/io/FileInputStream;
    :cond_6
    :try_start_8
    const-string v4, "organizer"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 793
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v40

    .line 794
    move-object/from16 v14, v40

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "organizer"

    move-object/from16 v0, v40

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->calendarsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object/from16 v39, v0

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v16, "calendar_id"

    if-nez v39, :cond_7

    const/4 v4, 0x1

    .line 798
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 797
    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v4, v39

    .line 798
    goto :goto_9

    .line 799
    :cond_8
    const-string v4, "calendar_id"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 801
    const-string v4, "title"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 802
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "title"

    invoke-virtual {v4, v15, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 804
    :cond_9
    const-string v4, "eventLocation"

    .line 805
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 804
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 806
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "eventLocation"

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 809
    :cond_a
    const-string v4, "description"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "description"

    .line 811
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 810
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 812
    :cond_b
    const-string v4, "eventColor"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "eventColor"

    .line 814
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 815
    :cond_c
    const-string v4, "eventColor_index"

    .line 816
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 815
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "eventColor_index"

    .line 818
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 817
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 819
    :cond_d
    const-string v4, "eventStatus"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "eventStatus"

    .line 821
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 820
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 822
    :cond_e
    const-string v4, "selfAttendeeStatus"

    .line 823
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 822
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 828
    const-string v4, "dtstart"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 829
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "dtstart"

    invoke-virtual {v4, v15, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 831
    :cond_f
    const-string v4, "dtend"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 832
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "dtend"

    invoke-virtual {v4, v15, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 834
    :cond_10
    const-string v4, "eventTimezone"

    .line 835
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 834
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "eventTimezone"

    .line 837
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 836
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 838
    :cond_11
    const-string v4, "duration"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 839
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "duration"

    invoke-virtual {v4, v15, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 841
    :cond_12
    const-string v4, "allDay"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 842
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "allDay"

    invoke-virtual {v4, v15, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 844
    :cond_13
    const-string v4, "accessLevel"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 845
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "accessLevel"

    invoke-virtual {v4, v15, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 848
    :cond_14
    const-string v4, "availability"

    .line 849
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 850
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "availability"

    invoke-virtual {v4, v15, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 853
    :cond_15
    const-string v4, "hasAlarm"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "hasAlarm"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 855
    :cond_16
    const-string v4, "hasExtendedProperties"

    .line 856
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 855
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "hasExtendedProperties"

    .line 858
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 857
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 859
    :cond_17
    const-string v4, "rrule"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "rrule"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 861
    :cond_18
    const-string v4, "rdate"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "rdate"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 863
    :cond_19
    const-string v4, "exrule"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "exrule"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 865
    :cond_1a
    const-string v4, "exdate"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "exdate"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 867
    :cond_1b
    const-string v4, "original_id"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "original_id"

    .line 869
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 868
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 870
    :cond_1c
    const-string v4, "original_sync_id"

    .line 871
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 870
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "original_sync_id"

    .line 873
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 872
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 874
    :cond_1d
    const-string v4, "originalInstanceTime"

    .line 875
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 874
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "originalInstanceTime"

    .line 877
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 876
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 878
    :cond_1e
    const-string v4, "originalAllDay"

    .line 879
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 878
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "originalAllDay"

    .line 881
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 880
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 882
    :cond_1f
    const-string v4, "lastDate"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "lastDate"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 884
    :cond_20
    const-string v4, "hasAttendeeData"

    .line 885
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 884
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "hasAttendeeData"

    .line 887
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 886
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 888
    :cond_21
    const-string v4, "guestsCanModify"

    .line 889
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 888
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "guestsCanModify"

    .line 891
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 890
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 892
    :cond_22
    const-string v4, "guestsCanInviteOthers"

    .line 893
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 892
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "guestsCanInviteOthers"

    .line 895
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 894
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 896
    :cond_23
    const-string v4, "guestsCanSeeGuests"

    .line 897
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 896
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "guestsCanSeeGuests"

    .line 899
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 898
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 900
    :cond_24
    const-string v4, "deleted"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "deleted"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-object/from16 v4, p0

    .line 904
    invoke-direct/range {v4 .. v14}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isEventExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    const/16 v27, 0x1

    :goto_a
    goto/16 :goto_1

    :cond_25
    const/16 v27, 0x0

    goto :goto_a

    .line 912
    :cond_26
    const-string v4, "eventEndTimezone"

    .line 913
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 912
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "eventEndTimezone"

    .line 915
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 914
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 916
    :cond_27
    const-string v4, "attendee"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 917
    :goto_b
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_28

    const-string v4, "attendee"

    .line 918
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 919
    :cond_28
    packed-switch v31, :pswitch_data_1

    .line 962
    :cond_29
    :goto_c
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    goto :goto_b

    .line 921
    :pswitch_1
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_29

    .line 923
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 924
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_2a

    .line 925
    const-string v4, "content://com.android.calendar/attendees"

    .line 927
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 926
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    sget-object v15, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    .line 928
    move/from16 v0, v43

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    goto :goto_c

    .line 930
    :cond_2a
    const-string v4, "attendeeName"

    .line 931
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "attendeeName"

    .line 933
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 932
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_c

    .line 934
    :cond_2b
    const-string v4, "attendeeEmail"

    .line 935
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "attendeeEmail"

    .line 937
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_c

    .line 938
    :cond_2c
    const-string v4, "attendeeRelationship"

    .line 939
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "attendeeRelationship"

    .line 942
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 940
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_c

    .line 943
    :cond_2d
    const-string v4, "attendeeType"

    .line 944
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "attendeeType"

    .line 946
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 945
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_c

    .line 947
    :cond_2e
    const-string v4, "attendeeStatus"

    .line 948
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "attendeeStatus"

    .line 950
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 949
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_c

    .line 954
    :pswitch_2
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 955
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_29

    if-eqz v27, :cond_29

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 958
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 964
    :cond_2f
    const-string v4, "reminder"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 965
    :goto_d
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_30

    const-string v4, "reminder"

    .line 966
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 967
    :cond_30
    packed-switch v31, :pswitch_data_2

    .line 997
    :cond_31
    :goto_e
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    goto :goto_d

    .line 969
    :pswitch_3
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_31

    .line 971
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 972
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_32

    .line 973
    const-string v4, "content://com.android.calendar/reminders"

    .line 975
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 974
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    sget-object v15, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    .line 976
    move/from16 v0, v43

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderBuilder:Landroid/content/ContentProviderOperation$Builder;

    goto :goto_e

    .line 978
    :cond_32
    const-string v4, "minutes"

    .line 979
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 978
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "minutes"

    .line 981
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 980
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_e

    .line 982
    :cond_33
    const-string v4, "method"

    .line 983
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 982
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "method"

    .line 985
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 984
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_e

    .line 989
    :pswitch_4
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 990
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_31

    if-eqz v27, :cond_31

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 993
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 999
    :cond_34
    const-string v4, "calendars"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1000
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x3

    if-ne v4, v15, :cond_4e

    .line 1003
    :goto_f
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_35

    const-string v4, "calendars"

    .line 1004
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1005
    :cond_35
    packed-switch v31, :pswitch_data_3

    .line 1151
    :cond_36
    :goto_10
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    goto :goto_f

    .line 1007
    :pswitch_5
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_36

    .line 1009
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1010
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x4

    if-eq v4, v15, :cond_36

    .line 1013
    :cond_37
    const-string v4, "account_name"

    .line 1014
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1015
    const-string v4, "account_name"

    .line 1016
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1015
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1017
    :cond_38
    const-string v4, "account_type"

    .line 1018
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1019
    const-string v4, "account_type"

    .line 1020
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1019
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1025
    :cond_39
    const-string v4, "dirty"

    .line 1026
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1025
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1027
    const-string v4, "dirty"

    .line 1028
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1027
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1029
    :cond_3a
    const-string v4, "name"

    .line 1030
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1029
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1031
    const-string v4, "name"

    .line 1032
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1031
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1033
    :cond_3b
    const-string v4, "calendar_displayName"

    .line 1034
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1035
    const-string v4, "calendar_displayName"

    .line 1036
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1035
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1037
    :cond_3c
    const-string v4, "calendar_color"

    .line 1038
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1039
    const-string v4, "calendar_color"

    .line 1040
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1039
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1041
    :cond_3d
    const-string v4, "calendar_color_index"

    .line 1042
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1043
    const-string v4, "calendar_color_index"

    .line 1044
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1043
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1045
    :cond_3e
    const-string v4, "calendar_access_level"

    .line 1046
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1047
    const-string v4, "calendar_access_level"

    .line 1048
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1047
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1049
    :cond_3f
    const-string v4, "visible"

    .line 1050
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1049
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1051
    const-string v4, "visible"

    .line 1052
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1051
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1053
    :cond_40
    const-string v4, "sync_events"

    .line 1054
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1055
    const-string v4, "sync_events"

    .line 1056
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1055
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1057
    :cond_41
    const-string v4, "ownerAccount"

    .line 1058
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1059
    const-string v4, "ownerAccount"

    .line 1060
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1059
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1061
    :cond_42
    const-string v4, "calendar_location"

    .line 1062
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1063
    const-string v4, "calendar_location"

    .line 1064
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1063
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1065
    :cond_43
    const-string v4, "calendar_timezone"

    .line 1066
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1067
    const-string v4, "calendar_timezone"

    .line 1068
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1067
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1069
    :cond_44
    const-string v4, "canOrganizerRespond"

    .line 1070
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1071
    const-string v4, "canOrganizerRespond"

    .line 1072
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1071
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1073
    :cond_45
    const-string v4, "canModifyTimeZone"

    .line 1074
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1075
    const-string v4, "canModifyTimeZone"

    .line 1076
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1075
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1077
    :cond_46
    const-string v4, "canPartiallyUpdate"

    .line 1078
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1079
    const-string v4, "canPartiallyUpdate"

    .line 1080
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1079
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1081
    :cond_47
    const-string v4, "maxReminders"

    .line 1082
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1083
    const-string v4, "maxReminders"

    .line 1084
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1083
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1085
    :cond_48
    const-string v4, "allowedReminders"

    .line 1086
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1087
    const-string v4, "allowedReminders"

    .line 1088
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1087
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1089
    :cond_49
    const-string v4, "allowedAvailability"

    .line 1090
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1091
    const-string v4, "allowedAvailability"

    .line 1092
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1091
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1093
    :cond_4a
    const-string v4, "allowedAttendeeTypes"

    .line 1094
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1095
    const-string v4, "allowedAttendeeTypes"

    .line 1096
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1095
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1097
    :cond_4b
    const-string v4, "deleted"

    .line 1098
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1097
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1099
    const-string v4, "deleted"

    .line 1100
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1099
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1105
    :pswitch_6
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1106
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x4

    if-ne v4, v15, :cond_36

    .line 1109
    const-string v4, "ownerAccount"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1110
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1112
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v4, "content://com.android.calendar/calendars"

    .line 1114
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string v18, "_id"

    aput-object v18, v17, v4

    const/4 v4, 0x1

    const-string v18, "ownerAccount"

    aput-object v18, v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ownerAccount=\'"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, "\'"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1113
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1121
    if-eqz v22, :cond_4c

    .line 1122
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1127
    :cond_4c
    const-string v4, "content://com.android.calendar/calendars"

    .line 1128
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v49

    .line 1129
    .local v49, "tpUri":Landroid/net/Uri;
    const-string v4, "163.com"

    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-static {v0, v1, v4}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v45

    .line 1132
    .local v45, "syncUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1133
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v24

    .line 1135
    invoke-static/range {v24 .. v24}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v23, v0

    .line 1143
    .end local v45    # "syncUri":Landroid/net/Uri;
    .end local v49    # "tpUri":Landroid/net/Uri;
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->calendarsIdMap:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    if-eqz v22, :cond_36

    .line 1146
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10

    .line 1137
    :cond_4d
    const/4 v4, 0x0

    .line 1139
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1137
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto :goto_11

    .line 1153
    :cond_4e
    const-string v4, "customreminder"

    .line 1154
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1153
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1155
    const/16 v29, 0x0

    .line 1156
    .local v29, "cvReminder":Landroid/content/ContentValues;
    :goto_12
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_4f

    const-string v4, "customreminder"

    .line 1157
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1158
    :cond_4f
    packed-switch v31, :pswitch_data_4

    .line 1183
    :cond_50
    :goto_13
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    goto :goto_12

    .line 1160
    :pswitch_7
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_50

    .line 1162
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1163
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_51

    .line 1164
    new-instance v29, Landroid/content/ContentValues;

    .end local v29    # "cvReminder":Landroid/content/ContentValues;
    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .restart local v29    # "cvReminder":Landroid/content/ContentValues;
    goto :goto_13

    .line 1165
    :cond_51
    const-string v4, "miniutes"

    .line 1166
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1165
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1167
    const-string v4, "miniutes"

    .line 1168
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1167
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1169
    :cond_52
    const-string v4, "phone_numbers"

    .line 1170
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1171
    const-string v4, "phone_numbers"

    .line 1172
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 1171
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1176
    :pswitch_8
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1177
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_50

    if-eqz v27, :cond_50

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvReminderList:Ljava/util/List;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1185
    .end local v29    # "cvReminder":Landroid/content/ContentValues;
    :cond_53
    const-string v4, "customevent"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1186
    const/16 v28, 0x0

    .line 1187
    .local v28, "cvEvent":Landroid/content/ContentValues;
    :goto_14
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_54

    const-string v4, "customevent"

    .line 1188
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1189
    :cond_54
    packed-switch v31, :pswitch_data_5

    .line 1213
    :cond_55
    :goto_15
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    goto :goto_14

    .line 1191
    :pswitch_9
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_55

    .line 1193
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1194
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_56

    .line 1195
    new-instance v28, Landroid/content/ContentValues;

    .end local v28    # "cvEvent":Landroid/content/ContentValues;
    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .restart local v28    # "cvEvent":Landroid/content/ContentValues;
    goto :goto_15

    .line 1197
    :cond_56
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v46

    .line 1198
    .local v46, "tagName":Ljava/lang/String;
    sget-object v4, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->customEventColumns:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v4}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->stringContainsOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1200
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1205
    .end local v46    # "tagName":Ljava/lang/String;
    :pswitch_a
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1206
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x5

    if-ne v4, v15, :cond_55

    if-eqz v27, :cond_55

    .line 1208
    if-eqz v28, :cond_55

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvEventList:Ljava/util/List;

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1220
    .end local v28    # "cvEvent":Landroid/content/ContentValues;
    :pswitch_b
    const-string v4, "item"

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1221
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x3

    if-ne v4, v15, :cond_0

    .line 1223
    if-eqz v27, :cond_58

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 1225
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    move/from16 v0, v43

    invoke-virtual {v4, v0, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1227
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v15, "com.android.calendar"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v44

    .line 1229
    .local v44, "results":[Landroid/content/ContentProviderResult;
    const/4 v4, 0x0

    aget-object v4, v44, v4

    iget-object v0, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v36, v0

    .line 1230
    .local v36, "idUri":Landroid/net/Uri;
    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    .line 1231
    .local v34, "idNew":J
    const-wide/16 v16, 0x0

    cmp-long v4, v34, v16

    if-lez v4, :cond_58

    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvEventList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvEventList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/content/ContentValues;

    .line 1234
    .local v47, "tcvEvent":Landroid/content/ContentValues;
    sget-object v15, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1235
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "content://cn.nubia.calendar.provider.eventdata/event"

    .line 1237
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1236
    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_16

    .line 1242
    .end local v47    # "tcvEvent":Landroid/content/ContentValues;
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvReminderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_58

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvReminderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/ContentValues;

    .line 1244
    .local v48, "tcvReminder":Landroid/content/ContentValues;
    sget-object v15, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->EVENT_ID:Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v48

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "content://cn.nubia.calendar.provider.eventdata/reminder"

    .line 1247
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1246
    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_17

    .line 1254
    .end local v34    # "idNew":J
    .end local v36    # "idUri":Landroid/net/Uri;
    .end local v44    # "results":[Landroid/content/ContentProviderResult;
    .end local v48    # "tcvReminder":Landroid/content/ContentValues;
    :cond_58
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->rawcpoBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 1255
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->attendeeBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 1256
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->reminderBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvEventList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->cvReminderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1259
    add-int/lit8 v37, v37, 0x1

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v15, 0x7f0c00d9

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1259
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, v37

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V

    .line 1266
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_5a

    .line 1267
    const/4 v4, 0x0

    .line 1300
    const/16 v42, 0x0

    .line 1301
    if-eqz v33, :cond_59

    .line 1303
    :try_start_9
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1307
    :cond_59
    :goto_18
    const/16 v32, 0x0

    .line 1308
    .end local v33    # "fis":Ljava/io/FileInputStream;
    .restart local v32    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 1304
    .end local v32    # "fis":Ljava/io/FileInputStream;
    .restart local v33    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v30

    .line 1305
    .local v30, "e":Ljava/io/IOException;
    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 1269
    .end local v30    # "e":Ljava/io/IOException;
    :cond_5a
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    if-eqz v4, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-nez v4, :cond_5b

    .line 1270
    monitor-enter p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1272
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1276
    :goto_19
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1278
    :cond_5b
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v4, :cond_0

    .line 1279
    const-string v4, "cancel"

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1280
    const/4 v4, 0x0

    .line 1300
    const/16 v42, 0x0

    .line 1301
    if-eqz v33, :cond_5c

    .line 1303
    :try_start_e
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 1307
    :cond_5c
    :goto_1a
    const/16 v32, 0x0

    .line 1308
    .end local v33    # "fis":Ljava/io/FileInputStream;
    .restart local v32    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 1273
    .end local v32    # "fis":Ljava/io/FileInputStream;
    .restart local v33    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v30

    .line 1274
    .local v30, "e":Ljava/lang/InterruptedException;
    :try_start_f
    invoke-virtual/range {v30 .. v30}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19

    .line 1276
    .end local v30    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1304
    :catch_3
    move-exception v30

    .line 1305
    .local v30, "e":Ljava/io/IOException;
    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 1287
    .end local v30    # "e":Ljava/io/IOException;
    :cond_5d
    const/16 v38, 0x1

    .line 1300
    const/16 v42, 0x0

    .line 1301
    if-eqz v33, :cond_5e

    .line 1303
    :try_start_11
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 1307
    :cond_5e
    :goto_1b
    const/16 v32, 0x0

    .line 1308
    .end local v33    # "fis":Ljava/io/FileInputStream;
    .restart local v32    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAddCalendarOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 1304
    .end local v32    # "fis":Ljava/io/FileInputStream;
    .restart local v33    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v30

    .line 1305
    .restart local v30    # "e":Ljava/io/IOException;
    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 1304
    .end local v31    # "event":I
    .end local v33    # "fis":Ljava/io/FileInputStream;
    .local v30, "e":Ljava/lang/Exception;
    .restart local v32    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v30

    .line 1305
    .local v30, "e":Ljava/io/IOException;
    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1304
    .end local v30    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v30

    .line 1305
    .restart local v30    # "e":Ljava/io/IOException;
    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1300
    .end local v30    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    goto/16 :goto_7

    .line 1296
    .local v30, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    goto/16 :goto_3

    .line 1289
    .end local v30    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v30

    goto/16 :goto_2

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 919
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 967
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1005
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1158
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1189
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private stringContainsOf(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "as"    # Ljava/lang/String;
    .param p2, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1492
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return v1

    .line 1495
    :cond_1
    array-length v3, p2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 1496
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1497
    const/4 v1, 0x1

    goto :goto_0

    .line 1495
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "dataCursor"    # Landroid/database/Cursor;
    .param p3, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    if-nez p2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 689
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    goto :goto_0

    .line 693
    :cond_2
    array-length v1, p3

    .line 694
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 695
    aget-object v2, p3, v0

    aget-object v3, p3, v0

    invoke-direct {p0, p1, p2, v2, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeSingleCursorDataToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private writeMultiCalendarDataToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "dataCursor"    # Landroid/database/Cursor;
    .param p4, "tags"    # [Ljava/lang/String;
    .param p5, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1461
    if-nez p3, :cond_0

    .line 1480
    :goto_0
    return-void

    .line 1463
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1464
    new-array v2, v6, [Landroid/database/Cursor;

    aput-object p3, v2, v5

    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    goto :goto_0

    .line 1467
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1468
    invoke-interface {p1, v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1470
    :cond_2
    const-string v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1471
    array-length v1, p4

    .line 1472
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1473
    aget-object v2, p4, v0

    aget-object v3, p5, v0

    invoke-direct {p0, p1, p3, v2, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->writeSingleCursorDataToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1476
    :cond_3
    const-string v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1477
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1478
    invoke-interface {p1, v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    new-array v2, v6, [Landroid/database/Cursor;

    aput-object p3, v2, v5

    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->closeCursors([Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private writeSingleCursorDataToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1445
    invoke-direct {p0, p2, p4}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    invoke-interface {p1, v2, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1450
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1451
    invoke-interface {p1, v2, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public cancelBackup()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 351
    monitor-exit p0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelRestore()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit p0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteData(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataFile"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteAll(Ljava/io/File;)V

    .line 323
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public setPauseBackup(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 366
    if-nez p1, :cond_0

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 369
    monitor-exit p0

    .line 371
    :cond_0
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPauseRestore(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 356
    if-nez p1, :cond_0

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    monitor-exit p0

    .line 362
    :cond_0
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startBackup(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 6
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v2, 0x0

    .line 404
    const-string v3, "DataBackupService"

    const-string v4, "startBackup begin"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v3, "calendar_preset"

    const-string v4, "startBackup start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->init()V

    .line 407
    iput-boolean v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 408
    iput-boolean v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 409
    const/4 v1, 0x1

    .line 410
    .local v1, "isBackupSuccess":Z
    iput v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mTotalCount:I

    .line 411
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    const-string v5, "calendar.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 412
    invoke-direct {p0, p1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupCalendar(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    .line 413
    if-nez v1, :cond_0

    .line 414
    const-string v3, "DataBackupService"

    const-string v4, "backupCalendar failed"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-interface {p2, p1, v3}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return v2

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "DataBackupService"

    const-string v3, "backupCalendar success"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->generateDescriptFile()Z

    move-result v1

    .line 428
    const-string v2, "calendar_preset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBackupSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz v1, :cond_1

    .line 431
    :try_start_1
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    .line 432
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-interface {p2, p1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupCompleted(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :goto_1
    const-string v2, "DataBackupService"

    const-string v3, "startBackup end"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "calendar_preset"

    const-string v3, "backup end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 449
    goto :goto_0

    .line 433
    :catch_1
    move-exception v0

    .line 434
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-interface {p2, p1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 443
    :catch_2
    move-exception v0

    .line 444
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 5
    .param p1, "token"    # I
    .param p2, "dataFile"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 375
    const-string v1, "DataBackupService"

    const-string v2, "startRestore begin"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 377
    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 378
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 379
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppDataDir:Ljava/io/File;

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreCalendar(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    const-string v1, "DataBackupService"

    const-string v2, "restoreCalendar failed"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return v0

    .line 386
    :cond_0
    invoke-interface {p3, p1}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreCompleted(I)V

    .line 387
    const-string v0, "DataBackupService"

    const-string v1, "startRestore end"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$1;

    invoke-direct {v1, p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$1;-><init>(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 399
    const/4 v0, 0x1

    goto :goto_0
.end method
