.class public Lnet/fortuna/ical4j/model/property/RecurrenceId;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "RecurrenceId.java"


# static fields
.field private static final serialVersionUID:J = 0x3dda0837d4fba07eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 140
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 141
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
    .line 157
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 158
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setValue(Ljava/lang/String;)V

    .line 159
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
    .line 169
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 170
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setValue(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "aDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 189
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 190
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 191
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
    .line 180
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 181
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setValue(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 199
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 200
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 148
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 214
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "RANGE"

    .line 215
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 220
    return-void
.end method
