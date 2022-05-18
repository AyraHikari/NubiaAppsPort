.class public abstract Lnet/fortuna/ical4j/model/Iso8601;
.super Ljava/util/Date;
.source "Iso8601.java"


# static fields
.field private static final serialVersionUID:J = -0x3b8bba63506668bbL


# instance fields
.field private format:Ljava/text/DateFormat;

.field private gmtFormat:Ljava/text/DateFormat;

.field private precision:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ILjava/util/TimeZone;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "precision"    # I
    .param p5, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 74
    invoke-static {p1, p2, p4, p5}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 76
    invoke-static {p3}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 77
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    const-string v1, "ical4j.parsing.relaxed"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 83
    iput p4, p0, Lnet/fortuna/ical4j/model/Iso8601;->precision:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "precision"    # I
    .param p3, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 94
    invoke-static {}, Lnet/fortuna/ical4j/util/Dates;->getCurrentTimeRounded()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 7
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "precision"    # I
    .param p4, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected final getFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    return-object v0
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 147
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->precision:I

    iget-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 115
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/TimeZone;

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    .line 118
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    const-string v1, "Etc/GMT"

    invoke-static {v1}, Lnet/fortuna/ical4j/model/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 121
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 124
    invoke-virtual {v4}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 125
    invoke-virtual {v4}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 123
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v4}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
