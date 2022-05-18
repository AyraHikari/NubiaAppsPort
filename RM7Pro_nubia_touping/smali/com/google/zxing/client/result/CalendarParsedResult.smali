.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "CalendarParsedResult.java"


# static fields
.field private static final DATE_TIME:Ljava/util/regex/Pattern;

.field private static final RFC2445_DURATION:Ljava/util/regex/Pattern;

.field private static final RFC2445_DURATION_FIELD_UNITS:[J


# instance fields
.field private final attendees:[Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final end:J

.field private final endAllDay:Z

.field private final latitude:D

.field private final location:Ljava/lang/String;

.field private final longitude:D

.field private final organizer:Ljava/lang/String;

.field private final start:J

.field private final startAllDay:Z

.field private final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    .line 48
    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    return-void

    .line 40
    nop

    :array_0
    .array-data 8
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 9
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "startString"    # Ljava/lang/String;
    .param p3, "endString"    # Ljava/lang/String;
    .param p4, "durationString"    # Ljava/lang/String;
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "organizer"    # Ljava/lang/String;
    .param p7, "attendees"    # [Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "latitude"    # D
    .param p11, "longitude"    # D

    .prologue
    .line 72
    sget-object v5, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v5}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 73
    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-static {p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    if-nez p3, :cond_1

    .line 82
    invoke-static {p4}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDurationMS(Ljava/lang/CharSequence;)J

    move-result-wide v2

    .line 83
    .local v2, "durationMS":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    const-wide/16 v6, -0x1

    :goto_0
    iput-wide v6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    .line 92
    .end local v2    # "durationMS":J
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    .line 93
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    .line 95
    iput-object p5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 96
    iput-object p6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    .line 98
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 99
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    .line 100
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    .line 101
    return-void

    .line 77
    :catch_0
    move-exception v4

    .line 78
    .local v4, "pe":Ljava/text/ParseException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    .end local v4    # "pe":Ljava/text/ParseException;
    .restart local v2    # "durationMS":J
    :cond_0
    iget-wide v6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    add-long/2addr v6, v2

    goto :goto_0

    .line 86
    .end local v2    # "durationMS":J
    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 87
    :catch_1
    move-exception v4

    .line 88
    .restart local v4    # "pe":Ljava/text/ParseException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    .end local v4    # "pe":Ljava/text/ParseException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 93
    :cond_3
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static format(ZJ)Ljava/lang/String;
    .locals 3
    .param p0, "allDay"    # Z
    .param p1, "date"    # J

    .prologue
    const/4 v2, 0x2

    .line 227
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    .line 230
    :cond_0
    if-eqz p0, :cond_1

    .line 231
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 233
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_1
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 9
    .param p0, "when"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    const/16 v6, 0xf

    .line 200
    sget-object v4, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    new-instance v4, Ljava/text/ParseException;

    invoke-direct {v4, p0, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 203
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 205
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 209
    .local v1, "format":Ljava/text/DateFormat;
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 210
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 223
    .end local v1    # "format":Ljava/text/DateFormat;
    :goto_0
    return-wide v4

    .line 213
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_2

    .line 214
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDateTimeString(Ljava/lang/String;)J

    move-result-wide v2

    .line 215
    .local v2, "milliseconds":J
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 217
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 220
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    goto :goto_0

    .line 223
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "milliseconds":J
    :cond_2
    invoke-static {p0}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDateTimeString(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0
.end method

.method private static parseDateTimeString(Ljava/lang/String;)J
    .locals 3
    .param p0, "dateTimeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseDurationMS(Ljava/lang/CharSequence;)J
    .locals 10
    .param p0, "durationString"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v0, -0x1

    .line 237
    if-nez p0, :cond_1

    .line 251
    :cond_0
    return-wide v0

    .line 240
    :cond_1
    sget-object v5, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 241
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    const-wide/16 v0, 0x0

    .line 245
    .local v0, "durationMS":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v5, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 246
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "fieldValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 248
    sget-object v5, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    aget-wide v6, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 245
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAttendees()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 183
    iget-boolean v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    iget-wide v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 184
    iget-boolean v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    iget-wide v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 185
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 186
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 187
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 188
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEnd()Ljava/util/Date;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getEndTimestamp()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-wide v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public isEndAllDay()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    return v0
.end method

.method public isStartAllDay()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    return v0
.end method
