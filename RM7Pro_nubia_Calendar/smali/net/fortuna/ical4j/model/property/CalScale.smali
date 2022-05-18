.class public Lnet/fortuna/ical4j/model/property/CalScale;
.super Lnet/fortuna/ical4j/model/Property;
.source "CalScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/CalScale$ImmutableCalScale;
    }
.end annotation


# static fields
.field public static final GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

.field private static final serialVersionUID:J = 0x6756299cb82853afL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lnet/fortuna/ical4j/model/property/CalScale$ImmutableCalScale;

    const-string v1, "GREGORIAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/CalScale$ImmutableCalScale;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/CalScale$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "CALSCALE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "CALSCALE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 94
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "CALSCALE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 103
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    .line 111
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
    .line 124
    const-string v0, "ical4j.validation.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/CalScale;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/CalScale;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/CalScale;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    return-void
.end method
