.class public final Lorg/joda/time/DateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60e9c001e8132406L


# instance fields
.field private iField:Lorg/joda/time/DateTimeField;

.field private iInstant:Lorg/joda/time/DateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 2095
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 2096
    iput-object p1, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    .line 2097
    iput-object p2, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 2098
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2112
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTime;

    iput-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    .line 2113
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 2114
    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 2115
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2104
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2105
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2106
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2169
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public addToCopy(J)Lorg/joda/time/DateTime;
    .locals 5

    .prologue
    .line 2185
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2203
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 2133
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeilingCopy()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2337
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundFloorCopy()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2328
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfCeilingCopy()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2357
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfEvenCopy()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2368
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfFloorCopy()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2347
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2220
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 2253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 2237
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMaximumValue()Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    .line 2281
    :try_start_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime$Property;->setCopy(I)Lorg/joda/time/DateTime;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2286
    :goto_0
    return-object v0

    .line 2282
    :catch_0
    move-exception v0

    .line 2283
    invoke-static {v0}, Lorg/joda/time/IllegalInstantException;->isIllegalInstant(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2285
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v2

    .line 2286
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    goto :goto_0

    .line 2288
    :cond_0
    throw v0
.end method

.method public withMinimumValue()Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    .line 2310
    :try_start_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime$Property;->setCopy(I)Lorg/joda/time/DateTime;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2315
    :goto_0
    return-object v0

    .line 2311
    :catch_0
    move-exception v0

    .line 2312
    invoke-static {v0}, Lorg/joda/time/IllegalInstantException;->isIllegalInstant(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v2

    .line 2315
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    goto :goto_0

    .line 2317
    :cond_0
    throw v0
.end method
