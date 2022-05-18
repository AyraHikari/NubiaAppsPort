.class public Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    }
.end annotation


# static fields
.field static final ATTENDEES_DELETE_PREFIX:Ljava/lang/String; = "event_id=? AND attendeeEmail IN ("

.field static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field static final ATTENDEES_INDEX_ID:I = 0x0

.field static final ATTENDEES_INDEX_NAME:I = 0x1

.field static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field static final ATTENDEES_INDEX_STATUS:I = 0x4

.field static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=? AND attendeeEmail IS NOT NULL"

.field public static final ATTENDEE_ID_NONE:I = -0x1

.field public static final ATTENDEE_VALUES:[I

.field static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x5

.field static final CALENDARS_INDEX_ALLOWED_ATTENDEE_TYPES:I = 0x9

.field static final CALENDARS_INDEX_ALLOWED_AVAILABILITY:I = 0xa

.field static final CALENDARS_INDEX_ALLOWED_REMINDERS:I = 0x8

.field static final CALENDARS_INDEX_CAN_ORGANIZER_RESPOND:I = 0x4

.field static final CALENDARS_INDEX_COLOR:I = 0x3

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_ID:I = 0x0

.field static final CALENDARS_INDEX_MAX_REMINDERS:I = 0x7

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_VISIBLE:I = 0x6

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=?"

.field static final CALENDARS_WHERE_WRITEABLE_VISIBLE:Ljava/lang/String; = "calendar_access_level>=500 AND visible =1  AND calendar_displayName !=  \'PC Sync\' "

.field static final CUSTOM_BACKGROUND_COLOR:I = 0x3

.field static final CUSTOM_EVENT_ID:I = 0x1

.field static final CUSTOM_EVENT_PROJECTION:[Ljava/lang/String;

.field static final CUSTOM_ID:I = 0x0

.field static final CUSTOM_PICTURE_PATH:I = 0x4

.field static final CUSTOM_SIGN_COLOR:I = 0x2

.field protected static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEBUG:Z = false

.field public static final DOES_NOT_REPEAT:I = 0x0

.field public static final EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field protected static final EVENT_INDEX_ACCESS_LEVEL:I = 0xe

.field protected static final EVENT_INDEX_ALL_DAY:I = 0x4

.field protected static final EVENT_INDEX_AVAILABILITY:I = 0xd

.field protected static final EVENT_INDEX_CALENDAR_ID:I = 0x6

.field protected static final EVENT_INDEX_DESCRIPTION:I = 0x2

.field protected static final EVENT_INDEX_DTEND:I = 0x8

.field protected static final EVENT_INDEX_DTSTART:I = 0x7

.field protected static final EVENT_INDEX_DURATION:I = 0x9

.field protected static final EVENT_INDEX_EVENT_LOCATION:I = 0x3

.field protected static final EVENT_INDEX_EVENT_STATUS:I = 0x15

.field protected static final EVENT_INDEX_GUESTS_CAN_MODIFY:I = 0x13

.field protected static final EVENT_INDEX_HAS_ALARM:I = 0x5

.field protected static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0x10

.field protected static final EVENT_INDEX_ID:I = 0x0

.field protected static final EVENT_INDEX_ORGANIZER:I = 0x12

.field protected static final EVENT_INDEX_ORIGINAL_ID:I = 0x14

.field protected static final EVENT_INDEX_ORIGINAL_SYNC_ID:I = 0x11

.field protected static final EVENT_INDEX_OWNER_ACCOUNT:I = 0xf

.field protected static final EVENT_INDEX_RDATE:I = 0x16

.field protected static final EVENT_INDEX_RRULE:I = 0xb

.field protected static final EVENT_INDEX_SYNC_ID:I = 0xc

.field protected static final EVENT_INDEX_TIMEZONE:I = 0xa

.field protected static final EVENT_INDEX_TITLE:I = 0x1

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field public static final MODIFY_ALL:I = 0x3

.field public static final MODIFY_ALL_FOLLOWING:I = 0x2

.field public static final MODIFY_SELECTED:I = 0x1

.field public static final MODIFY_UNINITIALIZED:I = 0x0

.field public static final REMINDERS_INDEX_METHOD:I = 0x2

.field public static final REMINDERS_INDEX_MINUTES:I = 0x1

.field public static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field public static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=?"

.field public static final REPEATS_CUSTOM:I = 0x7

.field public static final REPEATS_DAILY:I = 0x1

.field public static final REPEATS_EVERY_WEEKDAY:I = 0x2

.field public static final REPEATS_LUNARYEARLY:I = 0x9

.field public static final REPEATS_MONTHLY_ON_DAY:I = 0x5

.field public static final REPEATS_MONTHLY_ON_DAY_COUNT:I = 0x4

.field public static final REPEATS_MONTHLY_ON_LUNARDAY:I = 0x8

.field public static final REPEATS_WEEKLY_ON_DAY:I = 0x3

.field public static final REPEATS_YEARLY:I = 0x6

.field private static final TAG:Ljava/lang/String; = "EditEventHelper"


# instance fields
.field protected mEventOk:Z

.field private final mService:Lcn/nubia/calendar/AsyncQueryService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v6

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rdate"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 112
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 156
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->ATTENDEE_VALUES:[I

    .line 169
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 207
    const/4 v0, 0x5

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

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 222
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "sign_color"

    aput-object v1, v0, v5

    const-string v1, "background_color"

    aput-object v1, v0, v6

    const-string v1, "image_path"

    aput-object v1, v0, v7

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->CUSTOM_EVENT_PROJECTION:[Ljava/lang/String;

    return-void

    .line 156
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/calendar/model/CalendarEventModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mEventOk:Z

    .line 258
    instance-of v0, p1, Lcn/nubia/calendar/AbstractCalendarActivity;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Lcn/nubia/calendar/AbstractCalendarActivity;

    .line 260
    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcn/nubia/calendar/AbstractCalendarActivity;->getAsyncQueryService()Lcn/nubia/calendar/AsyncQueryService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 265
    :goto_0
    return-void

    .line 262
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Lcn/nubia/calendar/AsyncQueryService;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    goto :goto_0
.end method

.method public static canAddReminders(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 2
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1327
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyCalendar(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 4
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1322
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyEvent(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 1
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1317
    invoke-static {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyCalendar(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canRespond(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 3
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1342
    invoke-static {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyCalendar(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return v0

    .line 1346
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 1347
    goto :goto_0

    .line 1350
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_0

    .line 1356
    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1360
    goto :goto_0
.end method

.method public static extractDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 1463
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1464
    .local v0, "separator":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1465
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1467
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAddressesFromList(Ljava/lang/String;Lcn/nubia/common/Rfc822Validator;Ljava/util/ArrayList;)Ljava/util/LinkedHashSet;
    .locals 4
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "validator"    # Lcn/nubia/common/Rfc822Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/common/Rfc822Validator;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    .local p2, "wrongFormatEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 692
    .local v2, "addresses":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 693
    if-nez p1, :cond_1

    .line 711
    :cond_0
    return-object v2

    .line 699
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 700
    .local v1, "addressIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/text/util/Rfc822Token;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 702
    .local v0, "address":Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcn/nubia/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 704
    if-eqz p2, :cond_3

    .line 705
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static isFirstEventInSeries(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 4
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p1, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1057
    iget-wide v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    iget-wide v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 6
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p1, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 937
    if-nez p1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 941
    :cond_1
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    iget-wide v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    .line 942
    goto :goto_0

    .line 944
    :cond_2
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 945
    goto :goto_0
.end method

.method public static saveHomeReminders(ILjava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 10
    .param p0, "method"    # I
    .param p2, "eventId"    # J
    .param p6, "forceSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    .local p5, "originalReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p6, :cond_0

    .line 280
    const/4 v7, 0x0

    .line 302
    :goto_0
    return v7

    .line 282
    :cond_0
    const-string v6, "event_id=?"

    .line 283
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 284
    .local v0, "args":[Ljava/lang/String;
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 285
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 286
    .local v1, "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 287
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 289
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 290
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 291
    .local v4, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 292
    const-string v7, "minutes"

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    invoke-virtual {v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    .end local v4    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 297
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 298
    const-string v7, "minutes"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    invoke-virtual {v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 11
    .param p1, "eventId"    # J
    .param p5, "forceSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    .local p4, "originalReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 972
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez p5, :cond_0

    .line 999
    :goto_0
    return v7

    .line 977
    :cond_0
    const-string v6, "event_id=?"

    .line 978
    .local v6, "where":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v7

    .line 979
    .local v0, "args":[Ljava/lang/String;
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 980
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 981
    .local v1, "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 982
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 985
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 988
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 989
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 991
    .local v4, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 992
    const-string v7, "minutes"

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    const-string v7, "method"

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 994
    const-string v7, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 995
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 996
    invoke-virtual {v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 997
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_1
    move v7, v8

    .line 999
    goto :goto_0
.end method

.method public static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 9
    .param p1, "eventIdIndex"    # I
    .param p4, "forceSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    .local p3, "originalReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1024
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p4, :cond_0

    .line 1050
    :goto_0
    return v5

    .line 1029
    :cond_0
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1030
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1031
    .local v0, "b":Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "event_id=?"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1032
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1033
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1036
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1039
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1040
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 1042
    .local v3, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1043
    const-string v5, "minutes"

    invoke-virtual {v3}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1044
    const-string v5, "method"

    invoke-virtual {v3}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1046
    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1047
    const-string v5, "event_id"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1048
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_1
    move v5, v6

    .line 1050
    goto :goto_0
.end method

.method public static setCustomModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 7
    .param p0, "mModel"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1486
    new-instance v6, Lcn/nubia/calendar/model/CalendarCustomEventModel;

    invoke-direct {v6}, Lcn/nubia/calendar/model/CalendarCustomEventModel;-><init>()V

    invoke-virtual {p0, v6}, Lcn/nubia/calendar/model/CalendarEventModel;->setCalendarCustomEventModel(Lcn/nubia/calendar/model/CalendarCustomEventModel;)V

    .line 1488
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1489
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1490
    .local v2, "eventId":J
    invoke-virtual {p0}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setEventId(J)V

    .line 1492
    invoke-virtual {p0}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v6

    .line 1493
    invoke-virtual {v6}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v1

    .line 1495
    .local v1, "colorItem":Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1496
    .local v5, "signColor":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->setSignColor(Ljava/lang/String;)V

    .line 1498
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "bgColor":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->setBackColor(Ljava/lang/String;)V

    .line 1501
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1502
    .local v4, "imagePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setPicturePath(Ljava/lang/String;)V

    .line 1504
    .end local v0    # "bgColor":Ljava/lang/String;
    .end local v1    # "colorItem":Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
    .end local v2    # "eventId":J
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "signColor":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setModelFromCalendarCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1271
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1272
    :cond_0
    const-string v1, "EditEventHelper"

    const-string v2, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_1
    :goto_0
    return v0

    .line 1277
    :cond_2
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1281
    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-nez v2, :cond_3

    .line 1282
    const-string v1, "EditEventHelper"

    const-string v2, "Can\'t update model with a Calendar cursor until it has seen an Event cursor."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1287
    :cond_3
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1288
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1289
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1293
    const/4 v2, 0x4

    .line 1294
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 1296
    const/4 v0, 0x5

    .line 1297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    .line 1299
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 1300
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarColor:I

    .line 1302
    const/4 v0, 0x7

    .line 1303
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    .line 1304
    const/16 v0, 0x8

    .line 1305
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1306
    const/16 v0, 0x9

    .line 1307
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 1308
    const/16 v0, 0xa

    .line 1309
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    move v0, v1

    .line 1311
    goto :goto_0
.end method

.method public static setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 10
    .param p0, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1199
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 1200
    :cond_0
    const-string v4, "EditEventHelper"

    const-string v5, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_0
    return-void

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/model/CalendarEventModel;->clear()V

    .line 1206
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1208
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    iput-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 1209
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1210
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1211
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1212
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 1213
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 1214
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    iput-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 1215
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 1216
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1217
    .local v3, "tz":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1218
    iput-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1220
    :cond_2
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, "rRule":Ljava/lang/String;
    iput-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1222
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 1223
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 1224
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    .line 1225
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1226
    .local v0, "accessLevel":I
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1227
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    .line 1228
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 1229
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    .line 1230
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1231
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1232
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    .line 1233
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    .line 1235
    if-lez v0, :cond_3

    .line 1239
    add-int/lit8 v0, v0, -0x1

    .line 1241
    :cond_3
    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    .line 1242
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    .line 1244
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v5

    .line 1247
    .local v1, "hasRRule":Z
    :goto_5
    if-eqz v1, :cond_9

    .line 1248
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1253
    :goto_6
    iput-boolean v5, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    goto/16 :goto_0

    .end local v0    # "accessLevel":I
    .end local v1    # "hasRRule":Z
    .end local v2    # "rRule":Ljava/lang/String;
    .end local v3    # "tz":Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 1212
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 1213
    goto/16 :goto_2

    .restart local v0    # "accessLevel":I
    .restart local v2    # "rRule":Ljava/lang/String;
    .restart local v3    # "tz":Ljava/lang/String;
    :cond_6
    move v4, v6

    .line 1227
    goto :goto_3

    :cond_7
    move v4, v6

    .line 1233
    goto :goto_4

    :cond_8
    move v1, v6

    .line 1244
    goto :goto_5

    .line 1250
    .restart local v1    # "hasRRule":Z
    :cond_9
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    goto :goto_6
.end method

.method static updateRecurrenceRule(ILcn/nubia/calendar/model/CalendarEventModel;I)V
    .locals 12
    .param p0, "selection"    # I
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p2, "weekStart"    # I

    .prologue
    .line 1111
    new-instance v7, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct {v7}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 1112
    .local v7, "eventRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    if-nez p0, :cond_1

    .line 1113
    const/4 v9, 0x0

    iput-object v9, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    const/4 v9, 0x7

    if-eq p0, v9, :cond_0

    .line 1118
    const/4 v9, 0x1

    if-ne p0, v9, :cond_3

    .line 1119
    const/4 v9, 0x4

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    .line 1182
    :cond_2
    :goto_1
    invoke-static {p2}, Lcn/nubia/calendarcommon2/EventRecurrence;->calendarDay2Day(I)I

    move-result v9

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->wkst:I

    .line 1183
    invoke-virtual {v7}, Lcn/nubia/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 1120
    :cond_3
    const/4 v9, 0x2

    if-ne p0, v9, :cond_5

    .line 1121
    const/4 v9, 0x5

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    .line 1122
    const/4 v4, 0x5

    .line 1123
    .local v4, "dayCount":I
    new-array v0, v4, [I

    .line 1124
    .local v0, "byday":[I
    new-array v1, v4, [I

    .line 1126
    .local v1, "bydayNum":[I
    const/4 v9, 0x0

    const/high16 v10, 0x20000

    aput v10, v0, v9

    .line 1127
    const/4 v9, 0x1

    const/high16 v10, 0x40000

    aput v10, v0, v9

    .line 1128
    const/4 v9, 0x2

    const/high16 v10, 0x80000

    aput v10, v0, v9

    .line 1129
    const/4 v9, 0x3

    const/high16 v10, 0x100000

    aput v10, v0, v9

    .line 1130
    const/4 v9, 0x4

    const/high16 v10, 0x200000

    aput v10, v0, v9

    .line 1131
    const/4 v3, 0x0

    .local v3, "day":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 1132
    const/4 v9, 0x0

    aput v9, v1, v3

    .line 1131
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1135
    :cond_4
    iput-object v0, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    .line 1136
    iput-object v1, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 1137
    iput v4, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 1138
    .end local v0    # "byday":[I
    .end local v1    # "bydayNum":[I
    .end local v3    # "day":I
    .end local v4    # "dayCount":I
    :cond_5
    const/4 v9, 0x3

    if-ne p0, v9, :cond_6

    .line 1139
    const/4 v9, 0x5

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    .line 1140
    const/4 v9, 0x1

    new-array v6, v9, [I

    .line 1141
    .local v6, "days":[I
    const/4 v4, 0x1

    .line 1142
    .restart local v4    # "dayCount":I
    new-array v5, v4, [I

    .line 1143
    .local v5, "dayNum":[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v8, "startTime":Landroid/text/format/Time;
    iget-wide v10, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 1145
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Lcn/nubia/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v10

    aput v10, v6, v9

    .line 1147
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    .line 1148
    iput-object v6, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    .line 1149
    iput-object v5, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 1150
    iput v4, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 1151
    .end local v4    # "dayCount":I
    .end local v5    # "dayNum":[I
    .end local v6    # "days":[I
    .end local v8    # "startTime":Landroid/text/format/Time;
    :cond_6
    const/4 v9, 0x5

    if-ne p0, v9, :cond_7

    .line 1152
    const/4 v9, 0x6

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    .line 1153
    const/4 v9, 0x0

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 1154
    const/4 v9, 0x1

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 1155
    const/4 v9, 0x1

    new-array v2, v9, [I

    .line 1156
    .local v2, "bymonthday":[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1157
    .restart local v8    # "startTime":Landroid/text/format/Time;
    iget-wide v10, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 1158
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->monthDay:I

    aput v10, v2, v9

    .line 1159
    iput-object v2, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1

    .line 1160
    .end local v2    # "bymonthday":[I
    .end local v8    # "startTime":Landroid/text/format/Time;
    :cond_7
    const/4 v9, 0x4

    if-ne p0, v9, :cond_9

    .line 1161
    const/4 v9, 0x6

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    .line 1162
    const/4 v9, 0x1

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 1163
    const/4 v9, 0x0

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 1165
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 1166
    .restart local v0    # "byday":[I
    const/4 v9, 0x1

    new-array v1, v9, [I

    .line 1167
    .restart local v1    # "bydayNum":[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1168
    .restart local v8    # "startTime":Landroid/text/format/Time;
    iget-wide v10, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 1170
    iget v9, v8, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    add-int/lit8 v4, v9, 0x1

    .line 1171
    .restart local v4    # "dayCount":I
    const/4 v9, 0x5

    if-ne v4, v9, :cond_8

    .line 1172
    const/4 v4, -0x1

    .line 1174
    :cond_8
    const/4 v9, 0x0

    aput v4, v1, v9

    .line 1175
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Lcn/nubia/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v10

    aput v10, v0, v9

    .line 1176
    iput-object v0, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    .line 1177
    iput-object v1, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    .line 1178
    .end local v0    # "byday":[I
    .end local v1    # "bydayNum":[I
    .end local v4    # "dayCount":I
    .end local v8    # "startTime":Landroid/text/format/Time;
    :cond_9
    const/4 v9, 0x6

    if-ne p0, v9, :cond_2

    .line 1179
    const/4 v9, 0x7

    iput v9, v7, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    goto/16 :goto_1
.end method


# virtual methods
.method addRecurrenceRule(Landroid/content/ContentValues;Lcn/nubia/calendar/model/CalendarEventModel;)V
    .locals 18
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1062
    move-object/from16 v0, p2

    iget-object v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1064
    .local v8, "rrule":Ljava/lang/String;
    const-string v9, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 1066
    .local v6, "end":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 1067
    .local v12, "start":J
    move-object/from16 v0, p2

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1069
    .local v4, "duration":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 1070
    .local v5, "isAllDay":Z
    cmp-long v9, v6, v12

    if-lez v9, :cond_2

    .line 1071
    if-eqz v5, :cond_1

    .line 1073
    sub-long v14, v6, v12

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v2, v14, v16

    .line 1075
    .local v2, "days":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "P"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "D"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1093
    .end local v2    # "days":J
    :cond_0
    :goto_0
    const-string v9, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v14, "dtend"

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/Long;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1095
    return-void

    .line 1078
    :cond_1
    sub-long v14, v6, v12

    const-wide/16 v16, 0x3e8

    div-long v10, v14, v16

    .line 1079
    .local v10, "seconds":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "P"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "S"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1080
    goto :goto_0

    .line 1081
    .end local v10    # "seconds":J
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1084
    if-eqz v5, :cond_3

    .line 1085
    const-string v4, "P1D"

    goto :goto_0

    .line 1086
    :cond_3
    cmp-long v9, v6, v12

    if-nez v9, :cond_4

    .line 1087
    const-string v4, "P0S"

    goto :goto_0

    .line 1089
    :cond_4
    const-string v4, "P3600S"

    goto :goto_0
.end method

.method checkTimeDependentFields(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;Landroid/content/ContentValues;I)V
    .locals 27
    .param p1, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p2, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "modifyWhich"    # I

    .prologue
    .line 751
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    move-wide/from16 v16, v0

    .line 752
    .local v16, "oldBegin":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    move-wide/from16 v18, v0

    .line 753
    .local v18, "oldEnd":J
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 754
    .local v14, "oldAllDay":Z
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 755
    .local v15, "oldRrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 756
    .local v22, "oldTimezone":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 758
    .local v23, "oldmRdate":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 759
    .local v6, "newBegin":J
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 760
    .local v8, "newEnd":J
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 761
    .local v4, "newAllDay":Z
    move-object/from16 v0, p2

    iget-object v5, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 762
    .local v5, "newRrule":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 763
    .local v10, "newTimezone":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 766
    .local v11, "newmRdate":Ljava/lang/String;
    cmp-long v25, v16, v6

    if-nez v25, :cond_1

    cmp-long v25, v18, v8

    if-nez v25, :cond_1

    if-ne v14, v4, :cond_1

    .line 767
    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 768
    move-object/from16 v0, v22

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 769
    const-string v25, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 770
    const-string v25, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 771
    const-string v25, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 772
    const-string v25, "allDay"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 773
    const-string v25, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 774
    const-string v25, "eventTimezone"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 775
    const-string v25, "rdate"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 790
    const/16 v25, 0x3

    move/from16 v0, p4

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 791
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    move-wide/from16 v20, v0

    .line 792
    .local v20, "oldStartMillis":J
    cmp-long v25, v16, v6

    if-eqz v25, :cond_2

    .line 794
    sub-long v12, v6, v16

    .line 795
    .local v12, "offset":J
    add-long v20, v20, v12

    .line 797
    .end local v12    # "offset":J
    :cond_2
    if-eqz v4, :cond_3

    .line 798
    new-instance v24, Landroid/text/format/Time;

    const-string v25, "UTC"

    invoke-direct/range {v24 .. v25}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 799
    .local v24, "time":Landroid/text/format/Time;
    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 800
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 801
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 802
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 803
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 805
    .end local v24    # "time":Landroid/text/format/Time;
    :cond_3
    const-string v25, "dtstart"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected constructDefaultEndTime(J)J
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 743
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected constructDefaultStartTime(J)J
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v4, 0x0

    .line 722
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 723
    .local v0, "defaultStart":Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 724
    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 725
    const/16 v1, 0x1e

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 726
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 727
    .local v2, "defaultStartMillis":J
    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 730
    .end local v2    # "defaultStartMillis":J
    :goto_0
    return-wide v2

    .restart local v2    # "defaultStartMillis":J
    :cond_0
    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method getContentValuesFromModel(Lcn/nubia/calendar/model/CalendarEventModel;)Landroid/content/ContentValues;
    .locals 22
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1375
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1376
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 1377
    .local v10, "isAllDay":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1378
    .local v12, "rrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 1379
    .local v11, "rdate":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1380
    .local v16, "timezone":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 1381
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    .line 1383
    :cond_0
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v13, "startTime":Landroid/text/format/Time;
    new-instance v5, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1386
    .local v5, "endTime":Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1387
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1389
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1393
    .local v18, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 1394
    .local v6, "calendarId":J
    if-eqz v10, :cond_3

    .line 1397
    const-string v16, "UTC"

    .line 1398
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1399
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1400
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1401
    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1402
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v14

    .line 1404
    .local v14, "startMillis":J
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Landroid/text/format/Time;->hour:I

    .line 1405
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Landroid/text/format/Time;->minute:I

    .line 1406
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Landroid/text/format/Time;->second:I

    .line 1407
    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1408
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 1409
    .local v8, "endMillis":J
    const-wide/32 v20, 0x5265c00

    add-long v20, v20, v14

    cmp-long v19, v8, v20

    if-gez v19, :cond_1

    .line 1413
    const-wide/32 v20, 0x5265c00

    add-long v8, v14, v20

    .line 1420
    :cond_1
    :goto_0
    const-string v19, "calendar_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1421
    const-string v19, "eventTimezone"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v20, "allDay"

    if-eqz v10, :cond_4

    const/16 v19, 0x1

    :goto_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1424
    const-string v19, "dtstart"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1425
    const-string v19, "rrule"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1427
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->addRecurrenceRule(Landroid/content/ContentValues;Lcn/nubia/calendar/model/CalendarEventModel;)V

    .line 1433
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1434
    const-string v19, "description"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1439
    const-string v19, "eventLocation"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :goto_4
    const-string v19, "availability"

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1444
    const-string v20, "hasAttendeeData"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    .line 1447
    .local v4, "accessLevel":I
    if-lez v4, :cond_2

    .line 1451
    add-int/lit8 v4, v4, 0x1

    .line 1453
    :cond_2
    const-string v19, "accessLevel"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1454
    const-string v19, "eventStatus"

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1456
    return-object v18

    .line 1416
    .end local v4    # "accessLevel":I
    .end local v8    # "endMillis":J
    .end local v14    # "startMillis":J
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v14

    .line 1417
    .restart local v14    # "startMillis":J
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .restart local v8    # "endMillis":J
    goto/16 :goto_0

    .line 1423
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1429
    :cond_5
    const-string v20, "duration"

    const/16 v19, 0x0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string v19, "dtend"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1431
    const-string v19, "rdate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1436
    :cond_6
    const-string v20, "description"

    const/16 v19, 0x0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1441
    :cond_7
    const-string v20, "eventLocation"

    const/16 v19, 0x0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1444
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_5
.end method

.method public releasemService()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/AsyncQueryService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 272
    :cond_0
    return-void
.end method

.method public saveEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;I)Z
    .locals 44
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p2, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p3, "modifyWhich"    # I

    .prologue
    .line 319
    const/4 v12, 0x0

    .line 324
    .local v12, "forceSaveReminders":Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mEventOk:Z

    if-nez v13, :cond_0

    .line 328
    const/4 v13, 0x0

    .line 686
    :goto_0
    return v13

    .line 334
    :cond_0
    if-nez p1, :cond_1

    .line 335
    const-string v13, "EditEventHelper"

    const-string v14, "Attempted to save null model."

    invoke-static {v13, v14}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v13, 0x0

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendar/model/CalendarEventModel;->isValid()Z

    move-result v13

    if-nez v13, :cond_2

    .line 339
    const-string v13, "EditEventHelper"

    const-string v14, "Attempted to save invalid model."

    invoke-static {v13, v14}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v13, 0x0

    goto :goto_0

    .line 342
    :cond_2
    if-eqz p2, :cond_3

    invoke-static/range {p1 .. p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->isSameEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 343
    const-string v13, "EditEventHelper"

    const-string v14, "Attempted to update existing event but models didn\'t refer to the same event."

    invoke-static {v13, v14}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v13, 0x0

    goto :goto_0

    .line 348
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p1 .. p2}, Lcn/nubia/calendar/model/CalendarEventModel;->isUnchanged(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 349
    const/4 v13, 0x0

    goto :goto_0

    .line 351
    :cond_4
    if-nez p2, :cond_5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v13}, Lcn/nubia/calendar/util/Utils;->equalLeapEvent(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 352
    const/4 v13, 0x0

    goto :goto_0

    .line 354
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v28, -0x1

    .line 357
    .local v28, "eventIdIndex":I
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->getContentValuesFromModel(Lcn/nubia/calendar/model/CalendarEventModel;)Landroid/content/ContentValues;

    move-result-object v43

    .line 359
    .local v43, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v13, :cond_6

    if-nez p2, :cond_6

    .line 360
    const-string v13, "EditEventHelper"

    const-string v14, "Existing event but no originalModel provided. Aborting save."

    invoke-static {v13, v14}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v13, 0x0

    goto :goto_0

    .line 364
    :cond_6
    const/16 v42, 0x0

    .line 365
    .local v42, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 366
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v42

    .line 370
    :cond_7
    move-object/from16 v0, p1

    iget-object v10, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 371
    .local v10, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 372
    .local v32, "len":I
    const-string v14, "hasAlarm"

    if-lez v32, :cond_e

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    if-nez v42, :cond_f

    .line 375
    const-string v13, "hasAttendeeData"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v13, "eventStatus"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 378
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 379
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 380
    .local v24, "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v12, 0x1

    .line 511
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_8
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/CalendarEventModel;->setModifyWhich(I)V

    .line 515
    const/4 v13, -0x1

    move/from16 v0, v28

    if-eq v0, v13, :cond_1b

    const/16 v34, 0x1

    .line 517
    .local v34, "newEvent":Z
    :goto_3
    if-eqz p2, :cond_1c

    .line 518
    move-object/from16 v0, p2

    iget-object v11, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 523
    .local v11, "originalReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    :goto_4
    if-eqz v34, :cond_1d

    .line 524
    move/from16 v0, v28

    invoke-static {v7, v0, v10, v11, v12}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 533
    :cond_9
    :goto_5
    if-eqz p2, :cond_a

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    invoke-virtual {v13, v14, v15}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setEventId(J)V

    .line 540
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v29, v0

    .line 542
    .local v29, "hasAttendeeData":Z
    if-eqz v29, :cond_1f

    move-object/from16 v0, p1

    iget v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1f

    .line 545
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 546
    .local v39, "ownerEmail":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    if-eqz v13, :cond_b

    .line 547
    invoke-static/range {v39 .. v39}, Lcn/nubia/calendar/util/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 550
    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentValues;->clear()V

    .line 551
    const-string v13, "attendeeEmail"

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v13, "attendeeRelationship"

    const/4 v14, 0x2

    .line 553
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 552
    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v13, "attendeeType"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v13, "attendeeStatus"

    const/4 v14, 0x1

    .line 556
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 555
    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    if-eqz v34, :cond_1e

    .line 559
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 560
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 561
    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    const-string v13, "event_id"

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 567
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v39    # "ownerEmail":Ljava/lang/String;
    :cond_b
    :goto_7
    if-eqz v29, :cond_28

    if-nez v34, :cond_c

    if-eqz v42, :cond_28

    .line 589
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendar/model/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v23

    .line 591
    .local v23, "attendees":Ljava/lang/String;
    if-eqz p2, :cond_20

    .line 592
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/calendar/model/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v37

    .line 598
    .local v37, "originalAttendeesString":Ljava/lang/String;
    :goto_8
    if-nez v34, :cond_d

    .line 599
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_28

    .line 603
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v33, v0

    .line 604
    .local v33, "newAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    new-instance v41, Ljava/util/LinkedList;

    invoke-direct/range {v41 .. v41}, Ljava/util/LinkedList;-><init>()V

    .line 608
    .local v41, "removedAttendees":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v42, :cond_21

    invoke-static/range {v42 .. v42}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 613
    .local v8, "eventId":J
    :goto_9
    if-nez v34, :cond_26

    .line 614
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->clear()V

    .line 615
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v36, v0

    .line 616
    .local v36, "originalAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 617
    .local v38, "originalEmail":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 619
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 372
    .end local v8    # "eventId":J
    .end local v11    # "originalReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    .end local v23    # "attendees":Ljava/lang/String;
    .end local v29    # "hasAttendeeData":Z
    .end local v33    # "newAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    .end local v34    # "newEvent":Z
    .end local v36    # "originalAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    .end local v37    # "originalAttendeesString":Ljava/lang/String;
    .end local v38    # "originalEmail":Ljava/lang/String;
    .end local v41    # "removedAttendees":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 383
    :cond_f
    if-eqz p2, :cond_10

    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 384
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 385
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 387
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 386
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 388
    :cond_10
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 389
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v43

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->checkTimeDependentFields(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 392
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 393
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 392
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 394
    :cond_11
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 397
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 398
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 397
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 400
    :cond_12
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_14

    .line 403
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    move-wide/from16 v26, v0

    .line 404
    .local v26, "begin":J
    const-string v13, "original_sync_id"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v13, "originalInstanceTime"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 407
    .local v6, "allDay":Z
    const-string v14, "originalAllDay"

    if-eqz v6, :cond_13

    const/4 v13, 0x1

    :goto_b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v13, "eventStatus"

    move-object/from16 v0, p2

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 411
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 412
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 413
    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v12, 0x1

    .line 416
    goto/16 :goto_2

    .line 407
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_13
    const/4 v13, 0x0

    goto :goto_b

    .line 416
    .end local v6    # "allDay":Z
    .end local v26    # "begin":J
    :cond_14
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_19

    .line 418
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 423
    invoke-static/range {p1 .. p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->isFirstEventInSeries(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 426
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcn/nubia/calendar/model/CalendarEventModel;->setFirstEventInSeriesChanged(Z)V

    .line 429
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :goto_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 443
    const-string v13, "eventStatus"

    move-object/from16 v0, p2

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 445
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 444
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :goto_d
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 433
    :cond_15
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcn/nubia/calendar/model/CalendarEventModel;->setFirstEventInSeriesChanged(Z)V

    .line 440
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v14, v15}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel;J)Ljava/lang/String;

    goto :goto_c

    .line 447
    :cond_16
    invoke-static/range {p1 .. p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->isFirstEventInSeries(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 449
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcn/nubia/calendar/model/CalendarEventModel;->setFirstEventInSeriesChanged(Z)V

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v43

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->checkTimeDependentFields(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 455
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 456
    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 460
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_17
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcn/nubia/calendar/model/CalendarEventModel;->setFirstEventInSeriesChanged(Z)V

    .line 474
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v14, v15}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel;J)Ljava/lang/String;

    move-result-object v35

    .line 476
    .local v35, "newRrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 477
    const-string v13, "rrule"

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 482
    const-string v13, "eventStatus"

    move-object/from16 v0, p2

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 484
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 485
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 483
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 490
    .end local v35    # "newRrule":Ljava/lang/String;
    :cond_19
    const/4 v13, 0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_8

    .line 492
    move-object/from16 v0, p1

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 496
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 499
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 500
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 499
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 503
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v43

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->checkTimeDependentFields(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 505
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 506
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 505
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 515
    :cond_1b
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 520
    .restart local v34    # "newEvent":Z
    :cond_1c
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11    # "originalReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    goto/16 :goto_4

    .line 526
    :cond_1d
    if-eqz v42, :cond_9

    .line 527
    invoke-static/range {v42 .. v42}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 528
    .restart local v8    # "eventId":J
    invoke-static/range {v7 .. v12}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_5

    .line 563
    .end local v8    # "eventId":J
    .restart local v29    # "hasAttendeeData":Z
    .restart local v39    # "ownerEmail":Ljava/lang/String;
    :cond_1e
    const-string v13, "event_id"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 565
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_6

    .line 569
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v39    # "ownerEmail":Ljava/lang/String;
    :cond_1f
    if-eqz v29, :cond_b

    move-object/from16 v0, p1

    iget v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    move-object/from16 v0, p2

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    if-eq v13, v14, :cond_b

    move-object/from16 v0, p1

    iget v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    .line 576
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    int-to-long v14, v14

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 579
    .local v21, "attUri":Landroid/net/Uri;
    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentValues;->clear()V

    .line 580
    const-string v13, "attendeeStatus"

    move-object/from16 v0, p1

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v13, "event_id"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 583
    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 594
    .end local v21    # "attUri":Landroid/net/Uri;
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    .restart local v23    # "attendees":Ljava/lang/String;
    :cond_20
    const-string v37, ""

    .restart local v37    # "originalAttendeesString":Ljava/lang/String;
    goto/16 :goto_8

    .line 608
    .restart local v33    # "newAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    .restart local v41    # "removedAttendees":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_21
    const-wide/16 v8, -0x1

    goto/16 :goto_9

    .line 622
    .restart local v8    # "eventId":J
    .restart local v36    # "originalAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    .restart local v38    # "originalEmail":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 627
    .end local v38    # "originalEmail":Ljava/lang/String;
    :cond_23
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lez v13, :cond_26

    .line 628
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 629
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 631
    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v0, v13, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 632
    .local v20, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v20, v13

    .line 633
    const/16 v30, 0x1

    .line 634
    .local v30, "i":I
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v13, "event_id=? AND attendeeEmail IN ("

    move-object/from16 v0, v25

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .local v25, "deleteWhere":Ljava/lang/StringBuilder;
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 637
    .local v40, "removedAttendee":Ljava/lang/String;
    const/4 v14, 0x1

    move/from16 v0, v30

    if-le v0, v14, :cond_24

    .line 638
    const-string v14, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_24
    const-string v14, "?"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    add-int/lit8 v31, v30, 0x1

    .end local v30    # "i":I
    .local v31, "i":I
    aput-object v40, v20, v30

    move/from16 v30, v31

    .line 642
    .end local v31    # "i":I
    .restart local v30    # "i":I
    goto :goto_e

    .line 643
    .end local v40    # "removedAttendee":Ljava/lang/String;
    :cond_25
    const-string v13, ")"

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 645
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v20    # "args":[Ljava/lang/String;
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v25    # "deleteWhere":Ljava/lang/StringBuilder;
    .end local v30    # "i":I
    .end local v36    # "originalAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    :cond_26
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_28

    .line 651
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 652
    .local v22, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentValues;->clear()V

    .line 653
    const-string v14, "attendeeName"

    move-object/from16 v0, v22

    iget-object v15, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v14, "attendeeEmail"

    move-object/from16 v0, v22

    iget-object v15, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v14, "attendeeRelationship"

    const/4 v15, 0x1

    .line 656
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 655
    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v14, "attendeeType"

    const/4 v15, 0x1

    .line 658
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 657
    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const-string v14, "attendeeStatus"

    const/4 v15, 0x0

    .line 660
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 659
    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    if-eqz v34, :cond_27

    .line 663
    sget-object v14, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 664
    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 665
    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    const-string v14, "event_id"

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 672
    :goto_10
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 668
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_27
    const-string v14, "event_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 669
    sget-object v14, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 670
    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .restart local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    goto :goto_10

    .line 679
    .end local v8    # "eventId":J
    .end local v22    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    .end local v23    # "attendees":Ljava/lang/String;
    .end local v24    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v33    # "newAttendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    .end local v37    # "originalAttendeesString":Ljava/lang/String;
    .end local v41    # "removedAttendees":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v14}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v14

    const-string v16, "com.android.calendar"

    const-wide/16 v18, 0x0

    move-object/from16 v15, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v19}, Lcn/nubia/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 686
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public updatePastEvents(Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel;J)Ljava/lang/String;
    .locals 23
    .param p2, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p3, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcn/nubia/calendar/model/CalendarEventModel;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 830
    .local v13, "origAllDay":Z
    move-object/from16 v0, p2

    iget-object v15, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 831
    .local v15, "origRrule":Ljava/lang/String;
    move-object v12, v15

    .line 833
    .local v12, "newRrule":Ljava/lang/String;
    new-instance v14, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct {v14}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 834
    .local v14, "origRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    invoke-virtual {v14, v15}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 838
    .local v6, "startTimeMillis":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 839
    .local v4, "dtstart":Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget-object v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v8, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 840
    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 842
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 844
    .local v18, "updateValues":Landroid/content/ContentValues;
    iget v8, v14, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    if-lez v8, :cond_1

    .line 860
    new-instance v5, Lcn/nubia/calendarcommon2/RecurrenceSet;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v8, v9, v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .local v5, "recurSet":Lcn/nubia/calendarcommon2/RecurrenceSet;
    new-instance v3, Lcn/nubia/calendarcommon2/RecurrenceProcessor;

    invoke-direct {v3}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;-><init>()V

    .local v3, "recurProc":Lcn/nubia/calendarcommon2/RecurrenceProcessor;
    move-wide/from16 v8, p3

    .line 865
    :try_start_0
    invoke-virtual/range {v3 .. v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/RecurrenceSet;JJ)[J
    :try_end_0
    .catch Lcn/nubia/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 871
    .local v16, "recurrences":[J
    move-object/from16 v0, v16

    array-length v8, v0

    if-nez v8, :cond_0

    .line 872
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "can\'t use this method on first instance"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 867
    .end local v16    # "recurrences":[J
    :catch_0
    move-exception v10

    .line 868
    .local v10, "de":Lcn/nubia/calendarcommon2/DateException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 876
    .end local v10    # "de":Lcn/nubia/calendarcommon2/DateException;
    .restart local v16    # "recurrences":[J
    :cond_0
    new-instance v11, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct {v11}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 877
    .local v11, "excepRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    invoke-virtual {v11, v15}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 879
    iget v8, v11, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    move-object/from16 v0, v16

    array-length v9, v0

    sub-int/2addr v8, v9

    iput v8, v11, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    .line 880
    invoke-virtual {v11}, Lcn/nubia/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 882
    move-object/from16 v0, v16

    array-length v8, v0

    iput v8, v14, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    .line 916
    .end local v3    # "recurProc":Lcn/nubia/calendarcommon2/RecurrenceProcessor;
    .end local v5    # "recurSet":Lcn/nubia/calendarcommon2/RecurrenceSet;
    .end local v11    # "excepRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    .end local v16    # "recurrences":[J
    :goto_0
    const-string v8, "rrule"

    invoke-virtual {v14}, Lcn/nubia/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v8, "dtstart"

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    move-object/from16 v0, p2

    iget-object v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 919
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 921
    .local v2, "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    return-object v12

    .line 890
    .end local v2    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 891
    .local v17, "untilTime":Landroid/text/format/Time;
    const-string v8, "UTC"

    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 895
    const-wide/16 v8, 0x3e8

    sub-long v8, p3, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 897
    if-eqz v13, :cond_2

    .line 898
    const/4 v8, 0x0

    move-object/from16 v0, v17

    iput v8, v0, Landroid/text/format/Time;->hour:I

    .line 899
    const/4 v8, 0x0

    move-object/from16 v0, v17

    iput v8, v0, Landroid/text/format/Time;->minute:I

    .line 900
    const/4 v8, 0x0

    move-object/from16 v0, v17

    iput v8, v0, Landroid/text/format/Time;->second:I

    .line 901
    const/4 v8, 0x1

    move-object/from16 v0, v17

    iput-boolean v8, v0, Landroid/text/format/Time;->allDay:Z

    .line 902
    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 907
    const/4 v8, 0x0

    iput v8, v4, Landroid/text/format/Time;->hour:I

    .line 908
    const/4 v8, 0x0

    iput v8, v4, Landroid/text/format/Time;->minute:I

    .line 909
    const/4 v8, 0x0

    iput v8, v4, Landroid/text/format/Time;->second:I

    .line 910
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/text/format/Time;->allDay:Z

    .line 911
    const-string v8, "UTC"

    iput-object v8, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 913
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0
.end method
