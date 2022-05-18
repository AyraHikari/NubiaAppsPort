.class public Lcn/nubia/calendar/model/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ALLDAY_WHERE:Ljava/lang/String; = "dispAllday=1"

.field static final DEFAULT_BG_COLOR:Ljava/lang/String; = "#ECFBFB"

.field static final DEFAULT_LONG_PRESS_BACK_COLOR:Ljava/lang/String; = "#aa00BDFF"

.field static final DEFAULT_LONG_PRESS_BORDER_COLOR:Ljava/lang/String; = "#FF00BDFF"

.field static final DEFAULT_PIC_PATH:Ljava/lang/String; = ""

.field static final DEFAULT_SIGN_COLOR:Ljava/lang/String; = "#FF00BDFF"

.field private static final DISPLAY_AS_ALLDAY:Ljava/lang/String; = "dispAllday"

.field private static final EVENTS_WHERE:Ljava/lang/String; = "dispAllday=0"

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final PROFILE:Z = false

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_CALENDAR_ID:I = 0x14

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_DISPLAY_AS_ALLDAY:I = 0x13

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_GUESTS_CAN_INVITE_OTHERS_INDEX:I = 0x12

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_ORGANIZER_INDEX:I = 0x11

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I = 0x0

.field private static final SORT_ALLDAY_BY:Ljava/lang/String; = "startDay ASC, endDay DESC, title ASC"

.field private static final SORT_EVENTS_BY:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field private static final TAG:Ljava/lang/String; = "CalEvent"

.field private static mNoColorColor:I

.field private static mNoTitleString:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public bottom:F

.field public calendarId:J

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field public mBgColor:Ljava/lang/String;

.field private mColumn:I

.field public mLongPressBgBorderColor:Ljava/lang/String;

.field public mLongPressBgColor:Ljava/lang/String;

.field private mMaxColumns:I

.field public mPicPath:Ljava/lang/String;

.field public mRule:Ljava/lang/String;

.field public mSginColor:Ljava/lang/String;

.field public nextDown:Lcn/nubia/calendar/model/Event;

.field public nextLeft:Lcn/nubia/calendar/model/Event;

.field public nextRight:Lcn/nubia/calendar/model/Event;

.field public nextUp:Lcn/nubia/calendar/model/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/model/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, "#FF00BDFF"

    iput-object v0, p0, Lcn/nubia/calendar/model/Event;->mSginColor:Ljava/lang/String;

    .line 169
    const-string v0, "#ECFBFB"

    iput-object v0, p0, Lcn/nubia/calendar/model/Event;->mBgColor:Ljava/lang/String;

    .line 170
    const-string v0, "#aa00BDFF"

    iput-object v0, p0, Lcn/nubia/calendar/model/Event;->mLongPressBgColor:Ljava/lang/String;

    .line 171
    const-string v0, "#FF00BDFF"

    iput-object v0, p0, Lcn/nubia/calendar/model/Event;->mLongPressBgBorderColor:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/model/Event;->mPicPath:Ljava/lang/String;

    return-void
.end method

