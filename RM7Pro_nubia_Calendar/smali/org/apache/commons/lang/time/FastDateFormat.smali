.class public Lorg/apache/commons/lang/time/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/FastDateFormat$Pair;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;,
        Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TextField;,
        Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;,
        Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;,
        Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cDateInstanceCache:Ljava/util/Map;

.field private static final cDateTimeInstanceCache:Ljava/util/Map;

.field private static cDefaultPattern:Ljava/lang/String; = null

.field private static final cInstanceCache:Ljava/util/Map;

.field private static final cTimeInstanceCache:Ljava/util/Map;

.field private static final cTimeZoneDisplayCache:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mLocaleForced:Z

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;

.field private final mTimeZoneForced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 536
    if-nez p1, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pattern must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    .line 541
    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    .line 542
    if-nez p2, :cond_1

    .line 543
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 545
    :cond_1
    iput-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    .line 547
    if-eqz p3, :cond_4

    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    .line 548
    if-nez p3, :cond_2

    .line 549
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 551
    :cond_2
    iput-object p3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    .line 552
    return-void

    :cond_3
    move v0, v2

    .line 541
    goto :goto_0

    :cond_4
    move v1, v2

    .line 547
    goto :goto_1
.end method

.method public static getDateInstance(I)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 10
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 281
    const-class v7, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 282
    .local v3, "key":Ljava/lang/Integer;
    if-eqz p1, :cond_2

    .line 283
    new-instance v4, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v4, v3, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .end local v3    # "key":Ljava/lang/Integer;
    :goto_0
    if-nez p2, :cond_0

    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 290
    :cond_0
    new-instance v3, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v3, v4, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .local v3, "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    sget-object v6, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/time/FastDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v1, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v1, :cond_1

    .line 295
    :try_start_1
    invoke-static {p0, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 296
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v1

    .line 298
    sget-object v6, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_1
    monitor-exit v7

    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No date pattern for locale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .end local v1    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local v3    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .local v3, "key":Ljava/lang/Integer;
    :cond_2
    move-object v4, v3

    .local v4, "key":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static getDateTimeInstance(II)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 10
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 460
    const-class v7, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v7

    :try_start_0
    new-instance v3, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v3, v6, v8}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .local v3, "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    if-eqz p2, :cond_2

    .line 462
    new-instance v4, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v4, v3, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    .end local v3    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    .local v4, "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    :goto_0
    if-nez p3, :cond_0

    .line 465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 467
    :cond_0
    new-instance v3, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v3, v4, p3}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    .end local v4    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    .restart local v3    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    sget-object v6, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/time/FastDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .local v1, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v1, :cond_1

    .line 472
    :try_start_1
    invoke-static {p0, p1, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 474
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p2, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v1

    .line 476
    sget-object v6, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_1
    monitor-exit v7

    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No date time pattern for locale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .end local v1    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local v3    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v3    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    :cond_2
    move-object v4, v3

    .end local v3    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    .restart local v4    # "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    goto :goto_0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    const-class v1, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;

    .line 516
    :cond_0
    sget-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {}, Lorg/apache/commons/lang/time/FastDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 213
    const-class v3, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 214
    .local v0, "emptyFormat":Lorg/apache/commons/lang/time/FastDateFormat;
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 215
    .local v1, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v1, :cond_0

    .line 216
    move-object v1, v0

    .line 217
    invoke-virtual {v1}, Lorg/apache/commons/lang/time/FastDateFormat;->init()V

    .line 218
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit v3

    return-object v1

    .line 213
    .end local v0    # "emptyFormat":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local v1    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getTimeInstance(I)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 10
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 366
    const-class v7, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 367
    .local v3, "key":Ljava/lang/Integer;
    if-eqz p1, :cond_3

    .line 368
    new-instance v4, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v4, v3, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    .end local v3    # "key":Ljava/lang/Integer;
    :goto_0
    if-eqz p2, :cond_2

    .line 371
    new-instance v3, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v3, v4, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    :goto_1
    sget-object v6, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 375
    .local v1, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v1, :cond_1

    .line 376
    if-nez p2, :cond_0

    .line 377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 381
    :cond_0
    :try_start_1
    invoke-static {p0, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 382
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v1

    .line 384
    sget-object v6, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_1
    monitor-exit v7

    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No date pattern for locale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .end local v1    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    move-object v3, v4

    goto :goto_1

    .restart local v3    # "key":Ljava/lang/Integer;
    :cond_3
    move-object v4, v3

    .local v4, "key":Ljava/lang/Object;
    goto :goto_0
.end method

.method static declared-synchronized getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 497
    const-class v3, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 498
    .local v0, "key":Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 501
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 502
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_0
    monitor-exit v3

    return-object v1

    .line 497
    .end local v0    # "key":Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1028
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1029
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/FastDateFormat;->init()V

    .line 1030
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 887
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    .line 888
    .local v2, "rules":[Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    array-length v1, v3

    .line 889
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 890
    aget-object v3, v2, v0

    invoke-interface {v3, p2, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 977
    instance-of v2, p1, Lorg/apache/commons/lang/time/FastDateFormat;

    if-nez v2, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 980
    check-cast v0, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 981
    .local v0, "other":Lorg/apache/commons/lang/time/FastDateFormat;
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    iget-boolean v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    iget-boolean v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    if-ne v2, v3, :cond_0

    .line 988
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public format(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 809
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 819
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 820
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 821
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 844
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 789
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 790
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    .line 791
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 792
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 793
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 794
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 796
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v0, "<null>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 870
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 872
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "calendar":Ljava/util/Calendar;
    check-cast p1, Ljava/util/Calendar;

    .line 873
    .restart local p1    # "calendar":Ljava/util/Calendar;
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 875
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 856
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 857
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 858
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getTimeZoneOverridesCalendar()Z
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    iget-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 1003
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    iget-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v0, v2

    .line 1005
    return v0

    :cond_0
    move v1, v3

    .line 1002
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1004
    goto :goto_1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/FastDateFormat;->parsePattern()Ljava/util/List;

    move-result-object v2

    .line 559
    .local v2, "rulesList":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    check-cast v3, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    iput-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, "len":I
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    array-length v0, v3

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 563
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/apache/commons/lang/time/FastDateFormat$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 566
    :cond_0
    iput v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    .line 567
    return-void
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v0, 0x0

    .line 905
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 906
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 24

    .prologue
    .line 578
    new-instance v16, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 579
    .local v16, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v12, "rules":Ljava/util/List;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, "ERAs":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v10

    .line 583
    .local v10, "months":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v13

    .line 584
    .local v13, "shortMonths":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v19

    .line 585
    .local v19, "weekdays":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v14

    .line 586
    .local v14, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "AmPmStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v9

    .line 589
    .local v9, "length":I
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v8, v0, [I

    .line 591
    .local v8, "indexRef":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 592
    const/16 v20, 0x0

    aput v7, v8, v20

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/lang/time/FastDateFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v17

    .line 594
    .local v17, "token":Ljava/lang/String;
    const/16 v20, 0x0

    aget v7, v8, v20

    .line 596
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 597
    .local v18, "tokenLen":I
    if-nez v18, :cond_1

    .line 697
    .end local v17    # "token":Ljava/lang/String;
    .end local v18    # "tokenLen":I
    :cond_0
    return-object v12

    .line 602
    .restart local v17    # "token":Ljava/lang/String;
    .restart local v18    # "tokenLen":I
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 604
    .local v6, "c":C
    sparse-switch v6, :sswitch_data_0

    .line 691
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "Illegal pattern component: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 606
    :sswitch_0
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v11, v0, v5}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 694
    .local v11, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :goto_1
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 609
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_1
    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 610
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 612
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_2
    sget-object v11, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;

    .line 614
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 616
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_2
    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 617
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v11, v0, v10}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 618
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_3
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 619
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v11, v0, v13}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 620
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 621
    sget-object v11, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 623
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_5
    sget-object v11, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;

    .line 625
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 627
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_3
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 628
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 630
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_4
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;

    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;-><init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V

    .line 631
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 633
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_5
    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 634
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1

    .line 636
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_6
    const/16 v20, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 637
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 639
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_7
    const/16 v20, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 640
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 642
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_8
    const/16 v20, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 643
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 645
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_9
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v21, 0x7

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v20, v14

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 646
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_6
    move-object/from16 v20, v19

    .line 645
    goto :goto_2

    .line 648
    :sswitch_a
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 649
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 651
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_b
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 652
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 654
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_c
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 655
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 657
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_d
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 658
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 660
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_e
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v20, 0x9

    move/from16 v0, v20

    invoke-direct {v11, v0, v4}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 661
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 663
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_f
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;

    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;-><init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V

    .line 664
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 666
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_10
    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v11

    .line 667
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 669
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_11
    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 670
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 672
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_7
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V

    .line 674
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 676
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_12
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 677
    sget-object v11, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 679
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_8
    sget-object v11, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    .line 681
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 683
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_13
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 684
    .local v15, "sub":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 685
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    invoke-direct {v11, v0}, Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;-><init>(C)V

    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 687
    .end local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_9
    new-instance v11, Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;

    invoke-direct {v11, v15}, Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 689
    .restart local v11    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_13
        0x44 -> :sswitch_a
        0x45 -> :sswitch_9
        0x46 -> :sswitch_b
        0x47 -> :sswitch_0
        0x48 -> :sswitch_5
        0x4b -> :sswitch_10
        0x4d -> :sswitch_2
        0x53 -> :sswitch_8
        0x57 -> :sswitch_d
        0x5a -> :sswitch_12
        0x61 -> :sswitch_e
        0x64 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6b -> :sswitch_f
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x77 -> :sswitch_c
        0x79 -> :sswitch_1
        0x7a -> :sswitch_11
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .prologue
    const/16 v11, 0x61

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/16 v8, 0x27

    const/4 v6, 0x0

    .line 708
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 710
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    aget v2, p2, v6

    .line 711
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 713
    .local v4, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 714
    .local v1, "c":C
    if-lt v1, v9, :cond_0

    if-le v1, v10, :cond_1

    :cond_0
    if-lt v1, v11, :cond_2

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_2

    .line 717
    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 719
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_8

    .line 720
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 721
    .local v5, "peek":C
    if-ne v5, v1, :cond_8

    .line 722
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 723
    add-int/lit8 v2, v2, 0x1

    .line 727
    goto :goto_0

    .line 730
    .end local v5    # "peek":C
    :cond_2
    invoke-virtual {v0, v8}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 732
    const/4 v3, 0x0

    .line 734
    .local v3, "inLiteral":Z
    :goto_1
    if-ge v2, v4, :cond_8

    .line 735
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 737
    if-ne v1, v8, :cond_5

    .line 738
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_3

    .line 740
    add-int/lit8 v2, v2, 0x1

    .line 741
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 734
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 743
    :cond_3
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    .line 745
    :cond_5
    if-nez v3, :cond_9

    if-lt v1, v9, :cond_6

    if-le v1, v10, :cond_7

    :cond_6
    if-lt v1, v11, :cond_9

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_9

    .line 747
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 755
    .end local v3    # "inLiteral":Z
    :cond_8
    aput v2, p2, v6

    .line 756
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 750
    .restart local v3    # "inLiteral":Z
    :cond_9
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_2
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .prologue
    .line 767
    packed-switch p2, :pswitch_data_0

    .line 773
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;-><init>(II)V

    :goto_0
    return-object v0

    .line 769
    :pswitch_0
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;-><init>(I)V

    goto :goto_0

    .line 771
    :pswitch_1
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;-><init>(I)V

    goto :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
