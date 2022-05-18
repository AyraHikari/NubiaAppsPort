.class public abstract Lorg/joda/time/base/BaseInterval;
.super Lorg/joda/time/base/AbstractInterval;
.source "BaseInterval.java"

# interfaces
.implements Lorg/joda/time/ReadableInterval;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x80072c1bd3fbddeL


# instance fields
.field private volatile iChronology:Lorg/joda/time/Chronology;

.field private volatile iEndMillis:J

.field private volatile iStartMillis:J


# direct methods
.method protected constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 72
    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 74
    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 75
    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 76
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 4

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 190
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getIntervalConverter(Ljava/lang/Object;)Lorg/joda/time/convert/IntervalConverter;

    move-result-object v1

    .line 191
    invoke-interface {v1, p1, p2}, Lorg/joda/time/convert/IntervalConverter;->isReadableInterval(Ljava/lang/Object;Lorg/joda/time/Chronology;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    check-cast p1, Lorg/joda/time/ReadableInterval;

    .line 193
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 194
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 195
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 205
    :goto_1
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 206
    return-void

    .line 193
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p2

    goto :goto_0

    .line 196
    :cond_1
    instance-of v0, p0, Lorg/joda/time/ReadWritableInterval;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 197
    check-cast v0, Lorg/joda/time/ReadWritableInterval;

    invoke-interface {v1, v0, p1, p2}, Lorg/joda/time/convert/IntervalConverter;->setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    goto :goto_1

    .line 199
    :cond_2
    new-instance v0, Lorg/joda/time/MutableInterval;

    invoke-direct {v0}, Lorg/joda/time/MutableInterval;-><init>()V

    .line 200
    invoke-interface {v1, v0, p1, p2}, Lorg/joda/time/convert/IntervalConverter;->setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 201
    invoke-virtual {v0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 202
    invoke-virtual {v0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 203
    invoke-virtual {v0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    goto :goto_1
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 4

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 125
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 126
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 127
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 129
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 108
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 109
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 110
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 112
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 87
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 88
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 89
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 92
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 93
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 94
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .locals 4

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 145
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 146
    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 147
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 153
    :goto_0
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 154
    return-void

    .line 151
    :cond_0
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v3, v1}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 169
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 170
    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 171
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 177
    :goto_0
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 178
    return-void

    .line 175
    :cond_0
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    goto :goto_0
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    return-wide v0
.end method

.method protected setInterval(JJLorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 249
    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 250
    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 251
    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    .line 252
    return-void
.end method
