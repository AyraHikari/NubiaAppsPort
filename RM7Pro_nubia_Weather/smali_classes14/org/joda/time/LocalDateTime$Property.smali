.class public final Lorg/joda/time/LocalDateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "LocalDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x145b9adbd6050L


# instance fields
.field private transient iField:Lorg/joda/time/DateTimeField;

.field private transient iInstant:Lorg/joda/time/LocalDateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 2163
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 2164
    iput-object p1, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    .line 2165
    iput-object p2, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 2166
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
    .line 2180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/LocalDateTime;

    iput-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    .line 2181
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 2182
    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 2183
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
    .line 2172
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2173
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2174
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2234
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public addToCopy(J)Lorg/joda/time/LocalDateTime;
    .locals 5

    .prologue
    .line 2247
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2262
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public getLocalDateTime()Lorg/joda/time/LocalDateTime;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 2201
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeilingCopy()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2363
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundFloorCopy()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2349
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfCeilingCopy()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2383
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfEvenCopy()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2394
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfFloorCopy()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2373
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2276
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;
    .locals 1

    .prologue
    .line 2303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 2290
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMaximumValue()Lorg/joda/time/LocalDateTime;
    .locals 1

    .prologue
    .line 2322
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDateTime$Property;->setCopy(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/LocalDateTime;
    .locals 1

    .prologue
    .line 2334
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDateTime$Property;->setCopy(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method
