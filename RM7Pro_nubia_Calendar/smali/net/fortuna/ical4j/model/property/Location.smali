.class public Lnet/fortuna/ical4j/model/property/Location;
.super Lnet/fortuna/ical4j/model/Property;
.source "Location.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Escapable;


# static fields
.field private static final serialVersionUID:J = 0x7811a86adf8842e1L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "LOCATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "LOCATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 120
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Location;->setValue(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "LOCATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 129
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Location;->setValue(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Location;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Location;->value:Ljava/lang/String;

    .line 157
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
    .line 140
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ALTREP"

    .line 141
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Location;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 142
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 143
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Location;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 144
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "VVENUE"

    .line 145
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Location;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 150
    return-void
.end method
