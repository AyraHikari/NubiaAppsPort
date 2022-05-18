.class public Lnet/fortuna/ical4j/model/property/Transp;
.super Lnet/fortuna/ical4j/model/Property;
.source "Transp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;
    }
.end annotation


# static fields
.field public static final OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

.field public static final TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

.field private static final serialVersionUID:J = 0x34c1919b72f1522eL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;

    const-string v1, "OPAQUE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Transp$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    .line 106
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Transp$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "TRANSP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v0, "TRANSP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 139
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "TRANSP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 148
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

    .line 156
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
    .line 170
    return-void
.end method
