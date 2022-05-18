.class public final Lorg/joda/time/chrono/LenientChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "LenientChronology.java"


# static fields
.field private static final serialVersionUID:J = -0x2bb0c96357f949f9L


# instance fields
.field private transient iWithUTC:Lorg/joda/time/Chronology;


# direct methods
.method private constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private final convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/joda/time/field/LenientDateTimeField;->getInstance(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/LenientChronology;
    .locals 2

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Lorg/joda/time/chrono/LenientChronology;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/LenientChronology;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 88
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 89
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 90
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 91
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 92
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    .line 93
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    .line 94
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 95
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 96
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 97
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 98
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 100
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 101
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 102
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 103
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 104
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 105
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 106
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 107
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 108
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 109
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 110
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v0}, Lorg/joda/time/chrono/LenientChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 130
    :cond_0
    instance-of v0, p1, Lorg/joda/time/chrono/LenientChronology;

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_1
    check-cast p1, Lorg/joda/time/chrono/LenientChronology;

    .line 134
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 144
    const v0, 0xe1970b6

    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenientChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/joda/time/chrono/LenientChronology;->iWithUTC:Lorg/joda/time/Chronology;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne v0, v1, :cond_1

    .line 65
    iput-object p0, p0, Lorg/joda/time/chrono/LenientChronology;->iWithUTC:Lorg/joda/time/Chronology;

    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/joda/time/chrono/LenientChronology;->iWithUTC:Lorg/joda/time/Chronology;

    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/LenientChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/LenientChronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/chrono/LenientChronology;->iWithUTC:Lorg/joda/time/Chronology;

    goto :goto_0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 77
    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p0

    .line 83
    :cond_1
    :goto_0
    return-object p0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lorg/joda/time/chrono/LenientChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/LenientChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/LenientChronology;

    move-result-object p0

    goto :goto_0
.end method
