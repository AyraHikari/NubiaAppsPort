.class abstract Lorg/joda/time/chrono/BasicChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "BasicChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/BasicChronology$YearInfo;,
        Lorg/joda/time/chrono/BasicChronology$HalfdayField;
    }
.end annotation


# static fields
.field private static final CACHE_MASK:I = 0x3ff

.field private static final CACHE_SIZE:I = 0x400

.field private static final cClockhourOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cClockhourOfHalfdayField:Lorg/joda/time/DateTimeField;

.field private static final cDaysField:Lorg/joda/time/DurationField;

.field private static final cHalfdayOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cHalfdaysField:Lorg/joda/time/DurationField;

.field private static final cHourOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

.field private static final cHoursField:Lorg/joda/time/DurationField;

.field private static final cMillisField:Lorg/joda/time/DurationField;

.field private static final cMillisOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cMillisOfSecondField:Lorg/joda/time/DateTimeField;

.field private static final cMinuteOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cMinuteOfHourField:Lorg/joda/time/DateTimeField;

.field private static final cMinutesField:Lorg/joda/time/DurationField;

.field private static final cSecondOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cSecondOfMinuteField:Lorg/joda/time/DateTimeField;

.field private static final cSecondsField:Lorg/joda/time/DurationField;

.field private static final cWeeksField:Lorg/joda/time/DurationField;

.field private static final serialVersionUID:J = 0x72f3ed8da0b42f1fL


# instance fields
.field private final iMinDaysInFirstWeek:I

.field private final transient iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    .line 77
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    .line 79
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    .line 81
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    .line 83
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x2932e00

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    .line 85
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    .line 87
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cWeeksField:Lorg/joda/time/DurationField;

    .line 90
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfSecondField:Lorg/joda/time/DateTimeField;

    .line 93
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfDayField:Lorg/joda/time/DateTimeField;

    .line 96
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfMinuteField:Lorg/joda/time/DateTimeField;

    .line 99
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfDayField:Lorg/joda/time/DateTimeField;

    .line 102
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfHourField:Lorg/joda/time/DateTimeField;

    .line 105
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfDayField:Lorg/joda/time/DateTimeField;

    .line 108
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfDayField:Lorg/joda/time/DateTimeField;

    .line 111
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

    .line 114
    new-instance v0, Lorg/joda/time/field/ZeroIsMaxDateTimeField;

    sget-object v1, Lorg/joda/time/chrono/BasicChronology;->cHourOfDayField:Lorg/joda/time/DateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfDayField:Lorg/joda/time/DateTimeField;

    .line 117
    new-instance v0, Lorg/joda/time/field/ZeroIsMaxDateTimeField;

    sget-object v1, Lorg/joda/time/chrono/BasicChronology;->cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfHalfdayField:Lorg/joda/time/DateTimeField;

    .line 120
    new-instance v0, Lorg/joda/time/chrono/BasicChronology$HalfdayField;

    invoke-direct {v0}, Lorg/joda/time/chrono/BasicChronology$HalfdayField;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdayOfDayField:Lorg/joda/time/DateTimeField;

    .line 121
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 126
    const/16 v0, 0x400

    new-array v0, v0, [Lorg/joda/time/chrono/BasicChronology$YearInfo;

    iput-object v0, p0, Lorg/joda/time/chrono/BasicChronology;->iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 133
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/4 v0, 0x7

    if-le p3, v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid min days in first week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iput p3, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    .line 139
    return-void
.end method

.method static synthetic access$000()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method static synthetic access$100()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method private getDateTimeMillis0(IIII)J
    .locals 10

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    const-wide/16 v8, 0x0

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDateMidnightMillis(III)J

    move-result-wide v2

    .line 188
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 189
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lorg/joda/time/chrono/BasicChronology;->getDateMidnightMillis(III)J

    move-result-wide v2

    .line 190
    const v4, 0x5265c00

    sub-int/2addr p4, v4

    move-wide v4, v2

    .line 194
    :goto_0
    int-to-long v2, p4

    add-long/2addr v2, v4

    .line 195
    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 196
    const-wide v0, 0x7fffffffffffffffL

    .line 200
    :cond_0
    :goto_1
    return-wide v0

    .line 197
    :cond_1
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    :cond_2
    move-wide v0, v2

    .line 200
    goto :goto_1

    :cond_3
    move-wide v4, v2

    goto :goto_0
.end method

.method private getYearInfo(I)Lorg/joda/time/chrono/BasicChronology$YearInfo;
    .locals 4

    .prologue
    .line 782
    iget-object v0, p0, Lorg/joda/time/chrono/BasicChronology;->iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    and-int/lit16 v1, p1, 0x3ff

    aget-object v0, v0, v1

    .line 783
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;->iYear:I

    if-eq v1, p1, :cond_1

    .line 784
    :cond_0
    new-instance v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->calculateFirstDayOfYearMillis(I)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/joda/time/chrono/BasicChronology$YearInfo;-><init>(IJ)V

    .line 785
    iget-object v1, p0, Lorg/joda/time/chrono/BasicChronology;->iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    and-int/lit16 v2, p1, 0x3ff

    aput-object v0, v1, v2

    .line 787
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 269
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millis:Lorg/joda/time/DurationField;

    .line 270
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->seconds:Lorg/joda/time/DurationField;

    .line 271
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minutes:Lorg/joda/time/DurationField;

    .line 272
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hours:Lorg/joda/time/DurationField;

    .line 273
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdays:Lorg/joda/time/DurationField;

    .line 274
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    .line 275
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cWeeksField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    .line 277
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfSecondField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 278
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 279
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfMinuteField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 280
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 281
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfHourField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 282
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 283
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 284
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 285
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 286
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfHalfdayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 287
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdayOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    .line 292
    new-instance v0, Lorg/joda/time/chrono/BasicYearDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/BasicYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 293
    new-instance v0, Lorg/joda/time/chrono/GJYearOfEraDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, v1, p0}, Lorg/joda/time/chrono/GJYearOfEraDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 296
    new-instance v0, Lorg/joda/time/field/OffsetDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;I)V

    .line 298
    new-instance v1, Lorg/joda/time/field/DividedDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5}, Lorg/joda/time/field/DividedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 300
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    .line 302
    new-instance v1, Lorg/joda/time/field/RemainderDateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    check-cast v0, Lorg/joda/time/field/DividedDateTimeField;

    invoke-direct {v1, v0}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/field/DividedDateTimeField;)V

    .line 304
    new-instance v0, Lorg/joda/time/field/OffsetDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 307
    new-instance v0, Lorg/joda/time/chrono/GJEraDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/GJEraDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 308
    new-instance v0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    .line 309
    new-instance v0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    .line 310
    new-instance v0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 311
    new-instance v0, Lorg/joda/time/chrono/GJMonthOfYearDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/GJMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 312
    new-instance v0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 313
    new-instance v0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 315
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    iget-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 317
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 322
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    .line 323
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 324
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    .line 325
    return-void
