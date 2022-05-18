.class public Lcn/nubia/calendar/cloud/CalendarSyncItem;
.super Lcn/nubia/cloud/sync/common/SyncItem;
.source "CalendarSyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# static fields
.field public static final ACCESSLEVEL_INDEX:I = 0x12

.field public static final ACCOUNT_NAME_INDEX:I = 0x27

.field public static final ACCOUNT_TYPE_INDEX:I = 0x28

.field public static final ALLDAY_INDEX:I = 0x11

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final AVAILABILITY_INDEX:I = 0x13

.field public static final CALENDAR_DISPLAYNAME_INDEX:I = 0x29

.field public static final CALENDAR_ID_INDEX:I = 0x5

.field public static CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETED_INDEX:I = 0x25

.field public static final DESCRIPTION_INDEX:I = 0x8

.field public static final DIRTY_INDEX:I = 0x2

.field public static final DTEND_INDEX:I = 0xe

.field public static final DTSTART_INDEX:I = 0xd

.field public static final DURATION_INDEX:I = 0x10

.field public static final EVENTCOLOR_INDEX:I = 0x9

.field public static final EVENTCOLOR_INDEX_INDEX:I = 0xa

.field public static final EVENTENDTIMEZONE_INDEX:I = 0x26

.field public static final EVENTLOCATION_INDEX:I = 0x7

.field public static final EVENTSTATUS_INDEX:I = 0xb

.field public static final EVENTTIMEZONE_INDEX:I = 0xf

.field public static final EXDATE_INDEX:I = 0x19

.field public static final EXRULE_INDEX:I = 0x18

.field public static final GUESTSCANINVITEOTHERS_INDEX:I = 0x21

.field public static final GUESTSCANMODIFY_INDEX:I = 0x20

.field public static final GUESTSCANSEEGUESTS_INDEX:I = 0x22

.field public static final HASALARM_INDEX:I = 0x14

.field public static final HASATTENDEEDATA_INDEX:I = 0x1f

.field public static final HASEXTENDEDPROPERTIES_INDEX:I = 0x15

.field public static final ISORGANIZER_INDEX:I = 0x24

.field public static final LASTDATE_INDEX:I = 0x1e

.field public static final LASTSYNCED_INDEX:I = 0x4

.field public static final MUTATORS_INDEX:I = 0x3

.field public static final ORGANIZER_INDEX:I = 0x23

.field public static final ORIGINALALLDAY_INDEX:I = 0x1d

.field public static final ORIGINALINSTANCETIME_INDEX:I = 0x1c

.field public static final ORIGINAL_ID_INDEX:I = 0x1a

.field public static final ORIGINAL_SYNC_ID_INDEX:I = 0x1b

.field public static final RDATE_INDEX:I = 0x17

.field public static final REMINDERS_METHOD:I = 0x2b

.field public static final REMINDERS_MINUTES:I = 0x2a

.field public static final RRULE_INDEX:I = 0x16

.field public static final SELFATTENDEESTATUS_INDEX:I = 0xc

.field public static final TITLE_INDEX:I = 0x6

.field public static final _ID_INDEX:I = 0x0

.field public static final _SYNC_ID_INDEX:I = 0x1


# instance fields
.field public _id:I

.field public _sync_id:Ljava/lang/String;

.field public accessLevel:I

.field public account_name:Ljava/lang/String;

.field public account_type:Ljava/lang/String;

.field public allDay:I

.field public availability:I

.field public calendar_displayName:Ljava/lang/String;

.field public calendar_id:I

.field public deleted:I

.field public description:Ljava/lang/String;

.field public dirty:I

.field public dtend:Ljava/lang/String;

.field public dtstart:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public eventColor:I

.field public eventColor_index:Ljava/lang/String;

.field public eventEndTimezone:Ljava/lang/String;

.field public eventLocation:Ljava/lang/String;

.field public eventStatus:I

.field public eventTimezone:Ljava/lang/String;

.field public exdate:Ljava/lang/String;

.field public exrule:Ljava/lang/String;

.field public guestsCanInviteOthers:I

.field public guestsCanModify:I

.field public guestsCanSeeGuests:I

.field public hasAlarm:I

.field public hasAttendeeData:I

.field public hasExtendedProperties:I

.field public isOrganizer:Ljava/lang/String;

.field public lastDate:I

.field public lastSynced:I

.field private mCursor:Landroid/database/Cursor;

