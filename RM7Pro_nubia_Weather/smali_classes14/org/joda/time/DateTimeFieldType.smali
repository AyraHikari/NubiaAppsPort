.class public abstract Lorg/joda/time/DateTimeFieldType;
.super Ljava/lang/Object;
.source "DateTimeFieldType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;
    }
.end annotation


# static fields
.field static final CENTURY_OF_ERA:B = 0x3t

.field private static final CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final CLOCKHOUR_OF_DAY:B = 0x10t

.field private static final CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final CLOCKHOUR_OF_HALFDAY:B = 0xft

.field private static final CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final DAY_OF_MONTH:B = 0x8t

.field private static final DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final DAY_OF_WEEK:B = 0xct

.field private static final DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final DAY_OF_YEAR:B = 0x6t

.field private static final DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final ERA:B = 0x1t

.field private static final ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final HALFDAY_OF_DAY:B = 0xdt

.field private static final HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final HOUR_OF_DAY:B = 0x11t

.field private static final HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final HOUR_OF_HALFDAY:B = 0xet

.field private static final HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MILLIS_OF_DAY:B = 0x16t

.field private static final MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MILLIS_OF_SECOND:B = 0x17t

.field private static final MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MINUTE_OF_DAY:B = 0x12t

.field private static final MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MINUTE_OF_HOUR:B = 0x13t

.field private static final MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MONTH_OF_YEAR:B = 0x7t

.field private static final MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final SECOND_OF_DAY:B = 0x14t

.field private static final SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final SECOND_OF_MINUTE:B = 0x15t

.field private static final SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final WEEKYEAR:B = 0xat

.field static final WEEKYEAR_OF_CENTURY:B = 0x9t

.field private static final WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field private static final WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final WEEK_OF_WEEKYEAR:B = 0xbt

.field private static final WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final YEAR:B = 0x5t

.field static final YEAR_OF_CENTURY:B = 0x4t

.field private static final YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final YEAR_OF_ERA:B = 0x2t

.field private static final YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

.field private static final YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field private static final serialVersionUID:J = -0x26c224fb83e6L


# instance fields
.field private final iName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "era"

    const/4 v2, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 76
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "yearOfEra"

    const/4 v2, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 79
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "centuryOfEra"

    const/4 v2, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 82
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "yearOfCentury"

    const/4 v2, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 85
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "year"

    const/4 v2, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 88
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "dayOfYear"

    const/4 v2, 0x6

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 91
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "monthOfYear"

    const/4 v2, 0x7

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 94
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "dayOfMonth"

    const/16 v2, 0x8

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 97
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "weekyearOfCentury"

    const/16 v2, 0x9

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 100
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "weekyear"

    const/16 v2, 0xa

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 103
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "weekOfWeekyear"

    const/16 v2, 0xb

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 106
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "dayOfWeek"

    const/16 v2, 0xc

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 110
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "halfdayOfDay"

    const/16 v2, 0xd

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 113
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "hourOfHalfday"

    const/16 v2, 0xe

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 116
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "clockhourOfHalfday"

    const/16 v2, 0xf

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 119
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "clockhourOfDay"

    const/16 v2, 0x10

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 122
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "hourOfDay"

    const/16 v2, 0x11

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 125
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "minuteOfDay"

    const/16 v2, 0x12

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 128
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "minuteOfHour"

    const/16 v2, 0x13

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 131
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "secondOfDay"

    const/16 v2, 0x14

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 134
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "secondOfMinute"

    const/16 v2, 0x15

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 137
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "millisOfDay"

    const/16 v2, 0x16

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    .line 140
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const-string v1, "millisOfSecond"

    const/16 v2, 0x17

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/joda/time/DateTimeFieldType;->iName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic access$000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1300()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1400()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1500()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1600()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1700()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1800()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1900()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$2000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$2100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$2200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$300()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$400()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$500()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$600()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$700()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$800()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$900()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static centuryOfEra()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static clockhourOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static dayOfMonth()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static dayOfWeek()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static dayOfYear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static era()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static halfdayOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static hourOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static hourOfHalfday()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static millisOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static millisOfSecond()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static minuteOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static minuteOfHour()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static monthOfYear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static secondOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static secondOfMinute()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static weekyear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static year()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static yearOfCentury()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static yearOfEra()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method


# virtual methods
.method public abstract getDurationType()Lorg/joda/time/DurationFieldType;
.end method

.method public abstract getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/joda/time/DateTimeFieldType;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRangeDurationType()Lorg/joda/time/DurationFieldType;
.end method

.method public isSupported(Lorg/joda/time/Chronology;)Z
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