.end method

.method abstract calculateFirstDayOfYearMillis(I)J
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    if-ne p0, p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 220
    check-cast p1, Lorg/joda/time/chrono/BasicChronology;

    .line 221
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method abstract getApproxMillisAtEpochDividedByTwo()J
.end method

.method abstract getAverageMillisPerMonth()J
.end method

.method abstract getAverageMillisPerYear()J
.end method

.method abstract getAverageMillisPerYearDividedByTwo()J
.end method

.method getDateMidnightMillis(III)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 630
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 631
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth(I)I

    move-result v1

    invoke-static {v0, p2, v3, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 632
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v1

    invoke-static {v0, p3, v3, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide v0

    .line 635
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_1

    .line 636
    const-wide v0, 0x7fffffffffffffffL

    .line 640
    :cond_0
    :goto_0
    return-wide v0

    .line 637
    :cond_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 638
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 160
    :goto_0
    return-wide v0

    .line 158
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x5265bff

    invoke-static {v0, p4, v1, v2}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getDateTimeMillis0(IIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 170
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 182
    :goto_0
    return-wide v0

    .line 174
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, p4, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 175
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {v0, p5, v2, v3}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 176
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {v0, p6, v2, v3}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 177
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v0, p7, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 178
    const v0, 0x36ee80

    mul-int/2addr v0, p4

    const v1, 0xea60

    mul-int/2addr v1, p5

    add-int/2addr v0, v1

    mul-int/lit16 v1, p6, 0x3e8

    add-int/2addr v0, v1

    add-int/2addr v0, p7

    int-to-long v0, v0

    .line 182
    long-to-int v0, v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/chrono/BasicChronology;->getDateTimeMillis0(IIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method getDayOfMonth(J)I
    .locals 3

    .prologue
    .line 475
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 476
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v1

    .line 477
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v0

    return v0
.end method

.method getDayOfMonth(JI)I
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v0

    .line 486
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v0

    return v0
.end method

.method getDayOfMonth(JII)I
    .locals 5

    .prologue
    .line 495
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 496
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 497
    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getDayOfWeek(J)I
    .locals 7

    .prologue
    const-wide/32 v2, 0x5265c00

    const-wide/16 v4, 0x7

    .line 561
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 562
    div-long v0, p1, v2

    .line 571
    :cond_0
    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    rem-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    .line 564
    :cond_1
    const-wide/32 v0, 0x5265bff

    sub-long v0, p1, v0

    div-long/2addr v0, v2

    .line 566
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 567
    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    rem-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method getDayOfYear(J)I
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfYear(JI)I

    move-result v0

    return v0
.end method

.method getDayOfYear(JI)I
    .locals 5

    .prologue
    .line 512
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 513
    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getDaysInMonthMax()I
    .locals 1

    .prologue
    .line 592
    const/16 v0, 0x1f

    return v0
.end method

.method abstract getDaysInMonthMax(I)I
.end method

.method getDaysInMonthMax(J)I
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 603
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v1

    .line 604
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v0

    return v0
.end method

.method getDaysInMonthMaxForSet(JI)I
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(J)I

    move-result v0

    return v0
.end method

.method getDaysInYear(I)I
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method getDaysInYearMax()I
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x16e

    return v0
.end method

.method abstract getDaysInYearMonth(II)I
.end method

.method getFirstWeekOfYearMillis(I)J
    .locals 6

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 366
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 367
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    move-result v2

    .line 369
    iget v3, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    rsub-int/lit8 v3, v3, 0x8

    if-le v2, v3, :cond_0

    .line 371
    rsub-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 375
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method getMaxMonth()I
    .locals 1

    .prologue
    .line 735
    const/16 v0, 0xc

    return v0
.end method

.method getMaxMonth(I)I
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth()I

    move-result v0

    return v0
.end method

.method abstract getMaxYear()I
.end method

.method getMillisOfDay(J)I
    .locals 7

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 578
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 579
    rem-long v0, p1, v4

    long-to-int v0, v0

    .line 581
    :goto_0
    return v0

    :cond_0
    const v0, 0x5265bff

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method abstract getMinYear()I
.end method

.method public getMinimumDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    return v0
.end method

.method getMonthOfYear(J)I
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v0

    return v0
.end method

.method abstract getMonthOfYear(JI)I
.end method

.method abstract getTotalMillisByYearMonth(II)J
.end method

.method getWeekOfWeekyear(J)I
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(JI)I

    move-result v0

    return v0
.end method

.method getWeekOfWeekyear(JI)I
    .locals 5

    .prologue
    .line 543
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    .line 544
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 545
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v0

    .line 551
    :goto_0
    return v0

    .line 547
    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v2

    .line 548
    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 549
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    :cond_1
    sub-long v0, p1, v0

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getWeeksInYear(I)I
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    .line 355
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v2

    .line 356
    sub-long v0, v2, v0

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getWeekyear(J)I
    .locals 3

    .prologue
    .line 520
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 521
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(JI)I

    move-result v1

    .line 522
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 523
    const-wide/32 v0, 0x240c8400

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 524
    :cond_1
    const/16 v2, 0x33

    if-le v1, v2, :cond_0

    .line 525
    const-wide/32 v0, 0x48190800

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    goto :goto_0
.end method

.method getYear(J)I
    .locals 11

    .prologue
    const-wide v2, 0x757b12c00L

    const-wide/16 v8, 0x0

    .line 426
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYearDividedByTwo()J

    move-result-wide v4

    .line 427
    const/4 v0, 0x1

    shr-long v0, p1, v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getApproxMillisAtEpochDividedByTwo()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 428
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 429
    sub-long/2addr v0, v4

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 431
    :cond_0
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 433
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v4

    .line 434
    sub-long v6, p1, v4

    .line 436
    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    .line 437
    add-int/lit8 v0, v0, -0x1

    .line 455
    :cond_1
    :goto_0
    return v0

    .line 438
    :cond_2
    cmp-long v1, v6, v2

    if-ltz v1, :cond_1

    .line 441
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    const-wide v2, 0x75cd78800L

    .line 447
    :cond_3
    add-long/2addr v2, v4

    .line 449
    cmp-long v1, v2, p1

    if-gtz v1, :cond_1

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method abstract getYearDifference(JJ)J
.end method

.method getYearMillis(I)J
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearInfo(I)Lorg/joda/time/chrono/BasicChronology$YearInfo;

    move-result-object v0

    iget-wide v0, v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;->iFirstDayMillis:J

    return-wide v0
.end method

.method getYearMonthDayMillis(III)J
    .locals 6

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 413
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 414
    add-int/lit8 v2, p3, -0x1

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getYearMonthMillis(II)J
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 399
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 400
    return-wide v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isLeapDay(J)Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method abstract isLeapYear(I)Z
.end method

.method abstract setYear(JI)J
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 247
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 248
    if-ltz v2, :cond_0

    .line 249
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 258
    const-string v0, ",mdfw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
