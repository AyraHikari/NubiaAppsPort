.class public Lcn/nubia/deskclock/AlarmJobService;
.super Landroid/app/job/JobService;
.source "AlarmJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmJobService"

.field private static mUpdateType:I


# instance fields
.field private mBootCompletedTime:J

.field private mContext:Landroid/content/Context;

.field private mDeltaTime:J

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 44
    iput-wide v0, p0, Lcn/nubia/deskclock/AlarmJobService;->mBootCompletedTime:J

    .line 45
    iput-wide v0, p0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    .line 46
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcn/nubia/deskclock/AlarmJobService;->mDeltaTime:J

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/AlarmJobService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmJobService;

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAlarmFromSharedPrf(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsUpdateSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 264
    .local v2, "alarmDataSharedPref":Landroid/content/SharedPreferences;
    new-instance v1, Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {v1, p1}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/content/Context;)V

    .line 265
    .local v1, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v3, "id"

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 266
    const-string v3, "hour"

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 267
    const-string v3, "minutes"

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 268
    const-string v3, "enabled"

    iget-boolean v4, v1, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 269
    const-string v3, "time"

    iget-wide v4, v1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 270
    const-string v3, "label"

    iget-object v4, v1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 271
    const-string v3, "alert"

    iget-object v4, v1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 272
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 273
    const-string v3, "snoozeCount"

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 274
    const-string v3, "volumeValue"

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    .line 275
    const-string v3, "cancelCount"

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 276
    const-string v3, "enableRecentAlarm"

    iget-wide v4, v1, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    .line 278
    const-string v3, "isHolidayAlarm"

    iget-boolean v4, v1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    .line 280
    const-string v3, "silent"

    iget-boolean v4, v1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v3, v4}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    .line 282
    .local v0, "a":Lcn/nubia/deskclock/model/Alarm;
    iget-object v3, v0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iput-object v3, v1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 283
    return-object v1
.end method

.method public static hasNubiaJobExtra()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    :try_start_0
    const-class v3, Landroid/app/job/JobInfo$Builder;

    const-string v4, "setNubiaOrder"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v1

    .line 314
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    move v1, v2

    .line 315
    goto :goto_0
.end method

