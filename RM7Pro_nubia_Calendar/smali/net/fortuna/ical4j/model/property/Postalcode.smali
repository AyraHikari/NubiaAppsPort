.class public Lnet/fortuna/ical4j/model/property/Postalcode;
.super Lnet/fortuna/ical4j/model/Property;
.source "Postalcode.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Escapable;


# static fields
.field private static final serialVersionUID:J = 0x1b86a74dda700be4L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "POSTAL-CODE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "POSTAL-CODE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 67
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Postalcode;->setValue(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "POSTAL-CODE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 76
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Postalcode;->setValue(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Postalcode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Postalcode;->value:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method
