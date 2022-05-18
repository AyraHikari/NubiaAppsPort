.class public Lnet/fortuna/ical4j/model/property/Resources;
.super Lnet/fortuna/ical4j/model/Property;
.source "Resources.java"


# static fields
.field private static final serialVersionUID:J = -0xbc6b313c0d363b7L


# instance fields
.field private resources:Lnet/fortuna/ical4j/model/TextList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "RESOURCES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/TextList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/TextList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Resources;->resources:Lnet/fortuna/ical4j/model/TextList;

    .line 62
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "RESOURCES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 70
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Resources;->setValue(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/TextList;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "rList"    # Lnet/fortuna/ical4j/model/TextList;

    .prologue
    .line 86
    const-string v0, "RESOURCES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 87
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Resources;->resources:Lnet/fortuna/ical4j/model/TextList;

    .line 88
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TextList;)V
    .locals 2
    .param p1, "rList"    # Lnet/fortuna/ical4j/model/TextList;

    .prologue
    .line 77
    const-string v0, "RESOURCES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 78
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Resources;->resources:Lnet/fortuna/ical4j/model/TextList;

    .line 79
    return-void
.end method


# virtual methods
.method public final getResources()Lnet/fortuna/ical4j/model/TextList;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Resources;->resources:Lnet/fortuna/ical4j/model/TextList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Resources;->getResources()Lnet/fortuna/ical4j/model/TextList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TextList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lnet/fortuna/ical4j/model/TextList;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/TextList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Resources;->resources:Lnet/fortuna/ical4j/model/TextList;

    .line 120
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
    .line 98
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ALTREP"

    .line 99
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Resources;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 100
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 101
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Resources;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 106
    return-void
.end method
