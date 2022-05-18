.class public final Lcn/nubia/deskclock/model/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;,
        Lcn/nubia/deskclock/model/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LABEL:Ljava/lang/String; = "0"

.field public static final INVALID_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "Alarm"


# instance fields
.field public alert:Landroid/net/Uri;

.field public cancelCount:I

.field public daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

.field public enableRecentAlarm:J

.field public enabled:Z

.field public hour:I

.field public id:I

.field public isHolidayAlarm:Z

.field public label:Ljava/lang/String;

.field public minutes:I

.field public recentAlarmTime:J

.field public silent:Z

.field public snoozeCount:I

.field public time:J

.field public volumeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/deskclock/model/Alarm$1;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/Alarm$1;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/model/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 352
    const-string v3, "enabled"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 353
    const-string v3, "hour"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 354
    const-string v3, "minutes"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 355
    new-instance v6, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    const-string v3, "daysOfWeek"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v6, v3}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v6, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 356
    const-string v3, "time"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 357
    const-string v3, "label"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 358
    const-string v3, "alert"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    .local v0, "alertString":Ljava/lang/String;
    const-string v3, "silent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    iput-boolean v4, p0, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 376
    :cond_0
    :goto_1
    :try_start_0
    const-string v3, "snoozeCount"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 377
    const-string v3, "volumeValue"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    .line 378
    const-string v3, "cancelCount"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 379
    const-string v3, "enableRecentAlarm"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    .line 380
    const-string v3, "recent_alarm_time"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    .line 381
    const-string v3, "isHolidayAlarm"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_3
    return-void

    .end local v0    # "alertString":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 352
    goto/16 :goto_0

    .line 362
    .restart local v0    # "alertString":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    invoke-static {p1, v0}, Lcn/nubia/deskclock/util/Utils;->filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "alertValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 369
    .end local v1    # "alertValue":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 370
    const/4 v3, 0x4

    .line 371
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    move v4, v5

    .line 381
    goto :goto_2

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ct"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 408
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 409
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 410
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 411
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 412
    new-instance v1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-direct {v1, v4}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 413
    const-string v1, "0"

    iput-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 414
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 415
    iput v4, p0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 416
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    .line 417
    iput v4, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 418
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    .line 419
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 312
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 313
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 314
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 315
    new-instance v3, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v3, v6}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 316
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 317
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 318
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "alertString":Ljava/lang/String;
    const-string v3, "silent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iput-boolean v4, p0, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 339
    :cond_0
    :goto_1
    const/16 v3, 0xc

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 340
    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    .line 341
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 342
    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    .line 343
    const/16 v3, 0x12

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    .line 344
    const/16 v3, 0x11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_3
    return-void

    .end local v0    # "alertString":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 312
    goto :goto_0

    .line 322
    .restart local v0    # "alertString":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    invoke-static {p2, v0}, Lcn/nubia/deskclock/util/Utils;->filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "alertValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 332
    .end local v1    # "alertValue":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 334
    invoke-static {v8}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    move v4, v5

    .line 344
    goto :goto_2

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 392
    new-instance v0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 403
    return-void

    :cond_0
    move v0, v2

    .line 389
    goto :goto_0

    :cond_1
    move v0, v2

    .line 401
    goto :goto_1

    :cond_2
    move v1, v2

    .line 402
    goto :goto_2
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "alarmId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;J)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2, p3}, Lcn/nubia/deskclock/model/Alarm;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "alarmId"    # J

    .prologue
    .line 701
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcn/nubia/deskclock/model/Alarm;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/net/Uri;)J
    .locals 2
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 714
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "alarmId"    # J

    .prologue
    .line 710
    sget-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 463
    instance-of v2, p1, Lcn/nubia/deskclock/model/Alarm;

    if-nez v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 465
    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 466
    .local v0, "other":Lcn/nubia/deskclock/model/Alarm;
    iget v2, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget v3, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlarmTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 445
    .local v0, "date":Ljava/util/Date;
    iget v2, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setHours(I)V

    .line 446
    iget v2, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 447
    invoke-static {p1}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 452
    :goto_0
    return-object v2

    .line 451
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "aa hh:mm "

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCancelAlarmDay(I)I
    .locals 9
    .param p1, "dayOfWeek"    # I

    .prologue
    const/4 v8, 0x1

    .line 470
    iget-object v7, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v7}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    .line 471
    .local v4, "mDays":I
    if-nez v4, :cond_0

    .line 472
    const/4 v5, -0x1

    .line 503
    :goto_0
    return v5

    .line 476
    :cond_0
    const/4 v2, 0x0

    .local v2, "dayCount":I
    move v3, v4

    .line 477
    .local v3, "days":I
    :goto_1
    if-lez v3, :cond_2

    .line 478
    and-int/lit8 v7, v3, 0x1

    if-ne v7, v8, :cond_1

    .line 479
    add-int/lit8 v2, v2, 0x1

    .line 480
    :cond_1
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 483
    :cond_2
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 484
    .local v0, "cancelcount":I
    const/4 v5, 0x0

    .line 485
    .local v5, "resultDay":I
    iget v7, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    if-le v7, v2, :cond_3

    .line 486
    div-int v7, v0, v2

    mul-int/lit8 v5, v7, 0x7

    .line 487
    rem-int/2addr v0, v2

    .line 490
    :cond_3
    add-int/lit8 v7, p1, 0x5

    rem-int/lit8 v6, v7, 0x7

    .line 492
    .local v6, "today":I
    const/4 v1, 0x0

    .line 493
    .local v1, "day":I
    const/4 v2, 0x0

    .line 494
    :goto_2
    const/4 v7, 0x7

    if-ge v2, v7, :cond_4

    .line 495
    add-int v7, v6, v2

    rem-int/lit8 v1, v7, 0x7

    .line 496
    shl-int v7, v8, v1

    and-int/2addr v7, v4

    if-lez v7, :cond_5

    .line 497
    add-int/lit8 v0, v0, -0x1

    .line 498
    if-gez v0, :cond_5

    .line 502
    :cond_4
    add-int/2addr v5, v2

    .line 503
    goto :goto_0

    .line 494
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getHolidayAlarm()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    return v0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0d0011

    .line 425
    :try_start_0
    const-string v1, "Alarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLabelOrDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    :goto_0
    return-object v1

    .line 429
    :cond_0
    const-string v1, "0"

    iget-object v2, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    iget-object v2, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    iget-object v2, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    const-string v2, "isCustomLabel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    const-string v2, "isCustomLabel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 434
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecenceAlarmTime()J
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    return-wide v0
.end method

.method public getRecentAlarmTIme()J
    .locals 2

    .prologue
    .line 519
    iget-wide v0, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    return v0
.end method

.method public setEnableRecentAlarm(J)V
    .locals 1
    .param p1, "alarmtime"    # J

    .prologue
    .line 507
    iput-wide p1, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    .line 508
    return-void
.end method

.method public setHolidayAlarmStatus(Z)V
    .locals 0
    .param p1, "holidayalarmstatus"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    .line 524
    return-void
.end method

.method public setRecentAlarmTime(J)V
    .locals 1
    .param p1, "alarmtime"    # J

    .prologue
    .line 515
    iput-wide p1, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    .line 516
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm{alert = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysOfWeek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snoozeCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableRecentAlarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isHolidayAlarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recentAlarmTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean v0, p0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object v0, p0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->recentAlarmTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-boolean v0, p0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-boolean v0, p0, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move v1, v2

    .line 81
    goto :goto_2
.end method
