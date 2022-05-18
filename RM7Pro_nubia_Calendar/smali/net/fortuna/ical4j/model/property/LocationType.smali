.class public Lnet/fortuna/ical4j/model/property/LocationType;
.super Lnet/fortuna/ical4j/model/Property;
.source "LocationType.java"


# static fields
.field private static final serialVersionUID:J = -0x3126990b53961c28L


# instance fields
.field private locationTypes:Lnet/fortuna/ical4j/model/LocationTypeList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "LOCATION-TYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/LocationTypeList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/LocationTypeList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/LocationType;->locationTypes:Lnet/fortuna/ical4j/model/LocationTypeList;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "LOCATION-TYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 69
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/LocationType;->setValue(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/LocationTypeList;)V
    .locals 2
    .param p1, "cList"    # Lnet/fortuna/ical4j/model/LocationTypeList;

    .prologue
    .line 85
    const-string v0, "LOCATION-TYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 86
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/LocationType;->locationTypes:Lnet/fortuna/ical4j/model/LocationTypeList;

    .line 87
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "LOCATION-TYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 78
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/LocationType;->setValue(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/LocationTypeList;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "cList"    # Lnet/fortuna/ical4j/model/LocationTypeList;

    .prologue
    .line 94
    const-string v0, "LOCATION-TYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 95
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/LocationType;->locationTypes:Lnet/fortuna/ical4j/model/LocationTypeList;

    .line 96
    return-void
.end method


# virtual methods
.method public final getLocationTypes()Lnet/fortuna/ical4j/model/LocationTypeList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/LocationType;->locationTypes:Lnet/fortuna/ical4j/model/LocationTypeList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/LocationType;->getLocationTypes()Lnet/fortuna/ical4j/model/LocationTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/LocationTypeList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lnet/fortuna/ical4j/model/LocationTypeList;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/LocationTypeList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/LocationType;->locationTypes:Lnet/fortuna/ical4j/model/LocationTypeList;

    .line 103
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
    .line 113
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 114
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/LocationType;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 119
    return-void
.end method