.method public static buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    .locals 4
    .param p1, "cEvents"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "startDay"    # I
    .param p4, "endDay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 437
    :cond_0
    return-void

    .line 418
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 420
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 425
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/nubia/calendar/model/Event;->mNoTitleString:Ljava/lang/String;

    .line 426
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcn/nubia/calendar/model/Event;->mNoColorColor:I

    .line 429
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 430
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-static {p1, p2}, Lcn/nubia/calendar/model/Event;->generateEventFromCursor(Landroid/database/Cursor;Landroid/content/Context;)Lcn/nubia/calendar/model/Event;

    move-result-object v1

    .line 432
    .local v1, "e":Lcn/nubia/calendar/model/Event;
    iget v3, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    if-gt v3, p4, :cond_2

    iget v3, v1, Lcn/nubia/calendar/model/Event;->endDay:I

    if-lt v3, p3, :cond_2

    .line 435
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static computePositions(Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "minimumDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "eventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    if-nez p0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/calendar/model/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    .line 543
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/calendar/model/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    goto :goto_0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;JZ)V
    .locals 15
    .param p1, "minimumDurationMillis"    # J
    .param p3, "doAlldayEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "eventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v8, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v11, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 552
    const-wide/16 p1, 0x0

    .line 555
    :cond_0
    const-wide/16 v6, 0x0

    .line 556
    .local v6, "colMask":J
    const/4 v13, 0x0

    .line 557
    .local v13, "maxCols":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/model/Event;

    .line 559
    .local v2, "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v2}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 562
    if-nez p3, :cond_2

    .line 564
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 563
    invoke-static/range {v2 .. v7}, Lcn/nubia/calendar/model/Event;->removeNonAlldayActiveEvents(Lcn/nubia/calendar/model/Event;Ljava/util/Iterator;JJ)J

    move-result-wide v6

    .line 572
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 573
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/model/Event;

    .line 574
    .local v10, "ev":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v10, v13}, Lcn/nubia/calendar/model/Event;->setMaxColumns(I)V

    goto :goto_2

    .line 567
    .end local v10    # "ev":Lcn/nubia/calendar/model/Event;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 566
    invoke-static {v2, v3, v6, v7}, Lcn/nubia/calendar/model/Event;->removeAlldayActiveEvents(Lcn/nubia/calendar/model/Event;Ljava/util/Iterator;J)J

    move-result-wide v6

    goto :goto_1

    .line 576
    :cond_3
    const/4 v13, 0x0

    .line 577
    const-wide/16 v6, 0x0

    .line 578
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 583
    :cond_4
    invoke-static {v6, v7}, Lcn/nubia/calendar/model/Event;->findFirstZeroBit(J)I

    move-result v9

    .line 584
    .local v9, "col":I
    const/16 v3, 0x40

    if-ne v9, v3, :cond_5

    .line 585
    const/16 v9, 0x3f

    .line 586
    :cond_5
    const-wide/16 v4, 0x1

    shl-long/2addr v4, v9

    or-long/2addr v6, v4

    .line 587
    invoke-virtual {v2, v9}, Lcn/nubia/calendar/model/Event;->setColumn(I)V

    .line 588
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 591
    .local v12, "len":I
    if-ge v13, v12, :cond_1

    .line 592
    move v13, v12

    goto :goto_0

    .line 594
    .end local v2    # "event":Lcn/nubia/calendar/model/Event;
    .end local v9    # "col":I
    .end local v12    # "len":I
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/model/Event;

    .line 595
    .restart local v10    # "ev":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v10, v13}, Lcn/nubia/calendar/model/Event;->setMaxColumns(I)V

    goto :goto_3

    .line 597
    .end local v10    # "ev":Lcn/nubia/calendar/model/Event;
    :cond_7
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .param p0, "val"    # J

    .prologue
    const/16 v1, 0x40

    .line 635
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 636
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 639
    .end local v0    # "ii":I
    :goto_1
    return v0

    .line 635
    .restart local v0    # "ii":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 639
    goto :goto_1
.end method

