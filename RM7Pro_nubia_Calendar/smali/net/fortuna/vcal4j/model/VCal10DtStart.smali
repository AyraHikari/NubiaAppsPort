.class public Lnet/fortuna/vcal4j/model/VCal10DtStart;
.super Lnet/fortuna/vcal4j/model/Property10;
.source "VCal10DtStart.java"


# instance fields
.field date:Lnet/fortuna/ical4j/model/Date;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "list"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 41
    return-void
.end method


# virtual methods
.method public IsAllDayEvent()Z
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/vcal4j/model/VCal10DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10DtStart;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "avalue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lnet/fortuna/vcal4j/model/VCal10DtStart;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method
