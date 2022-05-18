.class public final Lorg/joda/time/chrono/LimitChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "LimitChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;,
        Lorg/joda/time/chrono/LimitChronology$LimitDurationField;,
        Lorg/joda/time/chrono/LimitChronology$LimitException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a7464792af0f66aL


# instance fields
.field final iLowerLimit:Lorg/joda/time/DateTime;

.field final iUpperLimit:Lorg/joda/time/DateTime;

.field private transient iWithUTC:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method private constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 99
    iput-object p2, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    .line 100
    iput-object p3, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    .line 101
    return-void
.end method

.method private convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/DateTimeField;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/joda/time/DateTimeField;"
        }
    .end annotation

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 278
    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeField;

    goto :goto_0

    .line 272
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v3

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getLeapDurationField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;-><init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 277
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/DurationField;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/joda/time/DurationField;"
        }
    .end annotation

    .prologue
    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DurationField;

    goto :goto_0

    .line 260
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;-><init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DurationField;)V

    .line 261
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    .line 72
    :goto_0
    if-nez p2, :cond_2

    .line 74
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Lorg/joda/time/ReadableDateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lower limit must be come before than the upper limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p2}, Lorg/joda/time/ReadableDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_1

    .line 79
    :cond_3
    new-instance v2, Lorg/joda/time/chrono/LimitChronology;

    check-cast v0, Lorg/joda/time/DateTime;

    check-cast v1, Lorg/joda/time/DateTime;

    invoke-direct {v2, p0, v0, v1}, Lorg/joda/time/chrono/LimitChronology;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V

    return-object v2
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->eras:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->eras:Lorg/joda/time/DurationField;

    .line 212
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    .line 213
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    .line 214
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 215
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    .line 216
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    .line 217
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    .line 219
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdays:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdays:Lorg/joda/time/DurationField;

    .line 220
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hours:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hours:Lorg/joda/time/DurationField;

    .line 221
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minutes:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minutes:Lorg/joda/time/DurationField;

    .line 222
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->seconds:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->seconds:Lorg/joda/time/DurationField;

    .line 223
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millis:Lorg/joda/time/DurationField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DurationField;Ljava/util/HashMap;)Lorg/joda/time/DurationField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millis:Lorg/joda/time/DurationField;

    .line 227
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 228
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 229
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 230
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 231
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 232
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    .line 233
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    .line 234
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 235
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 236
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 237
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 238
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 240
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 241
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 242
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 243
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 244
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 245
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 246
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 247
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 248
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 249
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 250
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/DateTimeField;Ljava/util/HashMap;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    .line 251
    return-void
.end method

.method checkLimits(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 284
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$LimitException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1}, Lorg/joda/time/chrono/LimitChronology$LimitException;-><init>(Lorg/joda/time/chrono/LimitChronology;Ljava/lang/String;Z)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 287
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$LimitException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lorg/joda/time/chrono/LimitChronology$LimitException;-><init>(Lorg/joda/time/chrono/LimitChronology;Ljava/lang/String;Z)V

    throw v0

    .line 289
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    if-ne p0, p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    instance-of v2, p1, Lorg/joda/time/chrono/LimitChronology;

    if-nez v2, :cond_2

    move v0, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    check-cast p1, Lorg/joda/time/chrono/LimitChronology;

    .line 308
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 176
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 177
    return-wide v0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 188
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 189
    return-wide v0
.end method

.method public getDateTimeMillis(JIIII)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(JIIII)J

    move-result-wide v0

    .line 200
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 201
    return-wide v0
.end method

.method public getLowerLimit()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getUpperLimit()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 321
    const v2, 0x12ea67c5

    .line 322
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 323
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 324
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 325
    return v0

    :cond_1
    move v0, v1

    .line 322
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LimitChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NoLimit"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NoLimit"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/LimitChronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 3

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 168
    :goto_0
    return-object p0

    .line 143
    :cond_1
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iWithUTC:Lorg/joda/time/chrono/LimitChronology;

    if-eqz v0, :cond_2

    .line 144
    iget-object p0, p0, Lorg/joda/time/chrono/LimitChronology;->iWithUTC:Lorg/joda/time/chrono/LimitChronology;

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    .line 148
    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toMutableDateTime()Lorg/joda/time/MutableDateTime;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lorg/joda/time/MutableDateTime;->setZoneRetainFields(Lorg/joda/time/DateTimeZone;)V

    .line 151
    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    .line 154
    :cond_3
    iget-object v1, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    .line 155
    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toMutableDateTime()Lorg/joda/time/MutableDateTime;

    move-result-object v1

    .line 157
    invoke-virtual {v1, p1}, Lorg/joda/time/MutableDateTime;->setZoneRetainFields(Lorg/joda/time/DateTimeZone;)V

    .line 158
    invoke-virtual {v1}, Lorg/joda/time/MutableDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v1

    .line 161
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v0

    .line 164
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v1, :cond_5

    .line 165
    iput-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iWithUTC:Lorg/joda/time/chrono/LimitChronology;

    :cond_5
    move-object p0, v0

    .line 168
    goto :goto_0
.end method
