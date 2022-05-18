.class public final Lorg/joda/time/chrono/JulianChronology;
.super Lorg/joda/time/chrono/BasicGJChronology;
.source "JulianChronology.java"


# static fields
.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

.field private static final MAX_YEAR:I = 0x116bbb60

.field private static final MILLIS_PER_MONTH:J = 0x9cbf9040L

.field private static final MILLIS_PER_YEAR:J = 0x758fac300L

.field private static final MIN_YEAR:I = -0x116babfe

.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/JulianChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x792ae22fcd5d139fL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/JulianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

    .line 74
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicGJChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 168
    return-void
.end method

.method static adjustYearForSet(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    if-gtz p0, :cond_1

    .line 78
    if-nez p0, :cond_0

    .line 79
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 82
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 84
    :cond_1
    return p0
.end method

.method public static getInstance()Lorg/joda/time/chrono/JulianChronology;
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;
    .locals 4

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 128
    :cond_0
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/JulianChronology;

    .line 129
    if-nez v0, :cond_5

    .line 130
    const/4 v0, 0x7

    new-array v1, v0, [Lorg/joda/time/chrono/JulianChronology;

    .line 131
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/JulianChronology;

    .line 132
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 137
    :cond_1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    :try_start_0
    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    if-nez v0, :cond_3

    .line 143
    monitor-enter v1

    .line 144
    add-int/lit8 v0, p1, -0x1

    :try_start_1
    aget-object v0, v1, v0

    .line 145
    if-nez v0, :cond_2

    .line 146
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v0, :cond_4

    .line 147
    new-instance v0, Lorg/joda/time/chrono/JulianChronology;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lorg/joda/time/chrono/JulianChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 153
    :goto_1
    add-int/lit8 v2, p1, -0x1

    aput-object v0, v1, v2

    .line 155
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_3
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
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
    :cond_4
    :try_start_2
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, p1}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v2

    .line 150
    new-instance v0, Lorg/joda/time/chrono/JulianChronology;

    invoke-static {v2, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lorg/joda/time/chrono/JulianChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/JulianChronology;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    .line 176
    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 177
    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v1, v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 273
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 274
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 276
    :cond_0
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .locals 6

    .prologue
    .line 224
    add-int/lit16 v1, p1, -0x7b0

    .line 226
    if-gtz v1, :cond_1

    .line 229
    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 238
    :cond_0
    :goto_0
    int-to-long v2, v1

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 242
    const-wide v2, 0xe71960800L

    sub-long/2addr v0, v2

    return-wide v0

    .line 231
    :cond_1
    shr-int/lit8 v0, v1, 0x2

    .line 233
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/JulianChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .locals 2

    .prologue
    .line 266
    const-wide v0, 0x1c453aba2980L

    return-wide v0
.end method

.method getAverageMillisPerMonth()J
    .locals 2

    .prologue
    .line 262
    const-wide v0, 0x9cbf9040L

    return-wide v0
.end method

.method getAverageMillisPerYear()J
    .locals 2

    .prologue
    .line 254
    const-wide v0, 0x758fac300L

    return-wide v0
.end method

.method getAverageMillisPerYearDividedByTwo()J
    .locals 2

    .prologue
    .line 258
    const-wide v0, 0x3ac7d6180L

    return-wide v0
.end method

.method getDateMidnightMillis(III)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, Lorg/joda/time/chrono/JulianChronology;->adjustYearForSet(I)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Lorg/joda/time/chrono/BasicGJChronology;->getDateMidnightMillis(III)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxYear()I
    .locals 1

    .prologue
    .line 250
    const v0, 0x116bbb60

    return v0
.end method

.method getMinYear()I
    .locals 1

    .prologue
    .line 246
    const v0, -0x116babfe

    return v0
.end method

.method isLeapYear(I)Z
    .locals 1

    .prologue
    .line 216
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

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
    .line 190
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 206
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;

    move-result-object p0

    goto :goto_0
.end method