.method private resetCountdownForceTouch(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "countdown_shortcut"

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {p1, v1, v2, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private resetStopWatchForceTouch(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_STOPWATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "stopwatch_shortcut"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00f7

    .line 295
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {p1, v1, v2, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private saveAlarmToSharedPrf(Lcn/nubia/deskclock/model/Alarm;Landroid/content/Context;)V
    .locals 6
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsUpdateSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    .local v0, "alarmDataSharedPref":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 244
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "updateTime"

    iget-wide v4, p0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v2, "id"

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v2, "hour"

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v2, "minutes"

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v2, "enabled"

    iget-boolean v3, p1, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v2, "time"

    iget-wide v4, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v2, "label"

    iget-object v3, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v2, "alert"

    iget-object v3, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string v2, "snoozeCount"

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v2, "volumeValue"

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v2, "cancelCount"

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v2, "enableRecentAlarm"

    iget-wide v4, p1, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v2, "isHolidayAlarm"

    iget-boolean v3, p1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v2, "silent"

    iget-boolean v3, p1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setNubiaOrder(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .locals 9
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "orderName"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setNubiaOrder"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 301
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Landroid/app/job/JobInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 302
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 303
    .local v3, "order":I
    const-string v4, "AlarmJobService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNubiaOrder order = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "order":I
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    const-string v4, "AlarmJobService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNubiaOrder order = Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startJobService(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateType"    # I

    .prologue
    .line 219
    const-string v3, "AlarmJobService"

    const-string v4, "startJobService"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sput p1, Lcn/nubia/deskclock/AlarmJobService;->mUpdateType:I

    .line 221
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcn/nubia/deskclock/AlarmJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 223
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 224
    invoke-static {}, Lcn/nubia/deskclock/AlarmJobService;->hasNubiaJobExtra()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    const-string v3, "AlarmJobService"

    const-string v4, "hasNubiaJobExtra()"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v3, "IS_NUBIA"

    invoke-static {v0, v3}, Lcn/nubia/deskclock/AlarmJobService;->setNubiaOrder(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    .line 228
    :cond_0
    const-string v3, "jobscheduler"

    .line 229
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 230
    .local v2, "scheduler":Landroid/app/job/JobScheduler;
    const-string v3, "AlarmJobService"

    const-string v4, "Schedule JobService"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AlarmJobService"

    const-string v4, "schedule AlarmJobService exception"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "AlarmJobService"

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    .line 57
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmParseXmlError(Z)V

    .line 58
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 59
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClockApplication;->getDirectBootContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "AlarmJobService"

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    sput v0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateType:I

    .line 65
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 66
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 36
    .param p1, "arg0"    # Landroid/app/job/JobParameters;

    .prologue
    .line 70
    const-string v29, "AlarmJobService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[onStartJob] mUpdateType : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcn/nubia/deskclock/AlarmJobService;->mUpdateType:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v16

    .line 72
    .local v16, "deskClockApplication":Lcn/nubia/deskclock/DeskClockApplication;
    if-nez v16, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    .end local v16    # "deskClockApplication":Lcn/nubia/deskclock/DeskClockApplication;
    check-cast v16, Lcn/nubia/deskclock/DeskClockApplication;

    .line 76
    .restart local v16    # "deskClockApplication":Lcn/nubia/deskclock/DeskClockApplication;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v21

    .line 77
    .local v21, "sharedPref":Landroid/content/SharedPreferences;
    sget v29, Lcn/nubia/deskclock/AlarmJobService;->mUpdateType:I

    packed-switch v29, :pswitch_data_0

    .line 195
    :cond_1
    :goto_0
    new-instance v29, Lcn/nubia/deskclock/AlarmJobService$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/AlarmJobService$1;-><init>(Lcn/nubia/deskclock/AlarmJobService;)V

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v30, v0

    .line 201
    invoke-virtual/range {v29 .. v30}, Lcn/nubia/deskclock/AlarmJobService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->getWidgetCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, "cityid":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 204
    const-string v29, "AlarmJobService"

    const-string v30, "  updatewidget_city"

    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v17, Landroid/content/Intent;

    const-string v29, "updatewidget_city"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/AlarmJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 209
    const/16 v29, 0x1

    return v29

    .line 79
    .end local v12    # "cityid":Ljava/lang/String;
    :pswitch_0
    const-string v29, "isPowerOffAlarm"

    const/16 v30, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 81
    .local v18, "poweroffAlarmState":Z
    const-string v29, "sys.zte.boot.reason"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "bootReason":Ljava/lang/String;
    const-string v29, "ro.boot.alarmboot"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 84
    .local v11, "bootReasonL":Z
    const-string v29, "AlarmJobService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "poweroffAlarmState = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", bootReason = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", bootReasonL = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    const-wide/16 v32, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 88
    const-string v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    if-eqz v11, :cond_6

    :cond_3
    if-eqz v18, :cond_6

    .line 89
    const-wide/32 v14, 0x3a980

    .line 91
    .local v14, "deltaTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v14, v15}, Lcn/nubia/deskclock/model/Alarms;->calculateNextAlert(Landroid/content/Context;J)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v7

    .line 93
    .local v7, "alarm":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v7, :cond_8

    .line 94
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x1c

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    .line 95
    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v29, :cond_4

    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v29, :cond_5

    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    move-object/from16 v0, v29

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v29, v0

    iget v0, v7, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    .line 96
    :cond_4
    invoke-static {v7}, Lcn/nubia/deskclock/util/AlarmUtils;->setCurrentAlertAlarm(Lcn/nubia/deskclock/model/Alarm;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v7}, Lcn/nubia/deskclock/model/Alarms;->startAlarmAlertFullScreen(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 102
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.nubia.deskclock.ALARM_MISS_ALERT"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .end local v7    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v14    # "deltaTime":J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcn/nubia/deskclock/model/Alarms;->getRecentAlarms(Landroid/content/Context;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcn/nubia/deskclock/model/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "stopwatch_sharedpref"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 146
    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-static/range {v19 .. v19}, Lcn/nubia/deskclock/util/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 147
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    const-string v30, "sw_state"

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    .line 148
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/AlarmJobService;->resetStopWatchForceTouch(Landroid/content/Context;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/AlarmJobService;->resetCountdownForceTouch(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 100
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .restart local v14    # "deltaTime":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v7}, Lcn/nubia/deskclock/model/Alarms;->startAlarmAlertFullScreenBoot(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    goto/16 :goto_1

    .line 104
    :cond_8
    const-string v29, "AlarmJobService"

    const-string v30, "poweroffAlarm == null"

    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/deskclock/AlarmJobService;->mBootCompletedTime:J

    .line 107
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsUpdateSharedPref()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 108
    .local v8, "alarmDataSharedPref":Landroid/content/SharedPreferences;
    const-string v29, "updateTime"

    const-wide/16 v30, 0x0

    move-object/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    .line 109
    const-string v29, "AlarmJobService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "BootCompletedTime - updateTime="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mBootCompletedTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    .line 111
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 109
    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mBootCompletedTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-lez v29, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mBootCompletedTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mUpdateTime:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    const-wide/32 v32, 0x1d4c0

    cmp-long v29, v30, v32

    if-gez v29, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/AlarmJobService;->getAlarmFromSharedPrf(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v7

    .line 115
    if-eqz v7, :cond_6

    .line 116
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x1c

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    .line 117
    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v29, :cond_9

    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v29, :cond_a

    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    move-object/from16 v0, v29

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v29, v0

    iget v0, v7, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 118
    :cond_9
    invoke-static {v7}, Lcn/nubia/deskclock/util/AlarmUtils;->setCurrentAlertAlarm(Lcn/nubia/deskclock/model/Alarm;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v7}, Lcn/nubia/deskclock/model/Alarms;->startAlarmAlertFullScreen(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 124
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.nubia.deskclock.ALARM_MISS_ALERT"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 128
    .local v20, "resolver":Landroid/content/ContentResolver;
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v28, "values":Landroid/content/ContentValues;
    iget-wide v0, v7, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v26, v0

    .line 130
    .local v26, "time":J
    const-string v29, "alarmtime"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    sget-object v29, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v0, v7, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 122
    .end local v20    # "resolver":Landroid/content/ContentResolver;
    .end local v26    # "time":J
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v7}, Lcn/nubia/deskclock/model/Alarms;->startAlarmAlertFullScreenBoot(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    goto :goto_3

    .line 158
    .end local v7    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v8    # "alarmDataSharedPref":Landroid/content/SharedPreferences;
    .end local v10    # "bootReason":Ljava/lang/String;
    .end local v11    # "bootReasonL":Z
    .end local v14    # "deltaTime":J
    .end local v18    # "poweroffAlarmState":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcn/nubia/deskclock/util/Utils;->isAlarmKlaxonRunning(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 159
    sget-object v29, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v29, :cond_c

    .line 164
    :cond_c
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v22

    .line 165
    .local v22, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v29, "snooze_ids"

    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v24

    .line 166
    .local v24, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 167
    .local v25, "snoozedIdsAlarms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    if-eqz v25, :cond_d

    .line 169
    const-string v29, "AlarmJobService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "time_set : snoozedIdsAlarms.size() : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 172
    .local v23, "snoozedAlarm":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 173
    .local v9, "alarmId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v9}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v6

    .line 174
    .local v6, "a":Lcn/nubia/deskclock/model/Alarm;
    const-string v30, "AlarmJobService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "time_set: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget v0, v6, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v0, v6, v1}, Lcn/nubia/deskclock/model/Alarms;->SnoozeNotification(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    goto :goto_4

    .line 178
    .end local v6    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v9    # "alarmId":I
    .end local v23    # "snoozedAlarm":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mDeltaTime:J

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Lcn/nubia/deskclock/model/Alarms;->calculateNextAlert(Landroid/content/Context;J)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v7

    .line 179
    .restart local v7    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v1}, Lcn/nubia/deskclock/AlarmJobService;->saveAlarmToSharedPrf(Lcn/nubia/deskclock/model/Alarm;Landroid/content/Context;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcn/nubia/deskclock/model/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v13

    .line 181
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 183
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v29

    if-eqz v29, :cond_10

    .line 185
    :cond_f
    new-instance v6, Lcn/nubia/deskclock/model/Alarm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v6, v13, v0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 186
    .restart local v6    # "a":Lcn/nubia/deskclock/model/Alarm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/AlarmJobService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v6}, Lcn/nubia/deskclock/model/Alarms;->updateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 187
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v29

    if-nez v29, :cond_f

    .line 190
    .end local v6    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_10
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v29

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 191
    throw v29

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/app/job/JobParameters;

    .prologue
    .line 214
    const-string v0, "AlarmJobService"

    const-string v1, "[onStopJob]"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    return v0
.end method
