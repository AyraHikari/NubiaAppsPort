.class public Lnet/fortuna/ical4j/model/Date;
.super Lnet/fortuna/ical4j/model/Iso8601;
.source "Date.java"


# static fields
.field private static final PATTERN:Ljava/lang/String; = "yyyyMMdd"

.field private static final serialVersionUID:J = 0x63086c017885f5c5L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 96
    const-string v0, "yyyyMMdd"

    const/4 v1, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 97
    return-void
.end method

.method protected constructor <init>(ILjava/util/TimeZone;)V
    .locals 1
    .param p1, "precision"    # I
    .param p2, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 108
    const-string v0, "yyyyMMdd"

    invoke-direct {p0, v0, p1, p2}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 109
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 115
    const-string v4, "yyyyMMdd"

    const/4 v5, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 116
    return-void
.end method

.method protected constructor <init>(JILjava/util/TimeZone;)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "precision"    # I
    .param p4, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 128
    const-string v4, "yyyyMMdd"

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Date;-><init>()V

    .line 146
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Date;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/Date;->setTime(J)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 156
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Date;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/Date;->setTime(J)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 138
    return-void
.end method
