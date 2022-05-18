.class public Lnet/fortuna/ical4j/model/Time;
.super Lnet/fortuna/ical4j/model/Iso8601;
.source "Time.java"


# static fields
.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "HHmmss"

.field private static final UTC_PATTERN:Ljava/lang/String; = "HHmmss\'Z\'"

.field private static final serialVersionUID:J = -0x749662e062a34c1cL


# instance fields
.field private utc:Z


# direct methods
.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 88
    invoke-static {p3}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;Z)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "timezone"    # Ljava/util/TimeZone;
    .param p4, "utc"    # Z

    .prologue
    const/4 v5, 0x0

    .line 97
    if-eqz p4, :cond_0

    const-string v4, "HHmmss\'Z\'"

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 54
    iput-boolean v5, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 98
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Time;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 99
    iput-boolean p4, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 100
    return-void

    .line 97
    :cond_0
    const-string v4, "HHmmss"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p2}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/util/TimeZone;
    .param p3, "utc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1, p2}, Lnet/fortuna/ical4j/model/Time;->parseDate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 107
    invoke-static {p2}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V
    .locals 7
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "timezone"    # Ljava/util/TimeZone;
    .param p3, "utc"    # Z

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    if-eqz p3, :cond_0

    const-string v4, "HHmmss\'Z\'"

    :goto_0
    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 54
    iput-boolean v5, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 117
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Time;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    iput-boolean p3, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 119
    return-void

    .line 116
    :cond_0
    const-string v4, "HHmmss"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 70
    invoke-static {p1}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/TimeZone;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Z)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "utc"    # Z

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p2, :cond_0

    const-string v0, "HHmmss\'Z\'"

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 54
    iput-boolean v1, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 79
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Time;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    iput-boolean p2, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 81
    return-void

    .line 78
    :cond_0
    const-string v0, "HHmmss"

    goto :goto_0
.end method

.method private static parseDate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 144
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/text/ParseException;
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "df":Ljava/text/DateFormat;
    const-string v2, "HHmmss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v0    # "df":Ljava/text/DateFormat;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 150
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final isUtc()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    return v0
.end method
