.class public Lnet/fortuna/ical4j/model/property/BusyType;
.super Lnet/fortuna/ical4j/model/Property;
.source "BusyType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;
    }
.end annotation


# static fields
.field public static final BUSY:Lnet/fortuna/ical4j/model/property/BusyType;

.field public static final BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/property/BusyType;

.field public static final BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/property/BusyType;

.field private static final serialVersionUID:J = -0x47563a6e686a76e7L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/BusyType$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/BusyType;->BUSY:Lnet/fortuna/ical4j/model/property/BusyType;

    .line 72
    new-instance v0, Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;

    const-string v1, "BUSY-UNAVAILABLE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/BusyType$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/BusyType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/property/BusyType;

    .line 77
    new-instance v0, Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;

    const-string v1, "BUSY-TENTATIVE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/BusyType$ImmutableBusyType;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/BusyType$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/BusyType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/property/BusyType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "BUSYTYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "BUSYTYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 118
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/BusyType;->value:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "BUSYTYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 127
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/BusyType;->value:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/BusyType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/BusyType;->value:Ljava/lang/String;

    .line 135
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
    .line 149
    return-void
.end method
