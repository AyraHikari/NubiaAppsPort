.class public Lnet/fortuna/ical4j/model/property/Description;
.super Lnet/fortuna/ical4j/model/Property;
.source "Description.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Escapable;


# static fields
.field private static final serialVersionUID:J = 0x6522a10decee1c19L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "DESCRIPTION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "DESCRIPTION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 68
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Description;->setValue(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "DESCRIPTION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 77
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Description;->setValue(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Description;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Description;->value:Ljava/lang/String;

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
    .line 88
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ALTREP"

    .line 89
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Description;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 90
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 91
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Description;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 96
    return-void
.end method
