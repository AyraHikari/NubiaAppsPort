.class public Lorg/joda/time/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;,
        Lorg/joda/time/DateTimeUtils$FixedMillisProvider;,
        Lorg/joda/time/DateTimeUtils$SystemMillisProvider;,
        Lorg/joda/time/DateTimeUtils$MillisProvider;
    }
.end annotation


# static fields
.field public static final SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$MillisProvider;

.field private static volatile cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

.field private static final cZoneNames:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

    invoke-direct {v0}, Lorg/joda/time/DateTimeUtils$SystemMillisProvider;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 47
    sget-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$MillisProvider;

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cZoneNames:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private static buildDefaultTimeZoneNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 439
    const-string v1, "UT"

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "UTC"

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "GMT"

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "EST"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "EDT"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "CST"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v1, "CDT"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "MST"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "MDT"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v1, "PST"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "PDT"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lorg/joda/time/DateTimeUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static checkPermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "CurrentTime.setProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static final currentTimeMillis()J
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    invoke-interface {v0}, Lorg/joda/time/DateTimeUtils$MillisProvider;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final fromJulianDay(D)J
    .locals 4

    .prologue
    .line 516
    const-wide v0, 0x41429ec5c0000000L    # 2440587.5

    sub-double v0, p0, v0

    .line 517
    const-wide v2, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static final getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 0

    .prologue
    .line 268
    if-nez p0, :cond_0

    .line 269
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object p0

    .line 271
    :cond_0
    return-object p0
.end method

.method public static final getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 5

    .prologue
    .line 381
    :try_start_0
    const-class v0, Ljava/text/DateFormatSymbols;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public static final getDefaultTimeZoneNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    sget-object v0, Lorg/joda/time/DateTimeUtils;->cZoneNames:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 414
    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->buildDefaultTimeZoneNames()Ljava/util/Map;

    move-result-object v0

    .line 416
    sget-object v1, Lorg/joda/time/DateTimeUtils;->cZoneNames:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    sget-object v0, Lorg/joda/time/DateTimeUtils;->cZoneNames:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 420
    :cond_0
    return-object v0
.end method

.method public static final getDurationMillis(Lorg/joda/time/ReadableDuration;)J
    .locals 2

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    const-wide/16 v0, 0x0

    .line 322
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 180
    if-nez p0, :cond_1

    .line 181
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getInstantMillis(Lorg/joda/time/ReadableInstant;)J
    .locals 2

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final getIntervalChronology(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    if-eqz p0, :cond_2

    .line 205
    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 209
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 212
    :cond_1
    return-object v0

    .line 206
    :cond_2
    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getIntervalChronology(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 227
    if-nez p0, :cond_1

    .line 228
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .locals 0

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    .line 305
    :cond_0
    return-object p0
.end method

.method public static final getReadableInterval(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/ReadableInterval;
    .locals 2

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    new-instance p0, Lorg/joda/time/Interval;

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/joda/time/Interval;-><init>(JJ)V

    .line 254
    :cond_0
    return-object p0
.end method

.method public static final getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .locals 0

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 286
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 288
    :cond_0
    return-object p0
.end method

.method public static final isContiguous(Lorg/joda/time/ReadablePartial;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 350
    if-nez p0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 354
    :goto_0
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 355
    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    .line 356
    if-lez v0, :cond_2

    .line 357
    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    if-eq v4, v2, :cond_2

    .line 363
    :cond_1
    :goto_1
    return v1

    .line 361
    :cond_2
    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    :try_start_0
    invoke-static {p2}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final setCurrentMillisFixed(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 99
    new-instance v0, Lorg/joda/time/DateTimeUtils$FixedMillisProvider;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeUtils$FixedMillisProvider;-><init>(J)V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 100
    return-void
.end method

.method public static final setCurrentMillisOffset(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$MillisProvider;

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;-><init>(J)V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    goto :goto_0
.end method

.method public static final setCurrentMillisProvider(Lorg/joda/time/DateTimeUtils$MillisProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The MillisProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 136
    sput-object p0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 137
    return-void
.end method

.method public static final setCurrentMillisSystem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 85
    sget-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$MillisProvider;

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 86
    return-void
.end method

.method public static final setDefaultTimeZoneNames(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    sget-object v0, Lorg/joda/time/DateTimeUtils;->cZoneNames:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public static final toJulianDay(J)D
    .locals 4

    .prologue
    .line 483
    long-to-double v0, p0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    .line 484
    const-wide v2, 0x41429ec5c0000000L    # 2440587.5

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final toJulianDayNumber(J)J
    .locals 4

    .prologue
    .line 503
    invoke-static {p0, p1}, Lorg/joda/time/DateTimeUtils;->toJulianDay(J)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
