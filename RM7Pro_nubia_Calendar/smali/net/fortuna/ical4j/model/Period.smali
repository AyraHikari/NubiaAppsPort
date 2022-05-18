.class public Lnet/fortuna/ical4j/model/Period;
.super Lnet/fortuna/ical4j/model/DateRange;
.source "Period.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x6599bcf36a2a304aL


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/Dur;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Period;->parseStartDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lnet/fortuna/ical4j/model/Period;->parseEndDate(Ljava/lang/String;Z)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 70
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lnet/fortuna/ical4j/model/Period;->parseEndDate(Ljava/lang/String;Z)Lnet/fortuna/ical4j/model/DateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Period;->normalise()V

    .line 77
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "pe":Ljava/text/ParseException;
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Period;->parseDuration(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Dur;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    goto :goto_0
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 0
    .param p1, "start"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p2, "end"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 89
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Period;->normalise()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p2, "duration"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    .line 101
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/Dur;->getTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 102
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 103
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Period;->normalise()V

    .line 104
    return-void
.end method

.method private normalise()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method private static parseDuration(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Dur;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseEndDate(Ljava/lang/String;Z)Lnet/fortuna/ical4j/model/DateTime;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "end":Lnet/fortuna/ical4j/model/DateTime;
    :try_start_0
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    .end local v2    # "end":Lnet/fortuna/ical4j/model/DateTime;
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .restart local v2    # "end":Lnet/fortuna/ical4j/model/DateTime;
    :goto_0
    return-object v2

    .line 115
    .end local v2    # "end":Lnet/fortuna/ical4j/model/DateTime;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/text/ParseException;
    if-eqz p1, :cond_0

    .line 117
    invoke-static {p0}, Lnet/fortuna/ical4j/model/Period;->parseDuration(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Dur;

    move-result-object v0

    .line 118
    .local v0, "duration":Lnet/fortuna/ical4j/model/Dur;
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Period;->parseStartDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/Dur;->getTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 119
    .restart local v2    # "end":Lnet/fortuna/ical4j/model/DateTime;
    goto :goto_0

    .line 121
    .end local v0    # "duration":Lnet/fortuna/ical4j/model/Dur;
    .end local v2    # "end":Lnet/fortuna/ical4j/model/DateTime;
    :cond_0
    throw v1
.end method

.method private static parseStartDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final add(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/Period;
    .locals 4
    .param p1, "period"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "newPeriodStart":Lnet/fortuna/ical4j/model/DateTime;
    const/4 v0, 0x0

    .line 200
    .local v0, "newPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    .line 219
    :goto_0
    new-instance v2, Lnet/fortuna/ical4j/model/Period;

    invoke-direct {v2, v1, v0}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    return-object v2

    .line 205
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    .line 211
    :goto_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Period;->compareTo(Lnet/fortuna/ical4j/model/Period;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lnet/fortuna/ical4j/model/Period;)I
    .locals 4
    .param p1, "arg0"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v2, Ljava/lang/ClassCastException;

    const-string v3, "Cannot compare this object to null"

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->compareTo(Ljava/util/Date;)I

    move-result v1

    .line 334
    .local v1, "startCompare":I
    if-eqz v1, :cond_1

    .line 345
    .end local v1    # "startCompare":I
    :goto_0
    return v1

    .line 338
    .restart local v1    # "startCompare":I
    :cond_1
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v2, :cond_2

    .line 339
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 340
    .local v0, "endCompare":I
    if-eqz v0, :cond_2

    move v1, v0

    .line 341
    goto :goto_0

    .line 345
    .end local v0    # "endCompare":I
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v2

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    move-result v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 352
    if-ne p0, p1, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 360
    :goto_0
    return v1

    .line 355
    :cond_0
    instance-of v1, p1, Lnet/fortuna/ical4j/model/Period;

    if-nez v1, :cond_1

    .line 356
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 359
    check-cast v0, Lnet/fortuna/ical4j/model/Period;

    .line 360
    .local v0, "period":Lnet/fortuna/ical4j/model/Period;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 361
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/Dur;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    goto :goto_0
.end method

.method public final getEnd()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getRangeEnd()Ljava/util/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public final getStart()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getRangeStart()Ljava/util/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 368
    return v0

    .line 369
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    goto :goto_0
.end method

.method public final includes(Ljava/util/Date;Z)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "inclusive"    # Z

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 179
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/Period;->includes(Ljava/util/Date;I)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/Period;->includes(Ljava/util/Date;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 292
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 293
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 294
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 295
    return-void
.end method

.method public setUtc(Z)V
    .locals 1
    .param p1, "utc"    # Z

    .prologue
    .line 281
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 282
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 283
    return-void
.end method

.method public final subtract(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 5
    .param p1, "period"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 233
    new-instance v2, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 235
    .local v2, "result":Lnet/fortuna/ical4j/model/PeriodList;
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/Period;->contains(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    :goto_0
    return-object v2

    .line 238
    :cond_0
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/Period;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    invoke-virtual {v2, p0}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    .line 247
    .local v1, "newPeriodStart":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    .line 263
    .local v0, "newPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    :goto_1
    new-instance v3, Lnet/fortuna/ical4j/model/Period;

    invoke-direct {v3, v1, v0}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_0

    .line 249
    .end local v0    # "newPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    .end local v1    # "newPeriodStart":Lnet/fortuna/ical4j/model/DateTime;
    :cond_2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/DateTime;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 250
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    .line 251
    .restart local v1    # "newPeriodStart":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    .restart local v0    # "newPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    goto :goto_1

    .line 256
    .end local v0    # "newPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    .end local v1    # "newPeriodStart":Lnet/fortuna/ical4j/model/DateTime;
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    .line 257
    .restart local v1    # "newPeriodStart":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    .line 258
    .restart local v0    # "newPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    new-instance v3, Lnet/fortuna/ical4j/model/Period;

    invoke-direct {v3, v1, v0}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    .line 260
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 303
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 304
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 311
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    :cond_0
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