.field private mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

.field public method:I

.field public minutes:I

.field public mutators:Ljava/lang/String;

.field public organizer:Ljava/lang/String;

.field public originalAllDay:I

.field public originalInstanceTime:I

.field public original_id:I

.field public original_sync_id:Ljava/lang/String;

.field public rdate:Ljava/lang/String;

.field public rrule:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcn/nubia/calendar/cloud/CalendarSyncItem$1;

    invoke-direct {v0}, Lcn/nubia/calendar/cloud/CalendarSyncItem$1;-><init>()V

    sput-object v0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "localID"    # J
    .param p3, "serverID"    # J
    .param p5, "deleted"    # I

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcn/nubia/cloud/sync/common/SyncItem;-><init>(JJI)V

    .line 62
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcn/nubia/cloud/sync/common/SyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    .line 62
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    .line 232
    iput-object p1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 233
    return-void
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "canVisitPath"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/sync/common/SyncItem;->addAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public addAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/cloud/sync/common/SyncItem;->addAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    return-object v0
.end method

.method protected getModuleToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "com.android.calendar"

    return-object v0
.end method

.method protected onToJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 4

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "_id"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->_id:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "_sync_id"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->_sync_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "dirty"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->dirty:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "mutators"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mutators:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "lastSynced"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->lastSynced:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "calendar_id"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->calendar_id:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "title"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "eventLocation"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "description"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "eventColor"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventColor:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "eventColor_index"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventColor_index:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "eventStatus"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventStatus:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "selfAttendeeStatus"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->selfAttendeeStatus:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "dtstart"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->dtstart:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "dtend"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->dtend:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "eventTimezone"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "duration"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "allDay"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->allDay:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "accessLevel"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->accessLevel:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "availability"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->availability:I

    .line 267
    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "hasAlarm"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->hasAlarm:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "hasExtendedProperties"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->hasExtendedProperties:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "rrule"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->rrule:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "rdate"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->rdate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "exrule"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->exrule:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "exdate"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->exdate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "original_id"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->original_id:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "original_sync_id"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->original_sync_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "originalInstanceTime"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->originalInstanceTime:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 280
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "originalAllDay"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->originalAllDay:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 282
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "lastDate"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->lastDate:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "hasAttendeeData"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->hasAttendeeData:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "guestsCanModify"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->guestsCanModify:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "guestsCanInviteOthers"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->guestsCanInviteOthers:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "guestsCanSeeGuests"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->guestsCanSeeGuests:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 291
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "organizer"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->organizer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "isOrganizer"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->isOrganizer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "deleted"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->deleted:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "eventEndTimezone"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventEndTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "account_name"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->account_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "account_type"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->account_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "calendar_displayName"

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->calendar_displayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "minutes"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->minutes:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "method"

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->method:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v1, "huangdi0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onToJson minutes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->minutes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "huangdi0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onToJson title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "huangdi0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onToJson method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->method:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setValueFormReminder(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 114
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "minutes"

    aput-object v0, v2, v1

    const-string v0, "method"

    aput-object v0, v2, v4

    .line 117
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    .line 121
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    iput-object v7, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->minutes:I

    .line 125
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->method:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    iput-object v7, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 126
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    iput-object v7, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 129
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    iput-object v7, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mCursor:Landroid/database/Cursor;

    .line 133
    :cond_3
    throw v0
.end method

