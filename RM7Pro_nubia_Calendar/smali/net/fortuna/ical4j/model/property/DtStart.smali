.class public Lnet/fortuna/ical4j/model/property/DtStart;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "DtStart.java"


# static fields
.field private static final serialVersionUID:J = -0x4f33aeeac057d307L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 118
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
    .line 133
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 134
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStart;->setValue(Ljava/lang/String;)V

    .line 135
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
    .line 145
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 146
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStart;->setValue(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "aDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 165
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 166
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStart;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Z)V
    .locals 2
    .param p1, "time"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "utc"    # Z

    .prologue
    .line 175
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 176
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStart;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 177
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtStart;->setUtc(Z)V

    .line 178
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
    .line 156
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 157
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtStart;->setValue(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 186
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 187
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DtStart;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 125
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 126
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
    .line 194
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 204
    return-void
.end method
