.class public Lnet/fortuna/ical4j/model/DateTime;
.super Lnet/fortuna/ical4j/model/Date;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss"

.field private static final LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final RELAXED_PATTERN:Ljava/lang/String; = "yyyyMMdd"

.field private static final UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field private static final serialVersionUID:J = -0x58eb0ef91a882e03L


# instance fields
.field private time:Lnet/fortuna/ical4j/model/Time;

.field private timezone:Lnet/fortuna/ical4j/model/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "format":Ljava/text/DateFormat;
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 176
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 184
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v0    # "format":Ljava/text/DateFormat;
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 186
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 191
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v0    # "format":Ljava/text/DateFormat;
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 197
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v0    # "format":Ljava/text/DateFormat;
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 199
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(ILjava/util/TimeZone;)V

    .line 210
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 211
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 228
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 330
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    :goto_0
    invoke-direct {p0, v2, v3, v4, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 332
    new-instance v1, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 335
    invoke-static {p2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    .line 336
    .local v0, "format":Ljava/text/DateFormat;
    invoke-direct {p0, p1, v0, p3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 337
    return-void

    .line 331
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "utc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 352
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 354
    invoke-static {p2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    .line 355
    .local v0, "format":Ljava/text/DateFormat;
    if-eqz p3, :cond_0

    .line 356
    sget-object v1, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 357
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 356
    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 361
    :goto_0
    invoke-virtual {p0, p3}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 362
    return-void

    .line 359
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 285
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    invoke-direct {p0, v4, v5, v3, v2}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 287
    new-instance v2, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 290
    :try_start_0
    sget-object v2, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 291
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    return-void

    .line 286
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, "pe":Ljava/text/ParseException;
    if-eqz p2, :cond_1

    .line 295
    :try_start_1
    sget-object v2, Lnet/fortuna/ical4j/model/DateTime;->DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_2
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_1

    .line 301
    :cond_1
    :try_start_2
    sget-object v2, Lnet/fortuna/ical4j/model/DateTime;->LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v2

    .line 302
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 301
    invoke-direct {p0, p1, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 304
    :catch_1
    move-exception v1

    .line 305
    .local v1, "pe2":Ljava/text/ParseException;
    const-string v2, "ical4j.parsing.relaxed"

    .line 306
    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    sget-object v2, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    goto :goto_2

    .line 310
    :cond_2
    throw v1
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 237
    new-instance v1, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 239
    instance-of v1, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 240
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 241
    .local v0, "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 247
    .end local v0    # "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local v0    # "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    :cond_1
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "utc"    # Z

    .prologue
    .line 218
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    .line 219
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 220
    return-void
.end method

.method private resetTimeZone()V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 447
    return-void
.end method

.method private setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/DateFormat;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 376
    if-eqz p3, :cond_0

    .line 377
    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 379
    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 380
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 474
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .end local p1    # "arg0":Ljava/lang/Object;
    iget-object v2, p1, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    .line 478
    :goto_0
    return v0

    .restart local p1    # "arg0":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Time;->isUtc()Z

    move-result v0

    return v0
.end method

.method public final setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Lnet/fortuna/ical4j/model/Date;->setTime(J)V

    .line 390
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0, p1, p2}, Lnet/fortuna/ical4j/model/Time;->setTime(J)V

    .line 393
    :cond_0
    return-void
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 4
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 430
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 431
    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 436
    :goto_0
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 437
    return-void

    .line 434
    :cond_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;->resetTimeZone()V

    goto :goto_0
.end method

.method public final setUtc(Z)V
    .locals 3
    .param p1, "utc"    # Z

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 412
    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 417
    :goto_0
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 418
    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;->resetTimeZone()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lnet/fortuna/ical4j/model/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "b":Ljava/lang/StringBuffer;
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 464
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
