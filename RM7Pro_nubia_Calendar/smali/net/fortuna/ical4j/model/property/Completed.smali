.class public Lnet/fortuna/ical4j/model/property/Completed;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "Completed.java"


# static fields
.field private static final serialVersionUID:J = 0x5eb479d2d455f10dL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "COMPLETED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v0, "COMPLETED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 91
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Completed;->setValue(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2
    .param p1, "aDate"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 109
    const-string v0, "COMPLETED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 112
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Completed;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, "COMPLETED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 102
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Completed;->setValue(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aDate"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 120
    const-string v0, "COMPLETED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 123
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Completed;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 124
    return-void
.end method
