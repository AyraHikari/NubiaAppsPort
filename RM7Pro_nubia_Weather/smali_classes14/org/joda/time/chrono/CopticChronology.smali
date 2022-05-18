.class public final Lorg/joda/time/chrono/CopticChronology;
.super Lorg/joda/time/chrono/BasicFixedMonthChronology;
.source "CopticChronology.java"


# static fields
.field public static final AM:I = 0x1

.field private static final ERA_FIELD:Lorg/joda/time/DateTimeField;

.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

.field private static final MAX_YEAR:I = 0x116bba44

.field private static final MIN_YEAR:I = -0x116bad19

.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/CopticChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x52e3a9d3f80ef876L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;

    const-string v1, "AM"

    invoke-direct {v0, v1}, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    .line 78
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 167
    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/CopticChronology;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;
    .locals 10

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 122
    :cond_0
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/CopticChronology;

    .line 123
    if-nez v0, :cond_5

    .line 124
    const/4 v0, 0x7

    new-array v1, v0, [Lorg/joda/time/chrono/CopticChronology;

    .line 125
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/CopticChronology;

    .line 126
    if-eqz v0, :cond_4

    move-object v9, v0

    .line 131
    :goto_0
    add-int/lit8 v0, p1, -0x1

    :try_start_0
    aget-object v0, v9, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    if-nez v0, :cond_2

    .line 137
    monitor-enter v9

    .line 138
    add-int/lit8 v0, p1, -0x1

    :try_start_1
    aget-object v0, v9, v0

    .line 139
    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v0, :cond_3

    .line 142
    new-instance v8, Lorg/joda/time/chrono/CopticChronology;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 144
    new-instance v0, Lorg/joda/time/DateTime;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 145
    new-instance v1, Lorg/joda/time/chrono/CopticChronology;

    const/4 v2, 0x0

    invoke-static {v8, v0, v2}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    move-object v0, v1

    .line 153
    :goto_1
    add-int/lit8 v1, p1, -0x1

    aput-object v0, v9, v1

    .line 155
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_2
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid min days in first week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_3
    :try_start_2
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, p1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v1

    .line 150
    new-instance v0, Lorg/joda/time/chrono/CopticChronology;

    invoke-static {v1, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    move-object v9, v1

    goto :goto_0

    :cond_5
    move-object v9, v0

    goto :goto_0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/CopticChronology;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    .line 175
    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 176
    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v1, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 263
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 264
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 266
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 267
    new-instance v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 268
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 270
    :cond_0
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .locals 6

    .prologue
    .line 220
    add-int/lit16 v1, p1, -0x697

    .line 222
    if-gtz v1, :cond_1

    .line 225
    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 234
    :cond_0
    :goto_0
    int-to-long v2, v1

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 239
    const-wide v2, 0x516e8ec00L

    add-long/2addr v0, v2

    return-wide v0

    .line 227
    :cond_1
    shr-int/lit8 v0, v1, 0x2

    .line 229
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/CopticChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .locals 2

    .prologue
    .line 254
    const-wide v0, 0x183322244100L

    return-wide v0
.end method

.method getMaxYear()I
    .locals 1

    .prologue
    .line 249
    const v0, 0x116bba44

    return v0
.end method

.method getMinYear()I
    .locals 1

    .prologue
    .line 244
    const v0, -0x116bad19

    return v0
.end method

.method isLeapDay(J)Z
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 205
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;

    move-result-object p0

    goto :goto_0
.end method
