.class public Lcn/nubia/calendar/cloud/CalendarDirtyIterator;
.super Ljava/lang/Object;
.source "CalendarDirtyIterator.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/SyncDataIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/sync/common/SyncDataIterator",
        "<",
        "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALENDARS_COLUMNS:[Ljava/lang/String;

.field private static EVENTS_COLUMNS:[Ljava/lang/String; = null

.field private static REMINDERS_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CalendarDirtyIterator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mIndex:I

.field private mRawCalendarSync:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/16 v0, 0x18

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

    const-string v2, "mutators"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_color_index"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_location"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "canModifyTimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "canPartiallyUpdate"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->CALENDARS_COLUMNS:[Ljava/lang/String;

    .line 34
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const-string v1, "dirty"

    aput-object v1, v0, v5

    const-string v1, "mutators"

    aput-object v1, v0, v6

    const-string v1, "lastSynced"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventColor"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventColor_index"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hasExtendedProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "originalAllDay"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lastDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "guestsCanInviteOthers"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "guestsCanSeeGuests"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "isOrganizer"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "eventEndTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->EVENTS_COLUMNS:[Ljava/lang/String;

    .line 45
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->REMINDERS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mRawCalendarSync:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->queryDirtyCalendar()V

    .line 52
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    .line 77
    :cond_0
    return-void
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 23
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "dirtyCalendar":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/cloud/CalendarSyncItem;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 91
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez p1, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    .line 93
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 92
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 94
    .local v19, "localId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    const-string v9, "_sync_id"

    .line 95
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 94
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 96
    .local v6, "serverId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    const-string v9, "deleted"

    .line 97
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 96
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 99
    .local v8, "isDeleted":I
    new-instance v3, Lcn/nubia/calendar/cloud/CalendarSyncItem;

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-direct/range {v3 .. v8}, Lcn/nubia/calendar/cloud/CalendarSyncItem;-><init>(JJI)V

    .line 101
    .local v3, "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4, v5}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->setValuesFromeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->setValueFormReminder(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v3}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_1
    invoke-virtual {v3}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 116
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mIndex:I

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v3    # "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    .end local v6    # "serverId":J
    .end local v8    # "isDeleted":I
    .end local v19    # "localId":I
    :catch_0
    move-exception v15

    .line 122
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->getSyncDeleteSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 126
    .local v20, "pref":Landroid/content/SharedPreferences;
    const-string v4, "delete_event_id"

    const-string v5, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 127
    .local v17, "id":Ljava/lang/String;
    const-string v4, "delete_event_sync_id"

    const-string v5, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 128
    .local v21, "sync_id":Ljava/lang/String;
    const-string v4, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, "ids":[Ljava/lang/String;
    const-string v4, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 130
    .local v22, "sync_ids":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_3

    .line 132
    :try_start_1
    new-instance v3, Lcn/nubia/calendar/cloud/CalendarSyncItem;

    aget-object v4, v18, v16

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    aget-object v4, v22, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v12, v4

    const/4 v14, 0x1

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcn/nubia/calendar/cloud/CalendarSyncItem;-><init>(JJI)V

    .line 135
    .restart local v3    # "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v3    # "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 106
    .end local v16    # "i":I
    .end local v17    # "id":Ljava/lang/String;
    .end local v18    # "ids":[Ljava/lang/String;
    .end local v20    # "pref":Landroid/content/SharedPreferences;
    .end local v21    # "sync_id":Ljava/lang/String;
    .end local v22    # "sync_ids":[Ljava/lang/String;
    .restart local v3    # "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    .restart local v6    # "serverId":J
    .restart local v8    # "isDeleted":I
    .restart local v19    # "localId":I
    :cond_2
    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 136
    .end local v3    # "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    .end local v6    # "serverId":J
    .end local v8    # "isDeleted":I
    .end local v19    # "localId":I
    .restart local v16    # "i":I
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v18    # "ids":[Ljava/lang/String;
    .restart local v20    # "pref":Landroid/content/SharedPreferences;
    .restart local v21    # "sync_id":Ljava/lang/String;
    .restart local v22    # "sync_ids":[Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 138
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v4, "CalendarDirtyIterator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 151
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mIndex:I

    iget v1, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryDirtyCalendar()V
    .locals 6

    .prologue
    .line 56
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "rawCalendarUri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->EVENTS_COLUMNS:[Ljava/lang/String;

    const-string v3, "dirty= 1 AND organizer = \'nobody@gmail.com\'"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    .line 63
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCount:I

    .line 65
    iget v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCount:I

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    :cond_0
    return-void
.end method
