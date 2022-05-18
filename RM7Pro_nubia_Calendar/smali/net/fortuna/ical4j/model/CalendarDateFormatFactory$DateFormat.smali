.class Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;
.super Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;
.source "CalendarDateFormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateFormat"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x69d5453bd3130fa3L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;-><init>(Ljava/lang/String;)V

    .line 295
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

    .line 298
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 299
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p2, v1, v2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 302
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 303
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, v1, v4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$000(Ljava/lang/StringBuffer;II)V

    .line 305
    return-object p2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v5, 0x0

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "yyyyMMdd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;->isLenient()Z

    move-result v6

    if-nez v6, :cond_0

    .line 311
    const-string v6, "yyyyMMdd"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v0, v5

    .line 324
    :goto_0
    return-object v0

    .line 316
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x4

    :try_start_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 317
    .local v4, "year":I
    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 318
    .local v3, "month":I
    const/4 v6, 0x6

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "day":I
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;->isLenient()Z

    move-result v6

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v6, v7, v4, v3, v1}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->access$200(ZLjava/util/TimeZone;III)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 321
    .local v0, "d":Ljava/util/Date;
    const/16 v6, 0x8

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "day":I
    .end local v3    # "month":I
    .end local v4    # "year":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v5

    .line 324
    goto :goto_0
.end method
