.class public abstract Lorg/joda/time/base/BasePartial;
.super Lorg/joda/time/base/AbstractPartial;
.source "BasePartial.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x85ca882d5755cL


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private final iValues:[I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    .line 94
    return-void
.end method

.method protected constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 109
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    .line 111
    invoke-virtual {v0, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    .line 112
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 132
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    .line 136
    invoke-interface {v0, p0, p1, v1}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    .line 137
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 159
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    .line 163
    invoke-interface {v0, p0, p1, v1, p3}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    .line 164
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    .line 80
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 212
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    .line 213
    iget-object v0, p1, Lorg/joda/time/base/BasePartial;->iValues:[I

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    .line 214
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/base/BasePartial;[I)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 197
    iget-object v0, p1, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    .line 198
    iput-object p2, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    .line 199
    return-void
.end method

.method protected constructor <init>([ILorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 181
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    .line 183
    invoke-virtual {v0, p0, p1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    .line 184
    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    .line 185
    return-void
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getValue(I)I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method protected setValue(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    invoke-virtual {v0, p0, p1, v1, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 267
    iget-object v1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    iget-object v2, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    return-void
.end method

.method protected setValues([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Lorg/joda/time/base/BasePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    .line 281
    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    iget-object v1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
