.class Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;
.super Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;
.source "CalendarDateFormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeFormat"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29b6d54702049e1aL


# instance fields
.field final patternEndsWithZ:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v0, "\'Z\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->patternEndsWithZ:Z

    .line 217
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v4, 0x2

    .line 220
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 221
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p2, v1, v2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 224
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 225
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 226
    const-string v1, "T"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 229
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 230
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 232
    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->patternEndsWithZ:Z

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "Z"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_0
    return-object p2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 11
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v10, 0x0

    .line 241
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->patternEndsWithZ:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    const-string v0, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 273
    :goto_0
    return-object v8

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string v0, "yyyyMMdd\'T\'HHmmss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 248
    goto :goto_0

    .line 252
    :cond_1
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 253
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 254
    goto :goto_0

    .line 256
    :cond_2
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->patternEndsWithZ:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    .line 257
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 258
    goto :goto_0

    .line 261
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, "year":I
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 263
    .local v3, "month":I
    const/4 v0, 0x6

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 264
    .local v4, "day":I
    const/16 v0, 0x9

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 265
    .local v5, "hour":I
    const/16 v0, 0xb

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 266
    .local v6, "minute":I
    const/16 v0, 0xd

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 268
    .local v7, "second":I
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->isLenient()Z

    move-result v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static/range {v0 .. v7}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$100(ZLjava/util/TimeZone;IIIIII)Ljava/util/Calendar;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 270
    .local v8, "d":Ljava/util/Date;
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 272
    .end local v2    # "year":I
    .end local v3    # "month":I
    .end local v4    # "day":I
    .end local v5    # "hour":I
    .end local v6    # "minute":I
    .end local v7    # "second":I
    .end local v8    # "d":Ljava/util/Date;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v8, v10

    .line 273
    goto/16 :goto_0
.end method
