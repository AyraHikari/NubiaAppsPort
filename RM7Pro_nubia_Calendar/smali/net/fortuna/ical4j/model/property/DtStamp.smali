.class public Lnet/fortuna/ical4j/model/property/DtStamp;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "DtStamp.java"


# static fields
.field private static final serialVersionUID:J = 0x6935d34b9b8beac6L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "DTSTAMP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2
    .param p1, "aDate"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 120
    const-string v0, "DTSTAMP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStamp;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 124
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
    .line 112
    const-string v0, "DTSTAMP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 113
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtStamp;->setValue(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aDate"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 131
    const-string v0, "DTSTAMP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 134
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtStamp;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 135
    return-void
.end method