.method private static generateEventFromCursor(Landroid/database/Cursor;Landroid/content/Context;)Lcn/nubia/calendar/model/Event;
    .locals 14
    .param p0, "cEvents"    # Landroid/database/Cursor;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0xe

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 445
    new-instance v1, Lcn/nubia/calendar/model/Event;

    invoke-direct {v1}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 447
    .local v1, "e":Lcn/nubia/calendar/model/Event;
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcn/nubia/calendar/model/Event;->id:J

    .line 448
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 449
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    .line 450
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    iput-boolean v8, v1, Lcn/nubia/calendar/model/Event;->allDay:Z

    .line 451
    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcn/nubia/calendar/model/Event;->organizer:Ljava/lang/String;

    .line 452
    const/16 v8, 0x12

    .line 453
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_1
    iput-boolean v8, v1, Lcn/nubia/calendar/model/Event;->guestsCanModify:Z

    .line 455
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcn/nubia/calendar/model/Event;->mRule:Ljava/lang/String;

    .line 456
    const/16 v8, 0x14

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcn/nubia/calendar/model/Event;->calendarId:J

    .line 459
    iget-object v8, v1, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 460
    :cond_0
    sget-object v8, Lcn/nubia/calendar/model/Event;->mNoTitleString:Ljava/lang/String;

    iput-object v8, v1, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 463
    :cond_1
    const/4 v8, 0x3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 475
    invoke-static {p1}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    move-result-object v8

    iget-wide v12, v1, Lcn/nubia/calendar/model/Event;->calendarId:J

    .line 476
    invoke-virtual {v8, v12, v13}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->getColorByCalendarId(J)Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    move-result-object v0

    .line 477
    .local v0, "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    if-eqz v0, :cond_5

    .line 478
    iget v8, v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->mFill:I

    iput v8, v1, Lcn/nubia/calendar/model/Event;->color:I

    .line 491
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :goto_2
    const/4 v8, 0x6

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 492
    .local v4, "eStart":J
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 494
    .local v2, "eEnd":J
    iput-wide v4, v1, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 495
    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 496
    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 498
    iput-wide v2, v1, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 499
    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 500
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 502
    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_3
    iput-boolean v8, v1, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    .line 505
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "rrule":Ljava/lang/String;
    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "rdate":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 508
    :cond_2
    iput-boolean v9, v1, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    .line 513
    :goto_4
    const/16 v8, 0x10

    .line 514
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    .line 515
    return-object v1

    .end local v2    # "eEnd":J
    .end local v4    # "eStart":J
    .end local v6    # "rdate":Ljava/lang/String;
    .end local v7    # "rrule":Ljava/lang/String;
    :cond_3
    move v8, v10

    .line 450
    goto/16 :goto_0

    :cond_4
    move v8, v10

    .line 453
    goto/16 :goto_1

    .line 481
    .restart local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :cond_5
    sget v8, Lcn/nubia/calendar/model/Event;->mNoColorColor:I

    iput v8, v1, Lcn/nubia/calendar/model/Event;->color:I

    goto :goto_2

    .line 486
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :cond_6
    sget v8, Lcn/nubia/calendar/model/Event;->mNoColorColor:I

    iput v8, v1, Lcn/nubia/calendar/model/Event;->color:I

    goto :goto_2

    .restart local v2    # "eEnd":J
    .restart local v4    # "eStart":J
    :cond_7
    move v8, v10

    .line 502
    goto :goto_3

    .line 510
    .restart local v6    # "rdate":Ljava/lang/String;
    .restart local v7    # "rrule":Ljava/lang/String;
    :cond_8
    iput-boolean v10, v1, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    goto :goto_4
.end method

