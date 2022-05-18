.class public Lorg/joda/time/tz/ZoneInfoCompiler;
.super Ljava/lang/Object;
.source "ZoneInfoCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/ZoneInfoCompiler$Zone;,
        Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;,
        Lorg/joda/time/tz/ZoneInfoCompiler$Rule;,
        Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;
    }
.end annotation


# static fields
.field static cLenientISO:Lorg/joda/time/Chronology;

.field static cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;


# instance fields
.field private iBackLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iGoodLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iRuleSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private iZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/joda/time/tz/ZoneInfoCompiler$Zone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iGoodLinks:Ljava/util/List;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iBackLinks:Ljava/util/List;

    .line 350
    return-void
.end method

.method static getLenientISOChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cLenientISO:Lorg/joda/time/Chronology;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/LenientChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/LenientChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cLenientISO:Lorg/joda/time/Chronology;

    .line 145
    :cond_0
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cLenientISO:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method static getStartOfYear()Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-direct {v0}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;-><init>()V

    sput-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    .line 138
    :cond_0
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 81
    array-length v0, p0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V

    .line 124
    :goto_0
    return-void

    :cond_0
    move v0, v4

    move v1, v4

    move-object v3, v2

    .line 91
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 93
    :try_start_0
    const-string v5, "-src"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    new-instance v3, Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, p0, v0

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    const-string v5, "-dst"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    new-instance v2, Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, p0, v0

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    const-string v5, "-verbose"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    const/4 v1, 0x1

    goto :goto_2

    .line 99
    :cond_3
    const-string v5, "-?"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :cond_4
    array-length v5, p0

    if-lt v0, v5, :cond_5

    .line 112
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V

    goto :goto_0

    .line 116
    :cond_5
    array-length v5, p0

    sub-int/2addr v5, v0

    new-array v6, v5, [Ljava/io/File;

    .line 117
    :goto_3
    array-length v5, p0

    if-ge v0, v5, :cond_7

    .line 118
    if-nez v3, :cond_6

    new-instance v5, Ljava/io/File;

    aget-object v7, p0, v0

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    aput-object v5, v6, v4

    .line 117
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 118
    :cond_6
    new-instance v5, Ljava/io/File;

    aget-object v7, p0, v0

    invoke-direct {v5, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    .line 121
    :cond_7
    invoke-static {v1}, Lorg/joda/time/tz/ZoneInfoLogger;->set(Z)V

    .line 122
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler;

    invoke-direct {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;-><init>()V

    .line 123
    invoke-virtual {v0, v2, v6}, Lorg/joda/time/tz/ZoneInfoCompiler;->compile(Ljava/io/File;[Ljava/io/File;)Ljava/util/Map;

    goto/16 :goto_0
.end method

.method static parseDayOfWeek(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 213
    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3, p0, v1}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method static parseMonth(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 208
    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3, p0, v1}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method static parseOptional(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static parseTime(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 221
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    .line 222
    new-instance v3, Lorg/joda/time/MutableDateTime;

    const-wide/16 v4, 0x0

    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->getLenientISOChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 223
    const/4 v0, 0x0

    .line 224
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 227
    :cond_0
    invoke-virtual {v2, v3, p0, v0}, Lorg/joda/time/format/DateTimeFormatter;->parseInto(Lorg/joda/time/ReadWritableInstant;Ljava/lang/String;I)I

    move-result v2

    .line 228
    xor-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    invoke-virtual {v3}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    long-to-int v2, v2

    .line 232
    if-ne v0, v1, :cond_2

    .line 233
    neg-int v0, v2

    .line 235
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static parseYear(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 195
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v1, "minimum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    :cond_0
    const/high16 p1, -0x80000000

    .line 203
    :cond_1
    :goto_0
    return p1

    .line 198
    :cond_2
    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    :cond_3
    const p1, 0x7fffffff

    goto :goto_0

    .line 200
    :cond_4
    const-string v1, "only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method static parseZoneChar(C)C
    .locals 1

    .prologue
    .line 239
    sparse-switch p0, :sswitch_data_0

    .line 248
    const/16 v0, 0x77

    :goto_0
    return v0

    .line 242
    :sswitch_0
    const/16 v0, 0x73

    goto :goto_0

    .line 245
    :sswitch_1
    const/16 v0, 0x75

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_1
        0x53 -> :sswitch_0
        0x55 -> :sswitch_1
        0x5a -> :sswitch_1
        0x67 -> :sswitch_1
        0x73 -> :sswitch_0
        0x75 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: java org.joda.time.tz.ZoneInfoCompiler <options> <source files>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "where possible options include:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -src <directory>    Specify where to read source files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -dst <directory>    Specify where to write generated files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -verbose            Output verbosely (default false)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method static test(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Z
    .locals 12

    .prologue
    .line 256
    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x73a

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 263
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/16 v1, 0x802

    invoke-virtual {v0, v4, v5, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v8

    .line 265
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v1

    .line 266
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v10

    .line 267
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-wide v4, v2

    move v2, v1

    .line 272
    :goto_1
    invoke-virtual {p1, v4, v5}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v6

    .line 273
    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    .line 306
    :cond_1
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x802

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 307
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/16 v1, 0x73a

    invoke-virtual {v0, v4, v5, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v6

    .line 309
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    .line 310
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v4

    .line 311
    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 330
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p1, v6, v7}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    .line 280
    invoke-virtual {p1, v6, v7}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v4

    .line 281
    invoke-virtual {p1, v6, v7}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v1

    .line 283
    if-ne v2, v3, :cond_4

    if-ne v10, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*d* Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v2, v6, v7, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 290
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    const-string v0, "??"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 291
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*s* Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v4

    invoke-direct {v3, v6, v7, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nameKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 298
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move v2, v3

    move-wide v4, v6

    .line 302
    goto/16 :goto_1

    .line 317
    :cond_7
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 319
    const-wide/16 v8, 0x1

    sub-long v8, v2, v8

    cmp-long v0, v8, v4

    if-eqz v0, :cond_8

    .line 320
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*r* Error in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v7

    invoke-direct {v6, v4, v5, v7}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " != "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Lorg/joda/time/DateTime;

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    move-wide v2, v4

    .line 328
    goto/16 :goto_2
.end method

.method private writeZone(Ljava/io/File;Lorg/joda/time/tz/DateTimeZoneBuilder;Lorg/joda/time/DateTimeZone;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoLogger;->verbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 475
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 477
    :try_start_0
    invoke-virtual {p3}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 483
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 484
    invoke-virtual {p3}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 485
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 487
    invoke-virtual {p3, v0}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*e* Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Didn\'t read properly from file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    :cond_2
    return-void

    .line 479
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method static writeZoneInfoMap(Ljava/io/DataOutputStream;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 154
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .line 161
    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v4, v6, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v1, v2, 0x1

    int-to-short v2, v1

    if-nez v2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Too many time zone ids"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 170
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v0, v2, 0x1

    int-to-short v0, v0

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Too many time zone ids"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    :cond_2
    move v2, v0

    .line 176
    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 186
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .line 192
    :cond_5
    return-void
.end method


# virtual methods
.method public compile(Ljava/io/File;[Ljava/io/File;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 359
    if-eqz p2, :cond_2

    move v0, v3

    .line 360
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 361
    const/4 v2, 0x0

    .line 363
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    aget-object v5, p2, v0

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :try_start_1
    const-string v2, "backward"

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseDataFile(Ljava/io/BufferedReader;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 366
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v0

    .line 373
    :cond_2
    if-eqz p1, :cond_4

    .line 374
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 375
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory doesn\'t exist and cannot be created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 378
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination is not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_4
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 383
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Writing zoneinfo files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v3

    .line 387
    :goto_2
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 388
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    .line 389
    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder;

    invoke-direct {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder;-><init>()V

    .line 390
    iget-object v4, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    invoke-virtual {v0, v2, v4}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->addToBuilder(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V

    .line 391
    iget-object v4, v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-virtual {v2, v4, v9}, Lorg/joda/time/tz/DateTimeZoneBuilder;->toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;

    move-result-object v4

    .line 392
    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/joda/time/tz/ZoneInfoCompiler;->test(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 393
    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    if-eqz p1, :cond_5

    .line 396
    invoke-direct {p0, p1, v2, v4}, Lorg/joda/time/tz/ZoneInfoCompiler;->writeZone(Ljava/io/File;Lorg/joda/time/tz/DateTimeZoneBuilder;Lorg/joda/time/DateTimeZone;)V

    .line 387
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    move v4, v3

    .line 402
    :goto_3
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iGoodLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 403
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iGoodLinks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iGoodLinks:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    .line 406
    if-nez v2, :cond_8

    .line 407
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find source zone \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\' to link alias \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    :cond_7
    :goto_4
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_3

    .line 409
    :cond_8
    new-instance v7, Lorg/joda/time/tz/DateTimeZoneBuilder;

    invoke-direct {v7}, Lorg/joda/time/tz/DateTimeZoneBuilder;-><init>()V

    .line 410
    iget-object v8, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    invoke-virtual {v2, v7, v8}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->addToBuilder(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V

    .line 411
    invoke-virtual {v7, v1, v9}, Lorg/joda/time/tz/DateTimeZoneBuilder;->toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lorg/joda/time/tz/ZoneInfoCompiler;->test(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 413
    invoke-virtual {v2}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    if-eqz p1, :cond_9

    .line 415
    invoke-direct {p0, p1, v7, v2}, Lorg/joda/time/tz/ZoneInfoCompiler;->writeZone(Ljava/io/File;Lorg/joda/time/tz/DateTimeZoneBuilder;Lorg/joda/time/DateTimeZone;)V

    .line 418
    :cond_9
    invoke-virtual {v2}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoLogger;->verbose()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 420
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Good link: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " -> "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " revived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move v5, v3

    .line 426
    :goto_5
    const/4 v0, 0x2

    if-ge v5, v0, :cond_e

    move v4, v3

    .line 427
    :goto_6
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iBackLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 428
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iBackLinks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iBackLinks:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/DateTimeZone;

    .line 431
    if-nez v2, :cond_c

    .line 432
    if-lez v5, :cond_b

    .line 433
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find time zone \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\' to link alias \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    :cond_b
    :goto_7
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_6

    .line 436
    :cond_c
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoLogger;->verbose()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 438
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Back link: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " -> "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 426
    :cond_d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_5

    .line 445
    :cond_e
    if-eqz p1, :cond_10

    .line 446
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Writing ZoneInfoMap"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/io/File;

    const-string v1, "ZoneInfoMap"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 452
    :cond_f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 453
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 456
    :try_start_2
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 457
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 458
    invoke-static {v2, v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->writeZoneInfoMap(Ljava/io/DataOutputStream;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 464
    :cond_10
    return-object v6

    .line 460
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v0

    .line 366
    :catchall_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public parseDataFile(Ljava/io/BufferedReader;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x23

    const/4 v5, 0x0

    .line 494
    move-object v0, v1

    .line 496
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 497
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_0

    .line 502
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 503
    if-ltz v3, :cond_1

    .line 504
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 509
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, v3}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->chain(Ljava/util/StringTokenizer;)V

    goto :goto_0

    .line 518
    :cond_2
    if-eqz v0, :cond_3

    .line 519
    iget-object v4, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 525
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 526
    const-string v4, "Rule"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 527
    new-instance v2, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;

    invoke-direct {v2, v3}, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;-><init>(Ljava/util/StringTokenizer;)V

    .line 528
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    iget-object v3, v2, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;

    .line 529
    if-nez v0, :cond_4

    .line 530
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;

    invoke-direct {v0, v2}, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;-><init>(Lorg/joda/time/tz/ZoneInfoCompiler$Rule;)V

    .line 531
    iget-object v3, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    iget-object v2, v2, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iName:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v0, v1

    .line 535
    goto :goto_0

    .line 533
    :cond_4
    invoke-virtual {v0, v2}, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;->addRule(Lorg/joda/time/tz/ZoneInfoCompiler$Rule;)V

    goto :goto_1

    .line 535
    :cond_5
    const-string v4, "Zone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 536
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_6

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to create a Zone from an incomplete tokenizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_6
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    invoke-direct {v0, v3}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;-><init>(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    .line 540
    :cond_7
    const-string v4, "Link"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 541
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 546
    if-nez p2, :cond_8

    const-string v3, "US/Pacific-New"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "Etc/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 547
    :cond_8
    iget-object v3, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iBackLinks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iBackLinks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v0, v1

    .line 553
    goto/16 :goto_0

    .line 550
    :cond_9
    iget-object v3, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iGoodLinks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iGoodLinks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 554
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    .line 559
    :cond_c
    if-eqz v0, :cond_d

    .line 560
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_d
    return-void
.end method
