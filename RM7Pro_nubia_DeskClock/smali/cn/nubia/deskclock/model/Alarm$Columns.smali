.class public Lcn/nubia/deskclock/model/Alarm$Columns;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/model/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALARM_ALERT_INDEX:I = 0x8

.field public static final ALARM_CANCELCOUNT_INDEX:I = 0xe

.field public static final ALARM_DAYS_OF_WEEK_INDEX:I = 0x3

.field public static final ALARM_ENABLED_INDEX:I = 0x5

.field public static final ALARM_ENABLE_HOLIDAYINDEX:I = 0x11

.field public static final ALARM_ENABLE_RECENTALARM:I = 0x10

.field public static final ALARM_HOUR_INDEX:I = 0x1

.field public static final ALARM_ID_INDEX:I = 0x0

.field public static final ALARM_ISSNOOZE_INDEX:I = 0x9

.field public static final ALARM_MESSAGE_INDEX:I = 0x7

.field public static final ALARM_MINUTES_INDEX:I = 0x2

.field public static final ALARM_POWEROFFALARM_INDEX:I = 0xf

.field public static final ALARM_QUERY_COLUMNS:[Ljava/lang/String;

.field public static final ALARM_RENCENT_ALARMTIMENDEX:I = 0x12

.field public static final ALARM_SNOOZE_COUNT_INDEX:I = 0xc

.field public static final ALARM_SNOOZE_MAXCOUNT_INDEX:I = 0xb

.field public static final ALARM_SNOOZE_TIME_INDEX:I = 0xa

.field public static final ALARM_TIME:Ljava/lang/String; = "alarmtime"

.field public static final ALARM_TIME_INDEX:I = 0x4

.field public static final ALARM_VIBRATE_INDEX:I = 0x6

.field public static final ALARM_VOLUME_VALUE_INDEX:I = 0xd

.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final CANCELCOUNT:Ljava/lang/String; = "cancelcount"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DAYS_OF_WEEK:Ljava/lang/String; = "daysofweek"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "hour, minutes ASC"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final ENABLERECENTALARM:Ljava/lang/String; = "enablerecentalarm"

.field public static final HOLIDAYALARM:Ljava/lang/String; = "holidayalarm"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final INIT_SORT_ORDER:Ljava/lang/String; = "hour, minutes ASC"

.field public static final ISSNOOZE:Ljava/lang/String; = "issnooze"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final NO_RINGTONE:Ljava/lang/String;

.field public static final NO_RINGTONE_URI:Landroid/net/Uri;

.field public static final POWEROFFALARM:Ljava/lang/String; = "poweroffalarm"

.field public static final RECENTALARMTIME:Ljava/lang/String; = "recent_alarm_time"

.field public static final SNOOZECOUNT:Ljava/lang/String; = "snoozecount"

.field public static final SNOOZEMAXCOUNT:Ljava/lang/String; = "snoozemaxcount"

.field public static final SNOOZETIME:Ljava/lang/String; = "snoozetime"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final VOLUMEVALUE:Ljava/lang/String; = "volumevalue"

.field public static final WHERE_ENABLED:Ljava/lang/String; = "enabled=1"

.field public static final WHERE_ENABLERECENTALARM:Ljava/lang/String; = "enablerecentalarm =0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->NO_RINGTONE_URI:Landroid/net/Uri;

    .line 104
    sget-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->NO_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->NO_RINGTONE:Ljava/lang/String;

    .line 106
    const-string v0, "content://cn.nubia.deskclock/alarm"

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 247
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "daysofweek"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alarmtime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "message"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alert"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "issnooze"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snoozetime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "snoozemaxcount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "snoozecount"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "volumevalue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cancelcount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "poweroffalarm"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "enablerecentalarm"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "holidayalarm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "recent_alarm_time"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
