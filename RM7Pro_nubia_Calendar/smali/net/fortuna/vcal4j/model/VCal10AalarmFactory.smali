.class public Lnet/fortuna/vcal4j/model/VCal10AalarmFactory;
.super Ljava/lang/Object;
.source "VCal10AalarmFactory.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;

    invoke-direct {v0, p1, p0}, Lnet/fortuna/vcal4j/model/VCal10Aalarm;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 33
    .local v0, "property":Lnet/fortuna/ical4j/model/Property;
    return-object v0
.end method

.method public createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
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
    .line 43
    new-instance v0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;

    invoke-direct {v0, p1, p2, p0}, Lnet/fortuna/vcal4j/model/VCal10Aalarm;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 44
    .local v0, "property":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v0, p3}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    .line 45
    return-object v0
.end method
