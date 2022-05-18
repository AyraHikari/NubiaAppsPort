.class public final Lorg/joda/time/YearMonthDay;
.super Lorg/joda/time/base/BasePartial;
.source "YearMonthDay.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/YearMonthDay$Property;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DAY_OF_MONTH:I = 0x2

.field private static final FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

.field public static final MONTH_OF_YEAR:I = 0x1

.field public static final YEAR:I = 0x0

.field private static final serialVersionUID:J = 0x2d55cdd7a1c33L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    const/4 v1, 0x0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/joda/time/YearMonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/joda/time/base/BasePartial;-><init>()V

    .line 154
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/YearMonthDay;-><init>(IIILorg/joda/time/Chronology;)V

    .line 273
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-direct {p0, v0, p4}, Lorg/joda/time/base/BasePartial;-><init>([ILorg/joda/time/Chronology;)V

    .line 289
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(J)V

    .line 197
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 256
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    .line 169
    return-void
.end method

.method constructor <init>(Lorg/joda/time/YearMonthDay;Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V

    .line 309
    return-void
.end method

.method constructor <init>(Lorg/joda/time/YearMonthDay;[I)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;[I)V

    .line 299
    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/YearMonthDay;
    .locals 4

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The calendar must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    new-instance v0, Lorg/joda/time/YearMonthDay;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/YearMonthDay;-><init>(III)V

    return-object v0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/YearMonthDay;
    .locals 4

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/YearMonthDay;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public dayOfMonth()Lorg/joda/time/YearMonthDay$Property;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Lorg/joda/time/YearMonthDay$Property;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay$Property;-><init>(Lorg/joda/time/YearMonthDay;I)V

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 3

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_0
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 335
    :pswitch_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_0

    .line 337
    :pswitch_2
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lorg/joda/time/YearMonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lorg/joda/time/YearMonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/YearMonthDay;
    .locals 1

    .prologue
    .line 574
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/YearMonthDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/YearMonthDay;
    .locals 2

    .prologue
    .line 635
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/YearMonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(I)Lorg/joda/time/YearMonthDay;
    .locals 2

    .prologue
    .line 615
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/YearMonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public minusYears(I)Lorg/joda/time/YearMonthDay;
    .locals 2

    .prologue
    .line 595
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/YearMonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/YearMonthDay$Property;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Lorg/joda/time/YearMonthDay$Property;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay$Property;-><init>(Lorg/joda/time/YearMonthDay;I)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/YearMonthDay;
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/YearMonthDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/YearMonthDay;
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(I)Lorg/joda/time/YearMonthDay;
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(I)Lorg/joda/time/YearMonthDay;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;

    move-result-object v0

    return-object v0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/YearMonthDay$Property;
    .locals 2

    .prologue
    .line 648
    new-instance v0, Lorg/joda/time/YearMonthDay$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonthDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay$Property;-><init>(Lorg/joda/time/YearMonthDay;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x3

    return v0
.end method

.method public toDateMidnight()Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 5

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 736
    new-instance v1, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getMonthOfYear()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getDayOfMonth()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/joda/time/DateMidnight;-><init>(IIILorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toDateTime(Lorg/joda/time/TimeOfDay;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/YearMonthDay;->toDateTime(Lorg/joda/time/TimeOfDay;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/TimeOfDay;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 771
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 772
    invoke-virtual {v2, p0, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 773
    if-eqz p1, :cond_0

    .line 774
    invoke-virtual {v2, p1, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 776
    :cond_0
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3, v0, v1, v2}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v3
.end method

.method public toDateTimeAtCurrentTime()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->toDateTimeAtCurrentTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtCurrentTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 712
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 713
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v2

    .line 714
    invoke-virtual {v0, p0, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v2

    .line 715
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toDateTimeAtMidnight()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->toDateTimeAtMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 684
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v8

    .line 685
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getDayOfMonth()I

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;
    .locals 1

    .prologue
    .line 797
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 798
    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->toInterval()Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .locals 5

    .prologue
    .line 659
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/LocalDate;-><init>(IIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withChronologyRetainFields(Lorg/joda/time/Chronology;)Lorg/joda/time/YearMonthDay;
    .locals 3

    .prologue
    .line 381
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 383
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 388
    :goto_0
    return-object p0

    .line 386
    :cond_0
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;Lorg/joda/time/Chronology;)V

    .line 387
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    move-object p0, v0

    .line 388
    goto :goto_0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/YearMonthDay;
    .locals 3

    .prologue
    .line 879
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v0

    .line 880
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 881
    new-instance v1, Lorg/joda/time/YearMonthDay;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;[I)V

    return-object v1
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/YearMonthDay;
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonthDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 412
    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->getValue(I)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 417
    :goto_0
    return-object p0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v1

    .line 416
    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 417
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;[I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonthDay;
    .locals 3

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonthDay;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 440
    if-nez p2, :cond_0

    .line 445
    :goto_0
    return-object p0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v1

    .line 444
    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 445
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;[I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/YearMonthDay;
    .locals 3

    .prologue
    .line 861
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v0

    .line 862
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 863
    new-instance v1, Lorg/joda/time/YearMonthDay;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;[I)V

    return-object v1
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/YearMonthDay;
    .locals 5

    .prologue
    .line 465
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-object p0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v1

    .line 469
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 470
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 471
    invoke-virtual {p0, v2}, Lorg/joda/time/YearMonthDay;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    .line 472
    if-ltz v2, :cond_2

    .line 473
    invoke-virtual {p0, v2}, Lorg/joda/time/YearMonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    invoke-virtual {v3, p0, v2, v1, v4}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 469
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    :cond_3
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;[I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withYear(I)Lorg/joda/time/YearMonthDay;
    .locals 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getValues()[I

    move-result-object v0

    .line 844
    invoke-virtual {p0}, Lorg/joda/time/YearMonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 845
    new-instance v1, Lorg/joda/time/YearMonthDay;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/YearMonthDay;-><init>(Lorg/joda/time/YearMonthDay;[I)V

    return-object v1
.end method

.method public year()Lorg/joda/time/YearMonthDay$Property;
    .locals 2

    .prologue
    .line 891
    new-instance v0, Lorg/joda/time/YearMonthDay$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonthDay$Property;-><init>(Lorg/joda/time/YearMonthDay;I)V

    return-object v0
.end method
