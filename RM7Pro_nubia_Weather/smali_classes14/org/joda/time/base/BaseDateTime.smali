.class public abstract Lorg/joda/time/base/BaseDateTime;
.super Lorg/joda/time/base/AbstractDateTime;
.source "BaseDateTime.java"

# interfaces
.implements Lorg/joda/time/ReadableDateTime;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x61eb0a2d15dL


# instance fields
.field private volatile iChronology:Lorg/joda/time/Chronology;

.field private volatile iMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 62
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    .prologue
    .line 198
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 200
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/Chronology;)V
    .locals 10

    .prologue
    .line 255
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDateTime;-><init>()V

    .line 256
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 257
    iget-object v2, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v2

    .line 259
    iget-object v4, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p0, v2, v3, v4}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 260
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;->adjustForMinMax()V

    .line 261
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    .line 226
    invoke-static/range {p8 .. p8}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 228
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 98
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDateTime;-><init>()V

    .line 125
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 126
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 127
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;->adjustForMinMax()V

    .line 128
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDateTime;-><init>()V

    .line 171
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v0

    .line 172
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 173
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 174
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;->adjustForMinMax()V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDateTime;-><init>()V

    .line 148
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v0

    .line 149
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 150
    iput-object v1, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 151
    invoke-interface {v0, p1, v1}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 152
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;->adjustForMinMax()V

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 74
    return-void
.end method

.method private adjustForMinMax()V
    .locals 4

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 280
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method protected checkInstant(JLorg/joda/time/Chronology;)J
    .locals 1

    .prologue
    .line 294
    return-wide p1
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    return-wide v0
.end method

.method protected setChronology(Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 340
    return-void
.end method

.method protected setMillis(J)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 328
    return-void
.end method
