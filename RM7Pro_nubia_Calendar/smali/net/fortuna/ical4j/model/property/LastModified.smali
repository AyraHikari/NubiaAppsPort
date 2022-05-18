.class public Lnet/fortuna/ical4j/model/property/LastModified;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "LastModified.java"


# static fields
.field private static final serialVersionUID:J = 0x4964c8ce96746edeL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "LAST-MODIFIED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 88
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
    .line 95
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/property/LastModified;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2
    .param p1, "aDate"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 113
    const-string v0, "LAST-MODIFIED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 116
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/LastModified;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 117
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
    .line 105
    const-string v0, "LAST-MODIFIED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 106
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/LastModified;->setValue(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aDate"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 124
    const-string v0, "LAST-MODIFIED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 127
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/LastModified;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 128
    return-void
.end method
