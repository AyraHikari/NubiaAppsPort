.class public Lnet/fortuna/vcal4j/model/VCal10Completed;
.super Lnet/fortuna/vcal4j/model/Property10;
.source "VCal10Completed.java"


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Completed;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lnet/fortuna/vcal4j/model/VCal10Completed;->mValue:Ljava/lang/String;

    .line 32
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
    .line 38
    return-void
.end method
