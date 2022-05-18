.class public Lcn/nubia/deskclock/model/AlarmsDb;
.super Ljava/lang/Object;
.source "AlarmsDb.java"


# static fields
.field public static final LAST_SNOOZE_TIME_MILLIS:Ljava/lang/String; = "last_snooze_time_millis"

.field private static final SNOOZE:Ljava/lang/String; = "snooze"

.field private static final TAG:Ljava/lang/String; = "AlarmsDb"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static readLastSnoozeTime(Landroid/content/Context;I)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmId"    # I

    .prologue
    .line 63
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getLastSnoozeSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "pref":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snooze"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static resetLastSnoozeTime(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmId"    # I

    .prologue
    .line 69
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getLastSnoozeSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snooze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    return-void
.end method

.method public static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeString"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    :try_start_0
    const-string v2, "DeskClock:[AlarmsDb]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting next alarm string in system to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, p1

    .line 33
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmsDb"

    const-string v2, "Settings.System.putString error"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static saveSnoozeCountAdd(Landroid/content/Context;IZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "isClear"    # Z

    .prologue
    const/4 v8, 0x1

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    .line 77
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 79
    .local v3, "sharedPref":Landroid/content/SharedPreferences;
    const-string v6, "snoozeMaxCount"

    const/16 v7, 0x12c

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, "snoozeMaxCount":I
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 85
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 86
    .local v5, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_2

    .line 87
    iput v8, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 92
    :cond_1
    :goto_1
    const-string v6, "snoozecount"

    iget v7, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :try_start_0
    sget-object v6, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v7, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v8, v7

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :cond_2
    iget v6, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-ge v6, v4, :cond_1

    .line 90
    iget v6, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    goto :goto_1
.end method

.method public static writeLastSnoozeTime(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmId"    # I

    .prologue
    .line 56
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getLastSnoozeSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snooze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    return-void
.end method
