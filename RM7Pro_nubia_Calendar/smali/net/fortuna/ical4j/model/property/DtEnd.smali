.class public Lnet/fortuna/ical4j/model/property/DtEnd;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "DtEnd.java"


# static fields
.field private static final serialVersionUID:J = 0x7083548512a54109L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 137
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtEnd;->setValue(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 149
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtEnd;->setValue(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "aDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 168
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 169
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtEnd;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Z)V
    .locals 2
    .param p1, "time"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "utc"    # Z

    .prologue
    .line 178
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 179
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtEnd;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 180
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtEnd;->setUtc(Z)V

    .line 181
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
    .line 159
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 160
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtEnd;->setValue(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 189
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 190
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtEnd;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 127
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 128
    return-void
.end method


# virtual methods
.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 207
    return-void
.end method