.method public setValuesFromeCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 136
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->_id:I

    .line 137
    const-string v1, "_sync_id"

    .line 138
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 137
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->_sync_id:Ljava/lang/String;

    .line 139
    const-string v1, "dirty"

    .line 140
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 139
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->dirty:I

    .line 141
    const-string v1, "mutators"

    .line 142
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 141
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->mutators:Ljava/lang/String;

    .line 143
    const-string v1, "lastSynced"

    .line 144
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->lastSynced:I

    .line 145
    const-string v1, "calendar_id"

    .line 146
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->calendar_id:I

    .line 147
    const-string v1, "title"

    .line 148
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 147
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->title:Ljava/lang/String;

    .line 149
    const-string v1, "eventLocation"

    .line 150
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 149
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventLocation:Ljava/lang/String;

    .line 151
    const-string v1, "description"

    .line 152
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 151
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->description:Ljava/lang/String;

    .line 153
    const-string v1, "eventColor"

    .line 154
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 153
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventColor:I

    .line 155
    const-string v1, "eventColor_index"

    .line 156
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 155
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventColor_index:Ljava/lang/String;

    .line 157
    const-string v1, "eventStatus"

    .line 158
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 157
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventStatus:I

    .line 159
    const-string v1, "selfAttendeeStatus"

    .line 160
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 159
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->selfAttendeeStatus:I

    .line 161
    const-string v1, "dtstart"

    .line 162
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->dtstart:Ljava/lang/String;

    .line 163
    const-string v1, "dtend"

    .line 164
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 163
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->dtend:Ljava/lang/String;

    .line 165
    const-string v1, "eventTimezone"

    .line 166
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 165
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventTimezone:Ljava/lang/String;

    .line 167
    const-string v1, "duration"

    .line 168
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 167
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->duration:Ljava/lang/String;

    .line 169
    const-string v1, "allDay"

    .line 170
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->allDay:I

    .line 171
    const-string v1, "accessLevel"

    .line 172
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->accessLevel:I

    .line 173
    const-string v1, "availability"

    .line 174
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 173
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->availability:I

    .line 175
    const-string v1, "hasAlarm"

    .line 176
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 175
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->hasAlarm:I

    .line 177
    const-string v1, "hasExtendedProperties"

    .line 179
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 178
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->hasExtendedProperties:I

    .line 180
    const-string v1, "rrule"

    .line 181
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 180
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->rrule:Ljava/lang/String;

    .line 182
    const-string v1, "rdate"

    .line 183
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 182
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->rdate:Ljava/lang/String;

    .line 184
    const-string v1, "exrule"

    .line 185
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 184
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->exrule:Ljava/lang/String;

    .line 186
    const-string v1, "exdate"

    .line 187
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 186
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->exdate:Ljava/lang/String;

    .line 188
    const-string v1, "original_id"

    .line 189
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 188
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->original_id:I

    .line 190
    const-string v1, "original_sync_id"

    .line 191
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 190
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->original_sync_id:Ljava/lang/String;

    .line 192
    const-string v1, "originalInstanceTime"

    .line 194
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 193
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->originalInstanceTime:I

    .line 195
    const-string v1, "originalAllDay"

    .line 196
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 195
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->originalAllDay:I

    .line 197
    const-string v1, "lastDate"

    .line 198
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 197
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->lastDate:I

    .line 199
    const-string v1, "hasAttendeeData"

    .line 200
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 199
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->hasAttendeeData:I

    .line 201
    const-string v1, "guestsCanModify"

    .line 202
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 201
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->guestsCanModify:I

    .line 203
    const-string v1, "guestsCanInviteOthers"

    .line 205
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 204
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->guestsCanInviteOthers:I

    .line 206
    const-string v1, "guestsCanSeeGuests"

    .line 207
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 206
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->guestsCanSeeGuests:I

    .line 208
    const-string v1, "organizer"

    .line 209
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 208
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->organizer:Ljava/lang/String;

    .line 210
    const-string v1, "isOrganizer"

    .line 211
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 210
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->isOrganizer:Ljava/lang/String;

    .line 212
    const-string v1, "deleted"

    .line 213
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 212
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->deleted:I

    .line 214
    const-string v1, "eventEndTimezone"

    .line 215
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 214
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->eventEndTimezone:Ljava/lang/String;

    .line 216
    iget v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->calendar_id:I

    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getCalendarAccountItem(Landroid/content/Context;J)Lcn/nubia/calendar/cloud/AccountItem;

    move-result-object v0

    .line 218
    .local v0, "accountItem":Lcn/nubia/calendar/cloud/AccountItem;
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, v0, Lcn/nubia/calendar/cloud/AccountItem;->mAccountName:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->account_name:Ljava/lang/String;

    .line 220
    iget-object v1, v0, Lcn/nubia/calendar/cloud/AccountItem;->mAccountType:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->account_type:Ljava/lang/String;

    .line 221
    iget-object v1, v0, Lcn/nubia/calendar/cloud/AccountItem;->mCalendarDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->calendar_displayName:Ljava/lang/String;

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "nobady@gmail.com"

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->account_name:Ljava/lang/String;

    .line 225
    const-string v1, "LOCAL"

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->account_type:Ljava/lang/String;

    .line 226
    const-string v1, "My Calendar"

    iput-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->calendar_displayName:Ljava/lang/String;

    goto :goto_0
.end method
