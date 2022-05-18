.class abstract Lorg/joda/time/chrono/BasicFixedMonthChronology;
.super Lorg/joda/time/chrono/BasicChronology;
.source "BasicFixedMonthChronology.java"


# static fields
.field static final MILLIS_PER_MONTH:J = 0x9a7ec800L

.field static final MILLIS_PER_YEAR:J = 0x758fac300L

.field static final MONTH_LENGTH:I = 0x1e

.field private static final serialVersionUID:J = 0x3cdbe6c5deL


# direct methods
.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 60
    return-void
.end method


# virtual methods
.method getAverageMillisPerMonth()J
    .locals 2

    .prologue
    .line 158
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method getAverageMillisPerYear()J
    .locals 2

    .prologue
    .line 148
    const-wide v0, 0x758fac300L

    return-wide v0
.end method

.method getAverageMillisPerYearDividedByTwo()J
    .locals 2

    .prologue
    .line 153
    const-wide v0, 0x3ac7d6180L

    return-wide v0
.end method

.method getDayOfMonth(J)I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getDayOfYear(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getDaysInMonthMax()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x1e

    return v0
.end method

.method getDaysInMonthMax(I)I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method getDaysInYearMonth(II)I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method getMaxMonth()I
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0xd

    return v0
.end method

.method getMonthOfYear(J)I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getDayOfYear(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getMonthOfYear(JI)I
    .locals 5

    .prologue
    .line 137
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide v2, 0x9a7ec800L

    div-long/2addr v0, v2

    .line 138
    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getTotalMillisByYearMonth(II)J
    .locals 4

    .prologue
    .line 101
    add-int/lit8 v0, p2, -0x1

    int-to-long v0, v0

    const-wide v2, 0x9a7ec800L

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getYearDifference(JJ)J
    .locals 7

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYear(J)I

    move-result v0

    .line 86
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYear(J)I

    move-result v1

    .line 89
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMillis(I)J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 90
    invoke-virtual {p0, v1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMillis(I)J

    move-result-wide v4

    sub-long v4, p3, v4

    .line 92
    sub-int/2addr v0, v1

    .line 93
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 94
    add-int/lit8 v0, v0, -0x1

    .line 96
    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method isLeapYear(I)Z
    .locals 2

    .prologue
    .line 112
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setYear(JI)J
    .locals 5

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYear(J)I

    move-result v0

    .line 66
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getDayOfYear(JI)I

    move-result v0

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getMillisOfDay(J)I

    move-result v1

    .line 69
    const/16 v2, 0x16d

    if-le v0, v2, :cond_0

    .line 71
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 77
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p3, v2, v0}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMonthDayMillis(III)J

    move-result-wide v2

    .line 78
    int-to-long v0, v1

    add-long/2addr v0, v2

    .line 79
    return-wide v0
.end method
