.class public Lnet/fortuna/ical4j/model/property/ExDate;
.super Lnet/fortuna/ical4j/model/property/DateListProperty;
.source "ExDate.java"


# static fields
.field private static final serialVersionUID:J = 0x2493fea08061993fL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "EXDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateList;)V
    .locals 2
    .param p1, "dList"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 78
    const-string v0, "EXDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "EXDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 71
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/ExDate;->setValue(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "dList"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 86
    const-string v0, "EXDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 87
    return-void
.end method


# virtual methods
.method public final validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v1

    const-string v2, "VALUE"

    .line 99
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/ExDate;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v3

    .line 98
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 101
    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/ExDate;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 103
    .local v0, "valueParam":Lnet/fortuna/ical4j/model/Parameter;
    if-eqz v0, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 104
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Parameter [VALUE] is invalid"

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v1

    const-string v2, "TZID"

    .line 110
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/ExDate;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v3

    .line 109
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 115
    return-void
.end method
