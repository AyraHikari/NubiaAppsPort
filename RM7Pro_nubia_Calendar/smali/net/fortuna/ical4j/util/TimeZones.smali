.class public final Lnet/fortuna/ical4j/util/TimeZones;
.super Ljava/lang/Object;
.source "TimeZones.java"


# static fields
.field public static final GMT_ID:Ljava/lang/String; = "Etc/GMT"

.field public static final IBM_UTC_ID:Ljava/lang/String; = "GMT"

.field public static final UTC_ID:Ljava/lang/String; = "Etc/UTC"

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "Etc/UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/TimeZones;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getDateTimeZone()Ljava/util/TimeZone;
    .locals 2

    .prologue
    .line 97
    const-string v0, "true"

    const-string v1, "net.fortuna.ical4j.timezone.date.floating"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUtcTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lnet/fortuna/ical4j/util/TimeZones;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static isUtc(Ljava/util/TimeZone;)Z
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 80
    const-string v0, "Etc/UTC"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GMT"

    .line 81
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
