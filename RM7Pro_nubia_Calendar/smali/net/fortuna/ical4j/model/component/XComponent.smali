.class public Lnet/fortuna/ical4j/model/component/XComponent;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "XComponent.java"


# static fields
.field private static final serialVersionUID:J = -0x32465394dd360cefL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 93
    sget-object v0, Lnet/fortuna/ical4j/model/component/XComponent;->EMPTY_VALIDATOR:Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "ical4j.validation.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/XComponent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Experimental components must have the following prefix: X-"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/XComponent;->validateProperties()V

    .line 86
    :cond_1
    return-void
.end method
