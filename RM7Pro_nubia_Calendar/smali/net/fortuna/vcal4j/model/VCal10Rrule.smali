.class public Lnet/fortuna/vcal4j/model/VCal10Rrule;
.super Lnet/fortuna/vcal4j/model/Property10;
.source "VCal10Rrule.java"


# instance fields
.field freq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getFreq()Lnet/fortuna/vcal4j/model/frequence/Frequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Rrule;->freq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Rrule;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lnet/fortuna/vcal4j/model/VCal10Rrule;->value:Ljava/lang/String;

    .line 47
    new-instance v0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;-><init>()V

    iget-object v1, p0, Lnet/fortuna/vcal4j/model/VCal10Rrule;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/fortuna/vcal4j/data/FrequenceBuilder;->build(Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;Ljava/lang/String;)Lnet/fortuna/vcal4j/model/frequence/Frequence;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Rrule;->freq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

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
    .line 53
    return-void
.end method
