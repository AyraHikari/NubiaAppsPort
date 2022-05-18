.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;,
        Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;,
        Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    }
.end annotation


# static fields
.field private static final LOGD:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDayInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mEventInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeTZName:Ljava/lang/String;

.field final mMaxJulianDay:I

.field final mNow:J

.field final mRowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTZ:Z

.field final mTodayJulianDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x32

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mNow:J

    .line 259
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 261
    iget-wide v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mNow:J

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    .line 262
    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    .line 266
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method private isChineseLanguage()Z
    .locals 2

    .prologue
    .line 450
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 451
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "language":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x1

    .line 455
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private populateDayInfo(ILandroid/text/format/Time;)Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
    .locals 13
    .param p1, "julianDay"    # I
    .param p2, "recycle"    # Landroid/text/format/Time;

    .prologue
    .line 424
    invoke-virtual {p2, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v2

    .line 425
    .local v2, "millis":J
    const v6, 0x80010

    .line 428
    .local v6, "flags":I
    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    .line 429
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0017

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v4, v2

    .line 430
    invoke-static/range {v1 .. v6}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v12

    .line 429
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, "label":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;

    invoke-direct {v1, p1, v7}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 433
    .end local v7    # "label":Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x2

    .line 434
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 436
    .restart local v7    # "label":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    .line 437
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 439
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 438
    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "week":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 442
    .end local v8    # "week":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private populateEventInfo(JZJJIILjava/lang/String;Ljava/lang/String;II)Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    .locals 12
    .param p1, "eventId"    # J
    .param p3, "allDay"    # Z
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "startDay"    # I
    .param p9, "endDay"    # I
    .param p10, "title"    # Ljava/lang/String;
    .param p11, "location"    # Ljava/lang/String;
    .param p12, "color"    # I
    .param p13, "selfStatus"    # I

    .prologue
    .line 370
    new-instance v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;

    invoke-direct {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;-><init>()V

    .line 373
    .local v2, "eventInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v10, "whenString":Ljava/lang/StringBuilder;
    const/high16 v8, 0x80000

    .line 376
    .local v8, "flags":I
    const/4 v9, 0x0

    .line 377
    .local v9, "visibWhen":I
    if-eqz p3, :cond_1

    .line 378
    or-int/lit8 v8, v8, 0x10

    .line 379
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 380
    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    :goto_0
    iput-wide p1, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    .line 397
    move-wide/from16 v0, p4

    iput-wide v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 398
    move-wide/from16 v0, p6

    iput-wide v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 399
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    .line 400
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    .line 401
    iput v9, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    .line 402
    move/from16 v0, p12

    iput v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->color:I

    .line 403
    move/from16 v0, p13

    iput v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    .line 406
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const v4, 0x7f0c005c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    .line 411
    :goto_1
    const/4 v3, 0x0

    iput v3, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    .line 414
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 415
    const/4 v3, 0x0

    iput v3, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    .line 416
    move-object/from16 v0, p11

    iput-object v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    .line 420
    :goto_2
    return-object v2

    .line 382
    :cond_1
    or-int/lit8 v8, v8, 0x1

    .line 383
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    or-int/lit16 v8, v8, 0x80

    .line 386
    :cond_2
    move/from16 v0, p9

    move/from16 v1, p8

    if-le v0, v1, :cond_3

    .line 387
    or-int/lit8 v8, v8, 0x10

    .line 389
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 390
    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mShowTZ:Z

    if-eqz v3, :cond_0

    .line 393
    const-string v3, " "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mHomeTZName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 409
    :cond_4
    move-object/from16 v0, p10

    iput-object v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    goto :goto_1

    .line 418
    :cond_5
    const/16 v3, 0x8

    iput v3, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    goto :goto_2
.end method


# virtual methods
.method public buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 34
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v26, Landroid/text/format/Time;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 271
    .local v26, "recycle":Landroid/text/format/Time;
    new-instance v25, Ljava/util/ArrayList;

    const/4 v4, 0x7

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v25, "mBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;>;"
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    const/4 v4, 0x7

    move/from16 v0, v24

    if-ge v0, v4, :cond_0

    .line 274
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/text/format/Time;->setToNow()V

    .line 277
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mShowTZ:Z

    .line 278
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mShowTZ:Z

    if-eqz v4, :cond_1

    .line 279
    invoke-static/range {p2 .. p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    move-object/from16 v0, v26

    iget v4, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mHomeTZName:Ljava/lang/String;

    .line 283
    :cond_1
    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v30

    .line 285
    .local v30, "tz":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 286
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    .line 287
    .local v27, "rowId":I
    const/4 v4, 0x5

    .line 288
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 289
    .local v5, "eventId":J
    const/4 v4, 0x0

    .line 290
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v7, 0x1

    .line 291
    .local v7, "allDay":Z
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 292
    .local v8, "start":J
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 293
    .local v10, "end":J
    const/4 v4, 0x3

    .line 294
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 295
    .local v14, "title":Ljava/lang/String;
    const/4 v4, 0x4

    .line 296
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, "location":Ljava/lang/String;
    const/4 v4, 0x6

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 301
    .local v12, "startDay":I
    const/4 v4, 0x7

    .line 302
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 303
    .local v13, "endDay":I
    const/16 v4, 0x8

    .line 304
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 305
    .local v16, "color":I
    const/16 v4, 0x9

    .line 306
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 309
    .local v17, "selfStatus":I
    if-eqz v7, :cond_3

    .line 310
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-static {v0, v8, v9, v1}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v8

    .line 311
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-static {v0, v10, v11, v1}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v10

    .line 321
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mNow:J

    move-wide/from16 v32, v0

    cmp-long v4, v10, v32

    if-ltz v4, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v24

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v17}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->populateEventInfo(JZJJIILjava/lang/String;Ljava/lang/String;II)Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 330
    .local v23, "from":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 331
    .local v29, "to":I
    move/from16 v20, v23

    .local v20, "day":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_2

    .line 332
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    sub-int v4, v20, v4

    .line 333
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/LinkedList;

    .line 334
    .local v18, "bucket":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;"
    new-instance v28, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;-><init>(II)V

    .line 335
    .local v28, "rowInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    if-eqz v7, :cond_7

    .line 336
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 331
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 277
    .end local v5    # "eventId":J
    .end local v7    # "allDay":Z
    .end local v8    # "start":J
    .end local v10    # "end":J
    .end local v12    # "startDay":I
    .end local v13    # "endDay":I
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "location":Ljava/lang/String;
    .end local v16    # "color":I
    .end local v17    # "selfStatus":I
    .end local v18    # "bucket":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;"
    .end local v20    # "day":I
    .end local v23    # "from":I
    .end local v27    # "rowId":I
    .end local v28    # "rowInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    .end local v29    # "to":I
    .end local v30    # "tz":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 279
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 290
    .restart local v5    # "eventId":J
    .restart local v27    # "rowId":I
    .restart local v30    # "tz":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 338
    .restart local v7    # "allDay":Z
    .restart local v8    # "start":J
    .restart local v10    # "end":J
    .restart local v12    # "startDay":I
    .restart local v13    # "endDay":I
    .restart local v14    # "title":Ljava/lang/String;
    .restart local v15    # "location":Ljava/lang/String;
    .restart local v16    # "color":I
    .restart local v17    # "selfStatus":I
    .restart local v18    # "bucket":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;"
    .restart local v20    # "day":I
    .restart local v23    # "from":I
    .restart local v28    # "rowInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    .restart local v29    # "to":I
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 343
    .end local v5    # "eventId":J
    .end local v7    # "allDay":Z
    .end local v8    # "start":J
    .end local v10    # "end":J
    .end local v12    # "startDay":I
    .end local v13    # "endDay":I
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "location":Ljava/lang/String;
    .end local v16    # "color":I
    .end local v17    # "selfStatus":I
    .end local v18    # "bucket":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;"
    .end local v20    # "day":I
    .end local v23    # "from":I
    .end local v27    # "rowId":I
    .end local v28    # "rowInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    .end local v29    # "to":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move/from16 v20, v0

    .line 344
    .restart local v20    # "day":I
    const/16 v19, 0x0

    .line 345
    .local v19, "count":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/LinkedList;

    .line 346
    .restart local v18    # "bucket":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_b

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    .line 349
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->populateDayInfo(ILandroid/text/format/Time;)Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;

    move-result-object v22

    .line 351
    .local v22, "dayInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v21

    .line 352
    .local v21, "dayIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move-object/from16 v31, v0

    new-instance v32, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;-><init>(II)V

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v21    # "dayIndex":I
    .end local v22    # "dayInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v31

    add-int v19, v19, v31

    .line 360
    :cond_b
    add-int/lit8 v20, v20, 0x1

    .line 361
    const/16 v31, 0x14

    move/from16 v0, v19

    move/from16 v1, v31

    if-lt v0, v1, :cond_9

    .line 365
    .end local v18    # "bucket":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;>;"
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\nCalendarAppWidgetModel [eventInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
