.class interface abstract Lcn/nubia/deskclock/database/AlarmDatabaseHelper$CreateTable;
.super Ljava/lang/Object;
.source "AlarmDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/database/AlarmDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CreateTable"
.end annotation


# static fields
.field public static final CREATE_ALARM:Ljava/lang/String; = "CREATE TABLE alarms (_id INTEGER PRIMARY KEY,hour INTEGER, minutes INTEGER, daysofweek INTEGER, alarmtime INTEGER, enabled INTEGER, vibrate INTEGER, message TEXT, alert TEXT, issnooze INTEGER, snoozetime INTEGER, snoozemaxcount INTEGER, snoozecount INTEGER, volumevalue INTEGER, cancelcount INTEGER,poweroffalarm INTEGER NOT NULL DEFAULT 1,enablerecentalarm INTEGER NOT NULL DEFAULT 1,holidayalarm INTEGER NOT NULL DEFAULT 1, recent_alarm_time INTEGER NOT NULL DEFAULT 0 );"