.method private static final instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "startDay"    # I
    .param p3, "endDay"    # I
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string v8, "visible=?"

    .line 376
    .local v8, "WHERE_CALENDARS_SELECTED":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v7, v0

    .line 377
    .local v7, "WHERE_CALENDARS_ARGS":[Ljava/lang/String;
    const-string v6, "begin ASC"

    .line 379
    .local v6, "DEFAULT_SORT_ORDER":Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 380
    .local v9, "builder":Landroid/net/Uri$Builder;
    int-to-long v0, p2

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 381
    int-to-long v0, p3

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 382
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    move-object p4, v8

    .line 384
    move-object p5, v7

    .line 395
    :goto_0
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez p6, :cond_2

    move-object v5, v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 387
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    .line 388
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "selectionArgs":[Ljava/lang/String;
    check-cast p5, [Ljava/lang/String;

    .line 390
    .restart local p5    # "selectionArgs":[Ljava/lang/String;
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aput-object v1, p5, v0

    goto :goto_0

    .line 392
    :cond_1
    move-object p5, v7

    goto :goto_0

    :cond_2
    move-object/from16 v5, p6

    .line 395
    goto :goto_1
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "startDay"    # I
    .param p3, "days"    # I
    .param p4, "requestId"    # I
    .param p5, "sequenceNumber"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;III",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    if-nez p0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/16 v21, 0x0

    .line 258
    .local v21, "cEvents":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 260
    .local v20, "cAllday":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 262
    add-int v4, p2, p3

    add-int/lit8 v7, v4, -0x1

    .line 276
    .local v7, "endDay":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 277
    .local v29, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "preferences_hide_declined"

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 280
    .local v25, "hideDeclined":Z
    const-string v8, "dispAllday=0"

    .line 281
    .local v8, "where":Ljava/lang/String;
    const-string v13, "dispAllday=1"

    .line 282
    .local v13, "whereAllday":Ljava/lang/String;
    if-eqz v25, :cond_2

    .line 283
    const-string v26, " AND selfAttendeeStatus!=2"

    .line 285
    .local v26, "hideString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 289
    .end local v26    # "hideString":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcn/nubia/calendar/model/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "begin ASC, end DESC, title ASC"

    move/from16 v6, p2

    invoke-static/range {v4 .. v10}, Lcn/nubia/calendar/model/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcn/nubia/calendar/model/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "startDay ASC, endDay DESC, title ASC"

    move/from16 v11, p2

    move v12, v7

    invoke-static/range {v9 .. v15}, Lcn/nubia/calendar/model/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 298
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move/from16 v0, p4

    if-eq v0, v4, :cond_4

    .line 308
    if-eqz v21, :cond_3

    .line 309
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_3
    if-eqz v20, :cond_0

    .line 312
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 302
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v7}, Lcn/nubia/calendar/model/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 303
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v7}, Lcn/nubia/calendar/model/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    if-eqz v21, :cond_5

    .line 309
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_5
    if-eqz v20, :cond_6

    .line 312
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 321
    .end local v8    # "where":Ljava/lang/String;
    .end local v13    # "whereAllday":Ljava/lang/String;
    .end local v25    # "hideDeclined":Z
    .end local v29    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    :goto_1
    const-string v27, "#aa00BDFF"

    .line 322
    .local v27, "longPressBackColor":Ljava/lang/String;
    const-string v28, "#FF00BDFF"

    .line 323
    .local v28, "longPressBorderColor":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-string v5, "image_path"

    aput-object v5, v16, v4

    .line 325
    .local v16, "projection":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 326
    .local v22, "cursor1":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcn/nubia/calendar/model/Event;

    .line 327
    .local v24, "event":Lcn/nubia/calendar/model/Event;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    iget-wide v10, v0, Lcn/nubia/calendar/model/Event;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v18, v4

    .line 329
    .local v18, "cusWhereArgs":[Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v17, "event_id=?"

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 333
    if-eqz v22, :cond_8

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 335
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, ""

    .line 336
    :goto_3
    move-object/from16 v0, v24

    iput-object v4, v0, Lcn/nubia/calendar/model/Event;->mPicPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 339
    :cond_8
    if-eqz v22, :cond_7

    .line 340
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 341
    const/16 v22, 0x0

    goto :goto_2

    .line 305
    .end local v16    # "projection":[Ljava/lang/String;
    .end local v18    # "cusWhereArgs":[Ljava/lang/String;
    .end local v22    # "cursor1":Landroid/database/Cursor;
    .end local v24    # "event":Lcn/nubia/calendar/model/Event;
    .end local v27    # "longPressBackColor":Ljava/lang/String;
    .end local v28    # "longPressBorderColor":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 306
    .local v23, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    if-eqz v21, :cond_9

    .line 309
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_9
    if-eqz v20, :cond_6

    .line 312
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 308
    .end local v23    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v21, :cond_a

    .line 309
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_a
    if-eqz v20, :cond_b

    .line 312
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_b
    throw v4

    .line 335
    .restart local v16    # "projection":[Ljava/lang/String;
    .restart local v18    # "cusWhereArgs":[Ljava/lang/String;
    .restart local v22    # "cursor1":Landroid/database/Cursor;
    .restart local v24    # "event":Lcn/nubia/calendar/model/Event;
    .restart local v27    # "longPressBackColor":Ljava/lang/String;
    .restart local v28    # "longPressBorderColor":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    .line 336
    :try_start_4
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    goto :goto_3

    .line 339
    :catchall_1
    move-exception v4

    if-eqz v22, :cond_d

    .line 340
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 341
    const/16 v22, 0x0

    .line 343
    :cond_d
    throw v4
.end method

.method public static final newInstance()Lcn/nubia/calendar/model/Event;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 222
    new-instance v0, Lcn/nubia/calendar/model/Event;

    invoke-direct {v0}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 224
    .local v0, "e":Lcn/nubia/calendar/model/Event;
    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->id:J

    .line 225
    iput-object v4, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 226
    iput v1, v0, Lcn/nubia/calendar/model/Event;->color:I

    .line 227
    iput-object v4, v0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    .line 228
    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->allDay:Z

    .line 229
    iput v1, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 230
    iput v1, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 231
    iput v1, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 232
    iput v1, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 233
    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 234
    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 235
    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    .line 236
    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    .line 237
    iput v1, v0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    .line 238
    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->calendarId:J

    .line 240
    return-object v0
.end method

.method private static removeAlldayActiveEvents(Lcn/nubia/calendar/model/Event;Ljava/util/Iterator;J)J
    .locals 6
    .param p0, "event"    # Lcn/nubia/calendar/model/Event;
    .param p2, "colMask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/calendar/model/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/model/Event;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/Event;

    .line 606
    .local v0, "active":Lcn/nubia/calendar/model/Event;
    iget v1, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    iget v2, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ge v1, v2, :cond_0

    .line 607
    const-wide/16 v2, 0x1

    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v1

    shl-long/2addr v2, v1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr p2, v2

    .line 608
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 611
    .end local v0    # "active":Lcn/nubia/calendar/model/Event;
    :cond_1
    return-wide p2
.end method

.method private static removeNonAlldayActiveEvents(Lcn/nubia/calendar/model/Event;Ljava/util/Iterator;JJ)J
    .locals 10
    .param p0, "event"    # Lcn/nubia/calendar/model/Event;
    .param p2, "minDurationMillis"    # J
    .param p4, "colMask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/calendar/model/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/model/Event;>;"
    invoke-virtual {p0}, Lcn/nubia/calendar/model/Event;->getStartMillis()J

    move-result-wide v4

    .line 620
    .local v4, "start":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/Event;

    .line 624
    .local v0, "active":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->getEndMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->getStartMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 623
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 626
    .local v2, "duration":J
    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->getStartMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v1, v6, v4

    if-gtz v1, :cond_0

    .line 627
    const-wide/16 v6, 0x1

    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v1

    shl-long/2addr v6, v1

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr p4, v6

    .line 628
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 631
    .end local v0    # "active":Lcn/nubia/calendar/model/Event;
    .end local v2    # "duration":J
    :cond_1
    return-wide p4
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 179
    new-instance v0, Lcn/nubia/calendar/model/Event;

    invoke-direct {v0}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 181
    .local v0, "e":Lcn/nubia/calendar/model/Event;
    iget-object v1, p0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 182
    iget v1, p0, Lcn/nubia/calendar/model/Event;->color:I

    iput v1, v0, Lcn/nubia/calendar/model/Event;->color:I

    .line 183
    iget-object v1, p0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    .line 184
    iget-boolean v1, p0, Lcn/nubia/calendar/model/Event;->allDay:Z

    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->allDay:Z

    .line 185
    iget v1, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v1, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 186
    iget v1, p0, Lcn/nubia/calendar/model/Event;->endDay:I

    iput v1, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 187
    iget v1, p0, Lcn/nubia/calendar/model/Event;->startTime:I

    iput v1, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 188
    iget v1, p0, Lcn/nubia/calendar/model/Event;->endTime:I

    iput v1, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 189
    iget-wide v2, p0, Lcn/nubia/calendar/model/Event;->startMillis:J

    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 190
    iget-wide v2, p0, Lcn/nubia/calendar/model/Event;->endMillis:J

    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 191
    iget-boolean v1, p0, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    .line 192
    iget-boolean v1, p0, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    .line 193
    iget v1, p0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    .line 194
    iget-object v1, p0, Lcn/nubia/calendar/model/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/calendar/model/Event;->organizer:Ljava/lang/String;

    .line 195
    iget-boolean v1, p0, Lcn/nubia/calendar/model/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcn/nubia/calendar/model/Event;->guestsCanModify:Z

    .line 196
    iget-wide v2, p0, Lcn/nubia/calendar/model/Event;->calendarId:J

    iput-wide v2, v0, Lcn/nubia/calendar/model/Event;->calendarId:J

    .line 198
    return-object v0
.end method

.method public final copyTo(Lcn/nubia/calendar/model/Event;)V
    .locals 2
    .param p1, "dest"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 202
    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->id:J

    iput-wide v0, p1, Lcn/nubia/calendar/model/Event;->id:J

    .line 203
    iget-object v0, p0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    .line 204
    iget v0, p0, Lcn/nubia/calendar/model/Event;->color:I

    iput v0, p1, Lcn/nubia/calendar/model/Event;->color:I

    .line 205
    iget-object v0, p0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    .line 206
    iget-boolean v0, p0, Lcn/nubia/calendar/model/Event;->allDay:Z

    iput-boolean v0, p1, Lcn/nubia/calendar/model/Event;->allDay:Z

    .line 207
    iget v0, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v0, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 208
    iget v0, p0, Lcn/nubia/calendar/model/Event;->endDay:I

    iput v0, p1, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 209
    iget v0, p0, Lcn/nubia/calendar/model/Event;->startTime:I

    iput v0, p1, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 210
    iget v0, p0, Lcn/nubia/calendar/model/Event;->endTime:I

    iput v0, p1, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 211
    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->startMillis:J

    iput-wide v0, p1, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 212
    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->endMillis:J

    iput-wide v0, p1, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 213
    iget-boolean v0, p0, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcn/nubia/calendar/model/Event;->hasAlarm:Z

    .line 214
    iget-boolean v0, p0, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcn/nubia/calendar/model/Event;->isRepeating:Z

    .line 215
    iget v0, p0, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcn/nubia/calendar/model/Event;->selfAttendeeStatus:I

    .line 216
    iget-object v0, p0, Lcn/nubia/calendar/model/Event;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lcn/nubia/calendar/model/Event;->organizer:Ljava/lang/String;

    .line 217
    iget-boolean v0, p0, Lcn/nubia/calendar/model/Event;->guestsCanModify:Z

    iput-boolean v0, p1, Lcn/nubia/calendar/model/Event;->guestsCanModify:Z

    .line 218
    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->calendarId:J

    iput-wide v0, p1, Lcn/nubia/calendar/model/Event;->calendarId:J

    .line 219
    return-void
.end method

.method public drawAsAllday()Z
    .locals 4

    .prologue
    .line 742
    iget-boolean v0, p0, Lcn/nubia/calendar/model/Event;->allDay:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->endMillis:J

    iget-wide v2, p0, Lcn/nubia/calendar/model/Event;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dump()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcn/nubia/calendar/model/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 737
    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcn/nubia/calendar/model/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 729
    iget-wide v0, p0, Lcn/nubia/calendar/model/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 694
    iget-object v2, p0, Lcn/nubia/calendar/model/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcn/nubia/calendar/model/Event;->location:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "locationString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    .end local v0    # "locationString":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public final intersects(III)Z
    .locals 3
    .param p1, "julianDay"    # I
    .param p2, "startMinute"    # I
    .param p3, "endMinute"    # I

    .prologue
    const/4 v0, 0x0

    .line 658
    iget v1, p0, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ge v1, p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v0

    .line 662
    :cond_1
    iget v1, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    if-gt v1, p1, :cond_0

    .line 666
    iget v1, p0, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v1, p1, :cond_2

    .line 667
    iget v1, p0, Lcn/nubia/calendar/model/Event;->endTime:I

    if-lt v1, p2, :cond_0

    .line 673
    iget v1, p0, Lcn/nubia/calendar/model/Event;->endTime:I

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcn/nubia/calendar/model/Event;->startTime:I

    iget v2, p0, Lcn/nubia/calendar/model/Event;->endTime:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p0, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v1, v2, :cond_0

    .line 679
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    if-ne v1, p1, :cond_3

    iget v1, p0, Lcn/nubia/calendar/model/Event;->startTime:I

    if-gt v1, p3, :cond_0

    .line 683
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0
    .param p1, "column"    # I

    .prologue
    .line 709
    iput p1, p0, Lcn/nubia/calendar/model/Event;->mColumn:I

    .line 710
    return-void
.end method

.method public setEndMillis(J)V
    .locals 1
    .param p1, "endMillis"    # J

    .prologue
    .line 733
    iput-wide p1, p0, Lcn/nubia/calendar/model/Event;->endMillis:J

    .line 734
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .param p1, "maxColumns"    # I

    .prologue
    .line 717
    iput p1, p0, Lcn/nubia/calendar/model/Event;->mMaxColumns:I

    .line 718
    return-void
.end method

.method public setStartMillis(J)V
    .locals 1
    .param p1, "startMillis"    # J

    .prologue
    .line 725
    iput-wide p1, p0, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 726
    return-void
.end method
