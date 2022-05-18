.class public Lcn/nubia/calendar/cloud/CalendarCloudSync;
.super Ljava/lang/Object;
.source "CalendarCloudSync.java"


# static fields
.field private static final BATCH_READ_REMOTE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "wll"

.field private static final calendarUri:Landroid/net/Uri;

.field private static final rawCalendarUri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirtyCalendar:Lcn/nubia/calendar/cloud/CalendarDirtyIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    .line 42
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->calendarUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static addEvent(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J
    .param p3, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .param p5, "operation"    # Lcn/nubia/calendar/cloud/BatchOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcn/nubia/calendar/cloud/BatchOperation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p4, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    const-string v7, "account_name"

    .line 251
    invoke-virtual {p3, v7}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "accountName":Ljava/lang/String;
    const-string v7, "account_type"

    .line 253
    invoke-virtual {p3, v7}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "accountType":Ljava/lang/String;
    const-string v7, "calendar_displayName"

    .line 255
    invoke-virtual {p3, v7}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "accountDisplayName":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "_sync_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string v7, "dirty"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v7, "mutators"

    const-string v8, "mutators"

    .line 262
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v7, "lastSynced"

    const-string v8, "lastSynced"

    .line 264
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v7, "calendar_id"

    .line 266
    invoke-static {p0}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getLocalAccountId(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 265
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v7, "title"

    const-string v8, "title"

    .line 268
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v7, "eventLocation"

    const-string v8, "eventLocation"

    .line 270
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v7, "description"

    const-string v8, "description"

    .line 272
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v7, "eventColor"

    const-string v8, "eventColor"

    .line 274
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v7, "eventColor_index"

    const-string v8, "eventColor_index"

    .line 276
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v7, "eventStatus"

    const-string v8, "eventStatus"

    .line 278
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v7, "selfAttendeeStatus"

    const-string v8, "selfAttendeeStatus"

    .line 280
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v7, "dtstart"

    const-string v8, "dtstart"

    .line 282
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v7, "dtend"

    const-string v8, "dtend"

    .line 284
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v7, "eventTimezone"

    const-string v8, "eventTimezone"

    .line 286
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v7, "duration"

    const-string v8, "duration"

    .line 288
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 287
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v7, "allDay"

    const-string v8, "allDay"

    .line 290
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 289
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v7, "accessLevel"

    const-string v8, "accessLevel"

    .line 292
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v7, "availability"

    const-string v8, "availability"

    .line 294
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 293
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v7, "hasAlarm"

    const-string v8, "hasAlarm"

    .line 296
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v7, "hasExtendedProperties"

    const-string v8, "hasExtendedProperties"

    .line 298
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v7, "rrule"

    const-string v8, "rrule"

    .line 300
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 299
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v7, "lastDate"

    const-string v8, "lastDate"

    .line 318
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 317
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v7, "hasAttendeeData"

    const-string v8, "hasAttendeeData"

    .line 320
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v7, "guestsCanModify"

    const-string v8, "guestsCanModify"

    .line 322
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v7, "guestsCanInviteOthers"

    const-string v8, "guestsCanInviteOthers"

    .line 325
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 323
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v7, "guestsCanSeeGuests"

    const-string v8, "guestsCanSeeGuests"

    .line 327
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "organizer"

    const-string v8, "organizer"

    .line 329
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v7, "isOrganizer"

    const-string v8, "isOrganizer"

    .line 331
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v7, "deleted"

    const-string v8, "deleted"

    .line 333
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v7, "eventEndTimezone"

    const-string v8, "eventEndTimezone"

    .line 335
    invoke-virtual {p3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 334
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_sync_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "selection":Ljava/lang/String;
    sget-object v7, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    .line 341
    invoke-static {v7, v1, v2}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->asSyncAdatper(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 342
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 340
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 343
    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 344
    .local v3, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 345
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v0    # "accountDisplayName":Ljava/lang/String;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v4

    .line 348
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addReminderTime(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J
    .param p3, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .param p5, "operation"    # Lcn/nubia/calendar/cloud/BatchOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcn/nubia/calendar/cloud/BatchOperation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    .local p4, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v3, "valuesReminders":Landroid/content/ContentValues;
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getEventByServerId(Landroid/content/Context;J)I

    move-result v2

    .line 356
    .local v2, "eventid":I
    if-lez v2, :cond_0

    .line 357
    const-string v4, "event_id"

    .line 358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 357
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v4, "minutes"

    const-string v5, "minutes"

    .line 360
    invoke-virtual {p3, v5}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v4, "method"

    const-string v5, "method"

    .line 362
    invoke-virtual {p3, v5}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 364
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 366
    .local v0, "Remindersbuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p5, v4}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "Remindersbuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v2    # "eventid":I
    .end local v3    # "valuesReminders":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static asSyncAdatper(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    .line 244
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 239
    return-object v0
.end method

.method private clearDirtyStatus()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mDirtyCalendar:Lcn/nubia/calendar/cloud/CalendarDirtyIterator;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;->close()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mDirtyCalendar:Lcn/nubia/calendar/cloud/CalendarDirtyIterator;

    .line 102
    return-void
.end method

.method public static getCalendarAccountItem(Landroid/content/Context;J)Lcn/nubia/calendar/cloud/AccountItem;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calId"    # J

    .prologue
    const/4 v8, 0x0

    .line 552
    const/4 v6, 0x0

    .line 553
    .local v6, "accountItem":Lcn/nubia/calendar/cloud/AccountItem;
    const/4 v7, 0x0

    .line 555
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 556
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calendar_displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 563
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    :cond_0
    const-string v0, "wll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    if-eqz v7, :cond_1

    .line 572
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    .line 575
    :goto_0
    return-object v0

    .line 568
    :cond_2
    :try_start_1
    new-instance v6, Lcn/nubia/calendar/cloud/AccountItem;

    .end local v6    # "accountItem":Lcn/nubia/calendar/cloud/AccountItem;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 569
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lcn/nubia/calendar/cloud/AccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    .restart local v6    # "accountItem":Lcn/nubia/calendar/cloud/AccountItem;
    if-eqz v7, :cond_3

    .line 572
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 575
    goto :goto_0

    .line 571
    .end local v6    # "accountItem":Lcn/nubia/calendar/cloud/AccountItem;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 572
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 574
    :cond_4
    throw v0
.end method

.method public static getCalendarIdFromCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calendarDisplayName"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v7, 0x0

    .line 506
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 508
    .local v8, "id":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 511
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 512
    :cond_0
    const/4 v0, -0x1

    .line 516
    if-eqz v7, :cond_1

    .line 517
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_1
    :goto_0
    return v0

    .line 514
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 516
    if-eqz v7, :cond_3

    .line 517
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 520
    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 517
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_4
    throw v0
.end method

.method public static getDisplayNameFromId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calId"    # J

    .prologue
    const/4 v8, 0x0

    .line 524
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 525
    const-string v0, "wll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar Id is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 548
    :cond_0
    :goto_0
    return-object v7

    .line 529
    :cond_1
    const-string v7, ""

    .line 530
    .local v7, "mAccountShow":Ljava/lang/String;
    const/4 v6, 0x0

    .line 532
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 533
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "calendar_displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 538
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 539
    :cond_2
    const-string v0, "wll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v6, :cond_3

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v8

    .line 540
    goto :goto_0

    .line 542
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 544
    if-eqz v6, :cond_0

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_5
    throw v0
.end method

.method private static getEventByServerId(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverID"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    move v0, v8

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 190
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_sync_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 194
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 202
    if-eqz v6, :cond_0

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v6, 0x0

    goto :goto_0

    .line 202
    :cond_2
    if-eqz v6, :cond_3

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v6, 0x0

    :cond_3
    :goto_1
    move v0, v8

    .line 207
    goto :goto_0

    .line 199
    :catch_0
    move-exception v7

    .line 200
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-eqz v6, :cond_3

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v6, 0x0

    goto :goto_1

    .line 202
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v6, 0x0

    .line 206
    :cond_4
    throw v0
.end method

.method public static getLocalAccountId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 605
    const/4 v7, -0x1

    .line 606
    .local v7, "id":I
    const/4 v6, 0x0

    .line 608
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "account_name= \'nobody@gmail.com\' AND account_type = \'LOCAL\'  AND calendar_displayName = \'My Calendar\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 618
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 619
    :cond_0
    const/4 v0, -0x1

    .line 623
    if-eqz v6, :cond_1

    .line 624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_1
    :goto_0
    return v0

    .line 621
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 623
    if-eqz v6, :cond_3

    .line 624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 627
    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_4
    throw v0
.end method

.method public static getPresetEvent(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 211
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 212
    .local v9, "mPresentCalendar":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_sync_id"

    aput-object v0, v2, v3

    .line 214
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 216
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 229
    :cond_0
    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v6, 0x0

    .line 234
    :cond_1
    :goto_0
    return-object v9

    .line 221
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 223
    .local v8, "id":I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, "sync_id":Ljava/lang/String;
    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 226
    .end local v8    # "id":I
    .end local v10    # "sync_id":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v6, 0x0

    goto :goto_0

    .line 229
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v6, 0x0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v6, 0x0

    .line 233
    :cond_4
    throw v0
.end method

.method public static getSyncId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I

    .prologue
    .line 579
    const-string v7, ""

    .line 580
    .local v7, "sync":Ljava/lang/String;
    const/4 v6, 0x0

    .line 582
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 597
    if-eqz v6, :cond_0

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 601
    :cond_1
    :goto_0
    return-object v0

    .line 585
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    .line 586
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_sync_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 585
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 590
    :cond_3
    const-string v0, "wll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in event table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    if-eqz v6, :cond_1

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 593
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 597
    if-eqz v6, :cond_5

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v0, v7

    .line 601
    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 597
    if-eqz v6, :cond_5

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 597
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_6
    throw v0
.end method

.method public static updateEvent(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J
    .param p3, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .param p5, "operation"    # Lcn/nubia/calendar/cloud/BatchOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcn/nubia/calendar/cloud/BatchOperation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    .local p4, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    const-string v8, "account_name"

    .line 401
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "accountName":Ljava/lang/String;
    const-string v8, "account_type"

    .line 403
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "accountType":Ljava/lang/String;
    const-string v8, "calendar_displayName"

    .line 405
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "accountDisplayName":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "_id"

    const-string v9, "_id"

    .line 408
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 407
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v8, "_sync_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    const-string v8, "dirty"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v8, "mutators"

    const-string v9, "mutators"

    .line 412
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 411
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v8, "lastSynced"

    const-string v9, "lastSynced"

    .line 414
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 413
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v8, "calendar_id"

    .line 416
    invoke-static {p0}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getLocalAccountId(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 415
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v8, "title"

    const-string v9, "title"

    .line 418
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 417
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v8, "eventLocation"

    const-string v9, "eventLocation"

    .line 420
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 419
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v8, "description"

    const-string v9, "description"

    .line 422
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 421
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v8, "eventColor"

    const-string v9, "eventColor"

    .line 424
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v8, "eventColor_index"

    const-string v9, "eventColor_index"

    .line 426
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 425
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v8, "eventStatus"

    const-string v9, "eventStatus"

    .line 428
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v8, "selfAttendeeStatus"

    const-string v9, "selfAttendeeStatus"

    .line 430
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 429
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v8, "dtstart"

    const-string v9, "dtstart"

    .line 432
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 431
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v8, "dtend"

    const-string v9, "dtend"

    .line 434
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v8, "eventTimezone"

    const-string v9, "eventTimezone"

    .line 436
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 435
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v8, "duration"

    const-string v9, "duration"

    .line 438
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 437
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v8, "allDay"

    const-string v9, "allDay"

    .line 440
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v8, "accessLevel"

    const-string v9, "accessLevel"

    .line 442
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v8, "availability"

    const-string v9, "availability"

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 443
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v8, "hasAlarm"

    const-string v9, "hasAlarm"

    .line 446
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 445
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v8, "hasExtendedProperties"

    const-string v9, "hasExtendedProperties"

    .line 448
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 447
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v8, "rrule"

    const-string v9, "rrule"

    .line 450
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 449
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v8, "lastDate"

    const-string v9, "lastDate"

    .line 468
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 467
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v8, "hasAttendeeData"

    const-string v9, "hasAttendeeData"

    .line 470
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 469
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v8, "guestsCanModify"

    const-string v9, "guestsCanModify"

    .line 472
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 471
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v8, "guestsCanInviteOthers"

    const-string v9, "guestsCanInviteOthers"

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 473
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v8, "guestsCanSeeGuests"

    const-string v9, "guestsCanSeeGuests"

    .line 477
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v8, "organizer"

    const-string v9, "organizer"

    .line 479
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 478
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v8, "isOrganizer"

    const-string v9, "isOrganizer"

    .line 481
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 480
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v8, "deleted"

    const-string v9, "deleted"

    .line 483
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 482
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v8, "eventEndTimezone"

    const-string v9, "eventEndTimezone"

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 484
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_sync_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "selection":Ljava/lang/String;
    sget-object v8, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    .line 492
    invoke-static {v8, v2, v3}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->asSyncAdatper(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 493
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 491
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v9, 0x0

    .line 494
    invoke-virtual {v8, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 495
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 496
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v1    # "accountDisplayName":Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v5

    .line 498
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIdMaps(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "idMaps":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/IDMap;>;"
    new-instance v4, Lcn/nubia/calendar/cloud/BatchOperation;

    iget-object v8, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v4, v8}, Lcn/nubia/calendar/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 80
    .local v4, "operation":Lcn/nubia/calendar/cloud/BatchOperation;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/IDMap;

    .line 81
    .local v1, "idMap":Lcn/nubia/cloud/sync/common/IDMap;
    invoke-virtual {v1}, Lcn/nubia/cloud/sync/common/IDMap;->getLocalID()J

    move-result-wide v2

    .line 82
    .local v2, "locId":J
    invoke-virtual {v1}, Lcn/nubia/cloud/sync/common/IDMap;->getServerID()J

    move-result-wide v6

    .line 84
    .local v6, "serID":J
    sget-object v9, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 85
    .local v5, "uri":Landroid/net/Uri;
    const-string v9, "nobady@gmail.com"

    const-string v10, "LOCAL"

    .line 87
    invoke-static {v5, v9, v10}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->asSyncAdatper(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 88
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 86
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 88
    invoke-virtual {v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 89
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    .line 90
    const-string v9, "_sync_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 91
    const-string v9, "dirty"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 93
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    goto :goto_0

    .line 95
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "idMap":Lcn/nubia/cloud/sync/common/IDMap;
    .end local v2    # "locId":J
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "serID":J
    :cond_1
    invoke-virtual {v4}, Lcn/nubia/calendar/cloud/BatchOperation;->execute()V

    .line 97
    return-void
.end method

.method public static updateReminderTime(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J
    .param p3, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .param p5, "operation"    # Lcn/nubia/calendar/cloud/BatchOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcn/nubia/calendar/cloud/BatchOperation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p4, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v6, "valuesReminders":Landroid/content/ContentValues;
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getEventByServerId(Landroid/content/Context;J)I

    move-result v5

    .line 378
    .local v5, "eventid":I
    if-lez v5, :cond_0

    .line 379
    const-string v8, "event_id"

    .line 380
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 379
    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v8, "minutes"

    const-string v9, "minutes"

    .line 382
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v8, "method"

    const-string v9, "method"

    .line 384
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 383
    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v7, "event_id=?"

    .line 386
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 387
    .local v3, "args":[Ljava/lang/String;
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 388
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 389
    invoke-virtual {v8, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 390
    .local v2, "Remindersbuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v2    # "Remindersbuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "args":[Ljava/lang/String;
    .end local v5    # "eventid":I
    .end local v6    # "valuesReminders":Landroid/content/ContentValues;
    .end local v7    # "where":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v4

    .line 393
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public complyOperation(Lcn/nubia/calendar/cloud/BatchOperation;)V
    .locals 1
    .param p1, "operation"    # Lcn/nubia/calendar/cloud/BatchOperation;

    .prologue
    .line 180
    invoke-virtual {p1}, Lcn/nubia/calendar/cloud/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lcn/nubia/calendar/cloud/BatchOperation;->execute()V

    .line 183
    :cond_0
    return-void
.end method

.method public queryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/cloud/CalendarDirtyIterator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mDirtyCalendar:Lcn/nubia/calendar/cloud/CalendarDirtyIterator;

    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mDirtyCalendar:Lcn/nubia/calendar/cloud/CalendarDirtyIterator;

    return-object v0
.end method

.method public updateNotesData(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "syncDataIterato":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/calendar/cloud/CalendarSyncItem;>;"
    new-instance v8, Lcn/nubia/calendar/cloud/BatchOperation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v8, v3}, Lcn/nubia/calendar/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 108
    .local v8, "operation":Lcn/nubia/calendar/cloud/BatchOperation;
    const/4 v12, 0x0

    .line 109
    .local v12, "isExist":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getPresetEvent(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v14

    .line 114
    .local v14, "presentEvent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v7, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    const/16 v3, 0xa

    .line 118
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v13

    .line 119
    .local v13, "noteSyncItems":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/cloud/CalendarSyncItem;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/calendar/cloud/CalendarSyncItem;

    .line 121
    .local v17, "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getServerID()J

    move-result-wide v4

    .line 122
    .local v4, "serverId":J
    const-wide/16 v20, 0x0

    cmp-long v3, v4, v20

    if-eqz v3, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getEventByServerId(Landroid/content/Context;J)I

    move-result v10

    .line 126
    .local v10, "eventId":I
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_sync_id = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 130
    .local v15, "selectionEvent":Ljava/lang/String;
    sget-object v3, Lcn/nubia/calendar/cloud/CalendarCloudSync;->rawCalendarUri:Landroid/net/Uri;

    .line 131
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/16 v19, 0x0

    .line 132
    move-object/from16 v0, v19

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/16 v19, 0x1

    .line 133
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 134
    .local v2, "builderEvent":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "event_id = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, "selectionReminders":Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 138
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/16 v19, 0x0

    .line 139
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/16 v19, 0x1

    .line 140
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 141
    .local v9, "builderReminders":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcn/nubia/calendar/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 142
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getServerID()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v3, v20, v22

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 147
    .end local v2    # "builderEvent":Landroid/content/ContentProviderOperation$Builder;
    .end local v9    # "builderReminders":Landroid/content/ContentProviderOperation$Builder;
    .end local v15    # "selectionEvent":Ljava/lang/String;
    .end local v16    # "selectionReminders":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->complyOperation(Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 149
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v6

    .line 152
    .local v6, "json":Lcn/nubia/cloud/utils/ParcelableJson;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_2
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v11, v3, :cond_2

    .line 153
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 154
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    const/4 v12, 0x1

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->updateEvent(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->complyOperation(Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->updateReminderTime(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 164
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->complyOperation(Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 165
    if-eqz v12, :cond_4

    .line 166
    const/4 v12, 0x0

    .line 167
    goto/16 :goto_1

    .line 152
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 169
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->addEvent(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->complyOperation(Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mContext:Landroid/content/Context;

    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->addReminderTime(Landroid/content/Context;JLcn/nubia/cloud/utils/ParcelableJson;Ljava/util/List;Lcn/nubia/calendar/cloud/BatchOperation;)V

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->complyOperation(Lcn/nubia/calendar/cloud/BatchOperation;)V

    goto/16 :goto_1

    .line 175
    .end local v4    # "serverId":J
    .end local v6    # "json":Lcn/nubia/cloud/utils/ParcelableJson;
    .end local v10    # "eventId":I
    .end local v11    # "index":I
    .end local v17    # "syncItem":Lcn/nubia/calendar/cloud/CalendarSyncItem;
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 177
    .end local v13    # "noteSyncItems":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/cloud/CalendarSyncItem;>;"
    :cond_6
    return-void
.end method

.method public updateSyncStatus(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "idit":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/IDMap;>;"
    const/16 v2, 0xa

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "idmaps":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/IDMap;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {p1, v2}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 61
    invoke-direct {p0, v0}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->updateIdMaps(Ljava/util/List;)V

    .line 62
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 66
    invoke-direct {p0, v0}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->updateIdMaps(Ljava/util/List;)V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarCloudSync;->mDirtyCalendar:Lcn/nubia/calendar/cloud/CalendarDirtyIterator;

    if-eqz v1, :cond_3

    .line 71
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->clearDirtyStatus()V

    .line 73
    :cond_3
    return-void
.end method
