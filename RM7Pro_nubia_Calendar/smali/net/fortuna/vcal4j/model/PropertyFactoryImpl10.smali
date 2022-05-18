.class public Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;
.super Lnet/fortuna/ical4j/model/AbstractContentFactory;
.source "PropertyFactoryImpl10.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;-><init>()V

    .line 20
    const-string v0, "ATTENDEE"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10AttendeeFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10AttendeeFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    const-string v0, "DESCRIPTION"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10DescriptionFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10DescriptionFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string v0, "DTEND"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10DtEndFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10DtEndFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    const-string v0, "DTSTART"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10DtStartFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10DtStartFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v0, "LOCATION"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10LocationFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10LocationFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    const-string v0, "RRULE"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10RruleFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10RruleFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    const-string v0, "SUMMARY"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10SummaryFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10SummaryFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v0, "UID"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10UidFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10UidFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const-string v0, "AALARM"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10AalarmFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10AalarmFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v0, "DALARM"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10AalarmFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10AalarmFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const-string v0, "PRODID"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ProdIdFactory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ProdIdFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string v0, "TZ"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10TZFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10TZFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v0, "DUE"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10DueFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10DueFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v0, "COMPLETED"

    new-instance v1, Lnet/fortuna/vcal4j/model/VCal10CompletedFactory;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/VCal10CompletedFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v0, "STATUS"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StatusFactory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StatusFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v0, "GEO"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$GeoFactory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$GeoFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method private isExperimentalName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "X-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v1, "Create VCalendar1.0 property:"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 45
    .local v0, "factory":Lnet/fortuna/ical4j/model/PropertyFactory;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->isExperimentalName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->allowIllegalNames()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v1, "Create VCalendar1.0 property:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 71
    .local v0, "factory":Lnet/fortuna/ical4j/model/PropertyFactory;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1, p2, p3}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->isExperimentalName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;->allowIllegalNames()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
