.class Lorg/joda/time/convert/StringConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "StringConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;
.implements Lorg/joda/time/convert/DurationConverter;
.implements Lorg/joda/time/convert/PeriodConverter;
.implements Lorg/joda/time/convert/IntervalConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/StringConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/joda/time/convert/StringConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/StringConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/StringConverter;->INSTANCE:Lorg/joda/time/convert/StringConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public getDurationMillis(Ljava/lang/Object;)J
    .locals 13

    .prologue
    const/16 v10, 0x22

    const/4 v9, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 102
    check-cast p1, Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 105
    const/4 v2, 0x4

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_3

    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x53

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_3

    .line 113
    :cond_2
    const/4 v2, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move v0, v1

    move v2, v1

    move v3, v4

    .line 116
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 117
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_5

    move v2, v5

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    if-eqz v2, :cond_6

    move v6, v5

    :goto_2
    if-le v0, v6, :cond_7

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_7

    if-ne v3, v4, :cond_7

    move v3, v0

    .line 124
    goto :goto_1

    :cond_6
    move v6, v1

    .line 122
    goto :goto_2

    .line 126
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_8
    const-wide/16 v6, 0x0

    .line 130
    if-eqz v2, :cond_a

    .line 131
    :goto_3
    if-lez v3, :cond_b

    .line 132
    invoke-virtual {v8, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 133
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v9, :cond_9

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    move-wide v11, v4

    move-wide v4, v0

    move-wide v0, v11

    .line 143
    :goto_4
    if-eqz v2, :cond_d

    .line 144
    neg-long v0, v0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    neg-long v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 146
    :goto_5
    return-wide v0

    :cond_a
    move v5, v1

    .line 130
    goto :goto_3

    .line 138
    :cond_b
    if-eqz v2, :cond_c

    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v4, v6

    goto :goto_4

    .line 141
    :cond_c
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v4, v6

    goto :goto_4

    .line 146
    :cond_d
    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    goto :goto_5
.end method

.method public getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 2

    .prologue
    .line 63
    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p4}, Lorg/joda/time/format/DateTimeFormatter;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p4}, Lorg/joda/time/format/DateTimeFormatter;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p3

    .line 87
    :cond_0
    invoke-virtual {p4, p3}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 88
    invoke-virtual {p3, p1, v0, v1}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 247
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x70

    const/16 v9, 0x50

    const/4 v8, 0x0

    .line 184
    check-cast p2, Ljava/lang/String;

    .line 186
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 187
    if-gez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format requires a \'/\' separator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p3}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v6

    .line 202
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v7

    .line 203
    const-wide/16 v2, 0x0

    .line 208
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 209
    if-eq v0, v9, :cond_3

    if-ne v0, v10, :cond_5

    .line 210
    :cond_3
    invoke-virtual {p0, v4}, Lorg/joda/time/convert/StringConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 218
    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 219
    if-eq v4, v9, :cond_4

    if-ne v4, v10, :cond_8

    .line 220
    :cond_4
    if-eqz v1, :cond_6

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval composed of two durations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_5
    invoke-virtual {v6, v4}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    .line 214
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_6
    invoke-virtual {p0, v5}, Lorg/joda/time/convert/StringConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v1

    .line 224
    if-eqz p3, :cond_7

    .line 225
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p3, v1, v2, v3, v0}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    .line 236
    :goto_2
    invoke-interface {p1, v2, v3, v0, v1}, Lorg/joda/time/ReadWritableInterval;->setInterval(JJ)V

    .line 237
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritableInterval;->setChronology(Lorg/joda/time/Chronology;)V

    .line 238
    return-void

    :cond_7
    move-object p3, v0

    .line 224
    goto :goto_1

    .line 227
    :cond_8
    invoke-virtual {v6, v5}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v6

    .line 228
    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    .line 229
    if-eqz v0, :cond_9

    .line 230
    :goto_3
    if-eqz p3, :cond_a

    .line 231
    :goto_4
    if-eqz v1, :cond_b

    .line 232
    const/4 v0, -0x1

    invoke-virtual {p3, v1, v4, v5, v0}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v2

    move-wide v0, v4

    goto :goto_2

    .line 229
    :cond_9
    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object p3, v0

    .line 230
    goto :goto_4

    :cond_b
    move-wide v0, v4

    goto :goto_2
.end method

.method public setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 162
    check-cast p2, Ljava/lang/String;

    .line 163
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    .line 164
    invoke-interface {p1}, Lorg/joda/time/ReadWritablePeriod;->clear()V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/format/PeriodFormatter;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;I)I

    move-result v1

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 167
    if-gez v1, :cond_0

    .line 169
    invoke-interface {p1}, Lorg/joda/time/ReadWritablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/PeriodFormatter;->parseMutablePeriod(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    return-void
.end method
