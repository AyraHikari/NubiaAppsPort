.class public Lnet/fortuna/ical4j/model/property/Country;
.super Lnet/fortuna/ical4j/model/Property;
.source "Country.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Escapable;


# static fields
.field private static final serialVersionUID:J = -0x7049a855ed7ed4ccL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "COUNTRY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "COUNTRY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 69
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Country;->setValue(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "COUNTRY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 78
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Country;->setValue(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Country;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Country;->value:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ABBREV"

    .line 90
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Country;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 95
    return-void
.end method
