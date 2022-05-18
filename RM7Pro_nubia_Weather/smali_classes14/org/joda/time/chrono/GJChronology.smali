.class public final Lorg/joda/time/chrono/GJChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "GJChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/GJChronology$LinkedDurationField;,
        Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;,
        Lorg/joda/time/chrono/GJChronology$CutoverField;
    }
.end annotation


# static fields
.field static final DEFAULT_CUTOVER:Lorg/joda/time/Instant;

.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/joda/time/chrono/GJCacheKey;",
            "Lorg/joda/time/chrono/GJChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2353b2d19aa5d9d7L


# instance fields
.field private iCutoverInstant:Lorg/joda/time/Instant;

.field private iCutoverMillis:J

.field private iGapDuration:J

.field private iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

.field private iJulianChronology:Lorg/joda/time/chrono/JulianChronology;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lorg/joda/time/Instant;

    const-wide v2, -0xb1d069b5400L

    invoke-direct {v0, v2, v3}, Lorg/joda/time/Instant;-><init>(J)V

    sput-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method private constructor <init>(Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method static synthetic access$000(Lorg/joda/time/chrono/GJChronology;)J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iGapDuration:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    return-object v0
.end method

.method private static convertByWeekyear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 95
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 96
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 97
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 98
    return-wide v0
.end method

.method private static convertByYear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v1

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GJChronology;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;JI)Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 243
    :goto_0
    invoke-static {p0, v0, p3}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Lorg/joda/time/Instant;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    goto :goto_0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/chrono/GJChronology;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;
    .locals 6

    .prologue
    .line 188
    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 190
    if-nez p1, :cond_1

    .line 191
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    move-object v1, v0

    .line 200
    :goto_0
    new-instance v3, Lorg/joda/time/chrono/GJCacheKey;

    invoke-direct {v3, v2, v1, p2}, Lorg/joda/time/chrono/GJCacheKey;-><init>(Lorg/joda/time/DateTimeZone;Lorg/joda/time/Instant;I)V

    .line 201
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/chrono/GJChronology;

    .line 202
    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne v2, v0, :cond_2

    .line 204
    new-instance v0, Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2, p2}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v4

    invoke-static {v2, p2}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-direct {v0, v4, v2, v1}, Lorg/joda/time/chrono/GJChronology;-><init>(Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V

    move-object v1, v0

    .line 216
    :goto_1
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/chrono/GJChronology;

    .line 217
    if-eqz v0, :cond_3

    .line 221
    :cond_0
    :goto_2
    return-object v0

    .line 193
    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->toInstant()Lorg/joda/time/Instant;

    move-result-object v0

    .line 194
    new-instance v1, Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v4

    invoke-static {v2}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v3

    invoke-direct {v1, v4, v5, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 195
    invoke-virtual {v1}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_4

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cutover too early. Must be on or after 0001-01-01."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, v1, p2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v1

    .line 210
    new-instance v0, Lorg/joda/time/chrono/GJChronology;

    invoke-static {v1, v2}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v2

    iget-object v4, v1, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v5, v1, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object v1, v1, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/joda/time/chrono/GJChronology;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    sget-object v1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 11

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 468
    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lorg/joda/time/chrono/JulianChronology;

    .line 469
    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v10, v1

    check-cast v10, Lorg/joda/time/chrono/GregorianChronology;

    .line 470
    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lorg/joda/time/Instant;

    .line 471
    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 473
    iput-object v9, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 474
    iput-object v10, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 475
    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 477
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    invoke-virtual {v10}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 486
    :cond_1
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByYear(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iGapDuration:J

    .line 492
    invoke-virtual {p1, v10}, Lorg/joda/time/chrono/AssembledChronology$Fields;->copyFieldsFrom(Lorg/joda/time/Chronology;)V

    .line 498
    invoke-virtual {v10}, Lorg/joda/time/chrono/GregorianChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    if-nez v0, :cond_2

    .line 502
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 503
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 504
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 505
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 506
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 507
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 508
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 509
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->hourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 510
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->clockhourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 511
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->clockhourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 513
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->halfdayOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    .line 518
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 525
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 527
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    .line 528
    new-instance v1, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v3

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;J)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 531
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 533
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    .line 535
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 538
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 540
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 542
    new-instance v1, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 544
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    .line 545
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->weekyearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 555
    invoke-virtual {v10}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v6

    .line 556
    new-instance v1, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 561
    invoke-virtual {v10}, Lorg/joda/time/chrono/GregorianChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v6

    .line 562
    new-instance v1, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 569
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v9}, Lorg/joda/time/chrono/JulianChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 571
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    iput-object v1, v0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iRangeDurationField:Lorg/joda/time/DurationField;

    .line 572
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 409
    if-ne p0, p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    instance-of v2, p1, Lorg/joda/time/chrono/GJChronology;

    if-eqz v2, :cond_3

    .line 413
    check-cast p1, Lorg/joda/time/chrono/GJChronology;

    .line 414
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    iget-wide v4, p1, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 418
    goto :goto_0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 338
    :cond_0
    return-wide v0

    .line 327
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 329
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 331
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/JulianChronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 333
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified date does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 348
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 380
    :cond_0
    return-wide v0

    .line 356
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIIIIII)J
    :try_end_0
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 370
    :cond_2
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 372
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/JulianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 375
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified date does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 360
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/16 v0, 0x1d

    if-eq p3, v0, :cond_4

    .line 361
    :cond_3
    throw v8

    .line 363
    :cond_4
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    const/16 v3, 0x1c

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 366
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 367
    throw v8
.end method

.method public getGregorianCutover()Lorg/joda/time/Instant;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    return-object v0
.end method

.method public getMinimumDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    return v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0
.end method

.method gregorianToJulianByWeekyear(J)J
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByWeekyear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method gregorianToJulianByYear(J)J
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByYear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 428
    const-string v0, "GJ"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {v1}, Lorg/joda/time/Instant;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method julianToGregorianByWeekyear(J)J
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByWeekyear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method julianToGregorianByYear(J)J
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByYear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 440
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 441
    const-string v0, "GJChronology"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 446
    const-string v0, ",cutover="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 449
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 453
    :goto_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/StringBuffer;J)V

    .line 456
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 457
    const-string v0, ",mdfw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 460
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 451
    :cond_2
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/GJChronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 2

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 314
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object p0

    goto :goto_0
.end method
