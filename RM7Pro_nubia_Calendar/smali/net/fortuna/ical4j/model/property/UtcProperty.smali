.class public abstract Lnet/fortuna/ical4j/model/property/UtcProperty;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "UtcProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x434ef1989d177c42L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 69
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 70
    return-void
.end method


# virtual methods
.method public final getDateTime()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 1
    .param p1, "dateTime"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 88
    return-void
.end method

.method public setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot set timezone for UTC properties"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 103
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    instance-of v1, v1, Lnet/fortuna/ical4j/model/DateTime;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Property must have a DATE-TIME value"

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 110
    .local v0, "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": DATE-TIME value must be specified in UTC time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    return-void
.end method
