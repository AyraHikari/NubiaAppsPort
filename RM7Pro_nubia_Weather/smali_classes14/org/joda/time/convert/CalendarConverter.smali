.class final Lorg/joda/time/convert/CalendarConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "CalendarConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/CalendarConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/joda/time/convert/CalendarConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/CalendarConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/CalendarConverter;->INSTANCE:Lorg/joda/time/convert/CalendarConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 68
    if-eqz p2, :cond_0

    .line 79
    :goto_0
    return-object p2

    .line 71
    :cond_0
    check-cast p1, Ljava/util/Calendar;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/convert/CalendarConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_1
.end method

.method public getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".BuddhistCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p2}, Lorg/joda/time/chrono/BuddhistChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/BuddhistChronology;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 96
    :cond_0
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_3

    .line 97
    check-cast p1, Ljava/util/GregorianCalendar;

    .line 98
    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 99
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 100
    invoke-static {p2}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 102
    invoke-static {p2}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;JI)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_3
    invoke-static {p2}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 2

    .prologue
    .line 121
    check-cast p1, Ljava/util/Calendar;

    .line 122
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 132
    const-class v0, Ljava/util/Calendar;

    return-object v0
.end method
