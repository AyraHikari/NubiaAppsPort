.class public Lnet/fortuna/vcal4j/model/VCal10VEvent;
.super Lnet/fortuna/ical4j/model/Component;
.source "VCal10VEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "p"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1
    .param p1, "p"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 25
    const-string v0, "VEVENT"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/vcal4j/model/VCal10VEvent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getAalarms()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1

    .prologue
    .line 68
    const-string v0, "AALARM"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    return-object v0
.end method

.method public getAttendees()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1

    .prologue
    .line 44
    const-string v0, "ATTENDEE"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    return-object v0
.end method

.method public getDalarms()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1

    .prologue
    .line 65
    const-string v0, "DALARM"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lnet/fortuna/vcal4j/model/VCal10Description;
    .locals 1

    .prologue
    .line 41
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10Description;

    return-object v0
.end method

.method public getDtEnd()Lnet/fortuna/vcal4j/model/VCal10DtEnd;
    .locals 1

    .prologue
    .line 47
    const-string v0, "DTEND"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10DtEnd;

    return-object v0
.end method

.method public getDtStart()Lnet/fortuna/vcal4j/model/VCal10DtStart;
    .locals 1

    .prologue
    .line 50
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10DtStart;

    return-object v0
.end method

.method public getLocation()Lnet/fortuna/vcal4j/model/VCal10Location;
    .locals 1

    .prologue
    .line 53
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10Location;

    return-object v0
.end method

.method public getRrule()Lnet/fortuna/vcal4j/model/VCal10Rrule;
    .locals 1

    .prologue
    .line 56
    const-string v0, "RRULE"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10Rrule;

    return-object v0
.end method

.method public getSummary()Lnet/fortuna/vcal4j/model/VCal10Summary;
    .locals 1

    .prologue
    .line 59
    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10Summary;

    return-object v0
.end method

.method public getUid()Lnet/fortuna/vcal4j/model/VCal10Uid;
    .locals 1

    .prologue
    .line 62
    const-string v0, "UID"

    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/model/VCal10VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/vcal4j/model/VCal10Uid;

    return-object v0
.end method

.method public validate(Z)V
    .locals 0
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method
