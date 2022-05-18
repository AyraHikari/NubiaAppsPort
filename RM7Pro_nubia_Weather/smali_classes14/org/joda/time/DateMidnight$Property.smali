.class public final Lorg/joda/time/DateMidnight$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "DateMidnight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateMidnight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf5b1db4L


# instance fields
.field private iField:Lorg/joda/time/DateTimeField;

.field private iInstant:Lorg/joda/time/DateMidnight;


# direct methods
.method constructor <init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1237
    iput-object p1, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    .line 1238
    iput-object p2, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1239
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
    .line 1253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateMidnight;

    iput-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    .line 1254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 1255
    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v1}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1256
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
    .line 1245
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1246
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1247
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1310
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public addToCopy(J)Lorg/joda/time/DateMidnight;
    .locals 5

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1344
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDateMidnight()Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeilingCopy()Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1446
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public roundFloorCopy()Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1437
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfCeilingCopy()Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1466
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfEvenCopy()Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1476
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfFloorCopy()Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1456
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1361
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 1394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/DateMidnight;
    .locals 4

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    iget-object v1, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v2}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withMaximumValue()Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 1414
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateMidnight$Property;->setCopy(I)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 1427
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateMidnight$Property;->setCopy(I)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method
