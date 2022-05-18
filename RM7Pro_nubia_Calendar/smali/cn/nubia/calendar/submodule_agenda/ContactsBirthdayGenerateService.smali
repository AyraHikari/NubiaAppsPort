.class public Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;
.super Landroid/app/IntentService;
.source "ContactsBirthdayGenerateService.java"


# static fields
.field private static final DATA1:I = 0x0

.field private static final DATA10:I = 0x2

.field private static final DATA2:I = 0x3

.field private static final DATA9:I = 0x1

.field private static final DATACOLUMNS:[Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final DISPLAY_NAME_PRIMARY:I = 0x1

.field private static final RAWCONTACTCOLUMNS:[Ljava/lang/String;

.field private static final RAW_CONTACT_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "zlx"

.field private static final _ID:I


# instance fields
.field private mCalendarId:J

.field private mResolver:Landroid/content/ContentResolver;

.field private titleAppend:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data9"

    aput-object v1, v0, v3

    const-string v1, "data10"

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->DATACOLUMNS:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->RAWCONTACTCOLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "ContactsBirthdayGenerateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private addBirthdayEvent(Ljava/lang/String;)V
    .locals 18
    .param p1, "rawContactId"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v12, 0x0

    .line 160
    .local v12, "cData":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 161
    .local v17, "name":Ljava/lang/String;
    const/4 v13, 0x0

    .line 162
    .local v13, "date":Ljava/lang/String;
    const/4 v14, 0x0

    .line 163
    .local v14, "dateType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 164
    .local v16, "monthType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 165
    .local v10, "isLunar":Z
    const/4 v11, 0x0

    .line 167
    .local v11, "isLeapMonth":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->DATACOLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data2 = \'3\' AND mimetype = \'vnd.android.cursor.item/contact_event\' AND raw_contact_id = \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 172
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getNameForRawContacts(J)Ljava/lang/String;

    move-result-object v17

    .line 174
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 175
    .end local v13    # "date":Ljava/lang/String;
    .local v7, "date":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 176
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 177
    if-eqz v14, :cond_2

    const-string v2, "1"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const/4 v10, 0x1

    .line 182
    :goto_0
    if-eqz v16, :cond_3

    const-string v2, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    const/4 v11, 0x1

    .line 193
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->titleAppend:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "title":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 197
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mCalendarId:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->createBirthdayEvent(JLjava/lang/String;Ljava/lang/String;JZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    :goto_2
    if-eqz v12, :cond_1

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v12, 0x0

    .line 212
    :cond_1
    :goto_3
    return-void

    .line 180
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 185
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 201
    .end local v7    # "date":Ljava/lang/String;
    .restart local v13    # "date":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v2, "zlx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has no birthday date!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v13

    .end local v13    # "date":Ljava/lang/String;
    .restart local v7    # "date":Ljava/lang/String;
    goto :goto_2

    .line 204
    .end local v7    # "date":Ljava/lang/String;
    .restart local v13    # "date":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v7, v13

    .line 205
    .end local v13    # "date":Ljava/lang/String;
    .restart local v7    # "date":Ljava/lang/String;
    .local v15, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    if-eqz v12, :cond_1

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v12, 0x0

    goto :goto_3

    .line 207
    .end local v7    # "date":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v13    # "date":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v7, v13

    .end local v13    # "date":Ljava/lang/String;
    .restart local v7    # "date":Ljava/lang/String;
    :goto_5
    if-eqz v12, :cond_5

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v12, 0x0

    .line 211
    :cond_5
    throw v2

    .line 207
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 204
    :catch_1
    move-exception v15

    goto :goto_4
.end method

.method private convertDateToTimeMillis(Ljava/lang/String;)J
    .locals 7
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 469
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getYear(Ljava/lang/String;)I

    move-result v2

    .line 474
    .local v2, "year":I
    if-nez v2, :cond_0

    .line 475
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 474
    .end local v2    # "year":I
    :cond_0
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 476
    const/4 v3, 0x2

    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getMonth(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 477
    const/4 v3, 0x5

    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getDay(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 479
    new-instance v1, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 480
    .local v1, "time":Landroid/text/format/Time;
    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getYear(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/text/format/Time;->year:I

    .line 481
    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getMonth(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 482
    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getDay(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    .line 484
    iput v5, v1, Landroid/text/format/Time;->hour:I

    .line 485
    iput v5, v1, Landroid/text/format/Time;->minute:I

    .line 486
    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 488
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method private createBirthdayEvent(JLjava/lang/String;Ljava/lang/String;JZZ)V
    .locals 21
    .param p1, "contactId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "calendarId"    # J
    .param p7, "isLunar"    # Z
    .param p8, "isLeanMonth"    # Z

    .prologue
    .line 503
    new-instance v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;-><init>(Landroid/content/Context;Lcn/nubia/calendar/model/CalendarEventModel;)V

    .line 504
    .local v5, "helper":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;
    new-instance v4, Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>(Landroid/content/Context;)V

    .line 506
    .local v4, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 507
    move-object/from16 v0, p3

    iput-object v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 508
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 510
    move-wide/from16 v0, p5

    iput-wide v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 511
    const-string v3, "nobody@gmail.com"

    iput-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 512
    const-string v3, "nobody@gmail.com"

    iput-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 513
    const/4 v3, 0x1

    iput v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 514
    const/4 v3, 0x1

    iput v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarMaxReminders:I

    .line 515
    if-eqz p7, :cond_3

    .line 516
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getDay(Ljava/lang/String;)I

    move-result v2

    .line 517
    .local v2, "day":I
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getMonth(Ljava/lang/String;)I

    move-result v11

    .line 518
    .local v11, "month":I
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getYear(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 520
    .local v16, "year":I
    :goto_0
    if-eqz p8, :cond_0

    .line 521
    move/from16 v0, v16

    move/from16 v1, p8

    invoke-static {v0, v11, v2, v1}, Lcn/nubia/calendar/util/Lunar;->getSolarFromLunar(IIIZ)Ljava/lang/String;

    move-result-object v15

    .line 523
    .local v15, "solarDate":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->convertDateToTimeMillis(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "time":J
    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    .line 524
    invoke-direct/range {v3 .. v9}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->generateLeapMonthBirthday(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;JJ)V

    .line 525
    const-wide/16 v8, -0x1

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 526
    add-int/lit8 v16, v16, 0x1

    .line 528
    .end local v6    # "time":J
    .end local v15    # "solarDate":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FREQ=MONTHLY;WKST=SU;BYLUNARYEARDAY="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    :goto_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 531
    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v0, v11, v2, v3}, Lcn/nubia/calendar/util/Lunar;->getSolarFromLunar(IIIZ)Ljava/lang/String;

    move-result-object p4

    .line 536
    .end local v2    # "day":I
    .end local v11    # "month":I
    .end local v16    # "year":I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->convertDateToTimeMillis(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->convertDateToTimeMillis(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v18, 0x5265c00

    add-long v12, v8, v18

    .line 541
    .local v12, "normalizedEndTimeMillis":J
    iget-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    cmp-long v3, v12, v8

    if-gez v3, :cond_4

    .line 543
    iget-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    const-wide/32 v18, 0x5265c00

    add-long v8, v8, v18

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 549
    :goto_3
    const/16 v3, -0x21c

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v10

    .line 551
    .local v10, "entry":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    iget-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 552
    iget-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const/4 v3, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v4, v3, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;I)Z

    move-result v14

    .line 563
    .local v14, "result":Z
    return-void

    .line 519
    .end local v10    # "entry":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .end local v12    # "normalizedEndTimeMillis":J
    .end local v14    # "result":Z
    .restart local v2    # "day":I
    .restart local v11    # "month":I
    :cond_1
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getYear(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    .line 529
    .restart local v16    # "year":I
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 533
    .end local v2    # "day":I
    .end local v11    # "month":I
    .end local v16    # "year":I
    :cond_3
    const-string v3, "FREQ=YEARLY;WKST=SU"

    iput-object v3, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    goto :goto_2

    .line 545
    .restart local v12    # "normalizedEndTimeMillis":J
    :cond_4
    iput-wide v12, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    goto :goto_3
.end method

.method private deleteExistsBirthdayById(J)V
    .locals 9
    .param p1, "eventId"    # J

    .prologue
    const/4 v2, 0x0

    .line 323
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 325
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Lcn/nubia/calendar/AsyncQueryService;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "mService":Lcn/nubia/calendar/AsyncQueryService;
    const/4 v1, 0x4

    const-wide/16 v6, 0x1388

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 329
    return-void
.end method

.method private generateLeapMonthBirthday(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;JJ)V
    .locals 3
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p2, "helper"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;
    .param p3, "start"    # J
    .param p5, "contactId"    # J

    .prologue
    .line 567
    iput-wide p3, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 568
    iput-wide p3, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 569
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, p1, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;I)Z

    .line 571
    return-void
.end method

.method private getContactBirthdayEventIds()[J
    .locals 14

    .prologue
    .line 278
    const/4 v6, 0x0

    .line 279
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 282
    .local v10, "ids":[J
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "calendar_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v12, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mCalendarId:J

    .line 284
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 282
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    if-eqz v6, :cond_0

    .line 287
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [J

    .line 291
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 292
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 306
    .end local v9    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 308
    const/4 v6, 0x0

    .line 312
    :cond_1
    :goto_1
    return-object v10

    .line 300
    :catch_0
    move-exception v7

    .line 302
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    if-eqz v6, :cond_1

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 308
    const/4 v6, 0x0

    goto :goto_1

    .line 306
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 308
    const/4 v6, 0x0

    .line 310
    :cond_2
    throw v0
.end method

.method private getContactCalendarId(Landroid/content/ContentResolver;)J
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 338
    const/4 v8, 0x0

    .line 339
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 341
    .local v6, "calendarId":J
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "account_name=? AND name=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "nobody@gmail.com"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "Contact Birthday"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 346
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 359
    :cond_0
    if-eqz v8, :cond_1

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 361
    const/4 v8, 0x0

    .line 364
    :cond_1
    :goto_0
    return-wide v6

    .line 355
    :catch_0
    move-exception v9

    .line 357
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    if-eqz v8, :cond_1

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 361
    const/4 v8, 0x0

    goto :goto_0

    .line 359
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 361
    const/4 v8, 0x0

    .line 363
    :cond_2
    throw v0
.end method

.method private static getDay(Ljava/lang/String;)I
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "day":I
    const/4 v3, 0x0

    .line 634
    .local v3, "test":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 636
    :try_start_0
    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 637
    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 638
    if-eqz v3, :cond_0

    array-length v5, v3

    if-le v5, v7, :cond_0

    .line 640
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 641
    .local v2, "length":I
    if-ne v2, v6, :cond_1

    .line 642
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v2    # "length":I
    :cond_0
    :goto_0
    move v4, v0

    .line 669
    :goto_1
    return v4

    .line 644
    .restart local v2    # "length":I
    :cond_1
    if-le v2, v6, :cond_0

    .line 645
    const/4 v5, 0x3

    aget-object v5, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 649
    .end local v2    # "length":I
    :cond_2
    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 650
    if-eqz v3, :cond_0

    array-length v5, v3

    if-le v5, v6, :cond_0

    .line 652
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 653
    .restart local v2    # "length":I
    if-eq v2, v6, :cond_3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 654
    :cond_3
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 655
    :cond_4
    if-le v2, v6, :cond_0

    .line 656
    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 661
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 664
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1
.end method

.method private getEventIdByContactId(Ljava/lang/String;)[J
    .locals 12
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v6, 0x0

    .line 246
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 248
    .local v9, "ids":[J
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "calendar_id=? AND eventLocation=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mCalendarId:J

    .line 251
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->move(I)Z

    .line 254
    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 255
    const/4 v8, 0x0

    .line 256
    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 265
    .end local v8    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v6, 0x0

    .line 270
    :cond_1
    :goto_1
    return-object v9

    .line 261
    :catch_0
    move-exception v7

    .line 263
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v6, :cond_1

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v6, 0x0

    goto :goto_1

    .line 265
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v6, 0x0

    .line 269
    :cond_2
    throw v0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "month":I
    const/4 v2, 0x0

    .line 609
    .local v2, "test":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 611
    :try_start_0
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 612
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 613
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 614
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    :goto_0
    move v3, v1

    .line 627
    :goto_1
    return v3

    .line 618
    :cond_1
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 619
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 620
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getNameForRawContacts(J)Ljava/lang/String;
    .locals 9
    .param p1, "rawContactId"    # J

    .prologue
    .line 216
    const/4 v6, 0x0

    .line 217
    .local v6, "contactIdCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 219
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

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
    return-object v8

    .line 226
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v6, 0x0

    goto :goto_0

    .line 229
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v6, 0x0

    .line 233
    :cond_2
    throw v0
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "year":I
    const/4 v1, 0x0

    .line 585
    .local v1, "test":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 587
    :try_start_0
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 590
    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v3, v2

    .line 602
    :goto_1
    return v3

    .line 593
    :cond_1
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 595
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private processBirthday(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "delete"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "contactId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getEventIdByContactId(Ljava/lang/String;)[J

    move-result-object v2

    .line 105
    .local v2, "eventIds":[J
    if-nez v2, :cond_1

    .line 106
    const-string v7, "zlx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Contact["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] has not been generated birthday event!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 110
    aget-wide v8, v2, v3

    invoke-direct {p0, v8, v9}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->deleteExistsBirthdayById(J)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "contactId":Ljava/lang/String;
    .end local v2    # "eventIds":[J
    .end local v3    # "i":I
    :cond_2
    const-string v6, "insert"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "rawContactId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->addBirthdayEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    .end local v4    # "rawContactId":Ljava/lang/String;
    :cond_3
    const-string v6, "update"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getContactBirthdayEventIds()[J

    move-result-object v0

    .line 134
    .local v0, "contactBirthdayEventIds":[J
    if-eqz v0, :cond_4

    .line 136
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v5, v0

    .local v5, "size":I
    :goto_3
    if-ge v3, v5, :cond_4

    .line 137
    aget-wide v6, v0, v3

    invoke-direct {p0, v6, v7}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->deleteExistsBirthdayById(J)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 141
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 143
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    .restart local v4    # "rawContactId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->addBirthdayEvent(Ljava/lang/String;)V

    goto :goto_4

    .line 149
    .end local v0    # "contactBirthdayEventIds":[J
    .end local v4    # "rawContactId":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 576
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 579
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->titleAppend:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mResolver:Landroid/content/ContentResolver;

    .line 83
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->getContactCalendarId(Landroid/content/ContentResolver;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->mCalendarId:J

    .line 88
    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "command":Ljava/lang/String;
    const-string v2, "info"

    .line 90
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;->processBirthday(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 92
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 77
    return-void
.end method
