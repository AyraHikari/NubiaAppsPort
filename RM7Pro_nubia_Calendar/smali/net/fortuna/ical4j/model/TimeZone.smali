.class public Lnet/fortuna/ical4j/model/TimeZone;
.super Ljava/util/TimeZone;
.source "TimeZone.java"


# static fields
.field private static final serialVersionUID:J = -0x4e01bae8487ef022L


# instance fields
.field private final rawOffset:I

.field private final vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V
    .locals 2
    .param p1, "vTimeZone"    # Lnet/fortuna/ical4j/model/component/VTimeZone;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 66
    iput-object p1, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 67
    const-string v1, "TZID"

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/TzId;

    .line 68
    .local v0, "tzId":Lnet/fortuna/ical4j/model/property/TzId;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/TzId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/TimeZone;->setID(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getRawOffset(Lnet/fortuna/ical4j/model/component/VTimeZone;)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    .line 70
    return-void
.end method

.method private static final getRawOffset(Lnet/fortuna/ical4j/model/component/VTimeZone;)I
    .locals 6
    .param p0, "vt"    # Lnet/fortuna/ical4j/model/component/VTimeZone;

    .prologue
    .line 136
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v3

    const-string v4, "STANDARD"

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    .line 138
    .local v2, "seasonalTimes":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 139
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v3

    const-string v4, "DAYLIGHT"

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 142
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 144
    .local v0, "latestSeasonalTime":Lnet/fortuna/ical4j/model/Component;
    const-string v3, "TZOFFSETTO"

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    .line 145
    .local v1, "offsetTo":Lnet/fortuna/ical4j/model/property/TzOffsetTo;
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->getOffset()Lnet/fortuna/ical4j/model/UtcOffset;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v4

    long-to-int v3, v4

    .line 149
    .end local v0    # "latestSeasonalTime":Lnet/fortuna/ical4j/model/Component;
    .end local v1    # "offsetTo":Lnet/fortuna/ical4j/model/property/TzOffsetTo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getOffset(IIIIII)I
    .locals 7
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 79
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/4 v4, 0x6

    invoke-virtual {v0, v4, p4}, Ljava/util/Calendar;->set(II)V

    .line 83
    const/4 v4, 0x7

    invoke-virtual {v0, v4, p5}, Ljava/util/Calendar;->set(II)V

    .line 84
    const/16 v4, 0xe

    invoke-virtual {v0, v4, p6}, Ljava/util/Calendar;->set(II)V

    .line 85
    iget-object v4, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    new-instance v5, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;

    move-result-object v1

    .line 86
    .local v1, "observance":Lnet/fortuna/ical4j/model/component/Observance;
    if-eqz v1, :cond_0

    .line 87
    const-string v3, "TZOFFSETTO"

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    .line 88
    .local v2, "offset":Lnet/fortuna/ical4j/model/property/TzOffsetTo;
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->getOffset()Lnet/fortuna/ical4j/model/UtcOffset;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v4

    long-to-int v3, v4

    .line 90
    .end local v2    # "offset":Lnet/fortuna/ical4j/model/property/TzOffsetTo;
    :cond_0
    return v3
.end method

.method public final getRawOffset()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    return v0
.end method

.method public final getVTimeZone()Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    return-object v0
.end method

.method public final inDaylightTime(Ljava/util/Date;)Z
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 109
    iget-object v1, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;

    move-result-object v0

    .line 110
    .local v0, "observance":Lnet/fortuna/ical4j/model/component/Observance;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/fortuna/ical4j/model/component/Daylight;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final setRawOffset(I)V
    .locals 2
    .param p1, "offsetMillis"    # I

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Updates to the VTIMEZONE object must be performed directly"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final useDaylightTime()Z
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    const-string v2, "DAYLIGHT"

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    .line 125
    .local v0, "daylights":Lnet/fortuna/ical4j/model/ComponentList;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
