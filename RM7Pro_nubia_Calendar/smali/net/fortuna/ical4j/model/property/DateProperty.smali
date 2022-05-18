.class public abstract Lnet/fortuna/ical4j/model/property/DateProperty;
.super Lnet/fortuna/ical4j/model/Property;
.source "DateProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x2bddb6764f127229L


# instance fields
.field private date:Lnet/fortuna/ical4j/model/Date;

.field private timeZone:Lnet/fortuna/ical4j/model/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 89
    invoke-direct {p0, p1, p3}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 90
    invoke-direct {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 91
    return-void
.end method

.method private updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 176
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 177
    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TimeZone is not applicable to current value"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/TzId;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/parameter/TzId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setUtc(Z)V

    goto :goto_0
.end method


# virtual methods
.method public copy()Lnet/fortuna/ical4j/model/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-super {p0}, Lnet/fortuna/ical4j/model/Property;->copy()Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    .local v0, "copy":Lnet/fortuna/ical4j/model/Property;
    move-object v1, v0

    .line 276
    check-cast v1, Lnet/fortuna/ical4j/model/property/DateProperty;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    iput-object v2, v1, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    move-object v1, v0

    .line 277
    check-cast v1, Lnet/fortuna/ical4j/model/property/DateProperty;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    .line 279
    return-object v0
.end method

.method public final getDate()Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    return-object v0
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDate(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 106
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    .line 107
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 111
    :cond_0
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .end local p1    # "date":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 125
    :goto_0
    return-void

    .line 114
    .restart local p1    # "date":Lnet/fortuna/ical4j/model/Date;
    :cond_1
    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 123
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 0
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 159
    return-void
.end method

.method public final setUtc(Z)V
    .locals 2
    .param p1, "utc"    # Z

    .prologue
    .line 201
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->remove(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 205
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 139
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    invoke-direct {v0, p1, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    goto :goto_0
.end method

.method public validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v3

    const-string v4, "VALUE"

    .line 224
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v5

    .line 223
    invoke-virtual {v3, v4, v5}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 226
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v3

    const-string v4, "TZID"

    .line 228
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v5

    .line 227
    invoke-virtual {v3, v4, v5}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 235
    :goto_0
    const-string v3, "VALUE"

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 237
    .local v2, "value":Lnet/fortuna/ical4j/model/parameter/Value;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    instance-of v3, v3, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v3, :cond_3

    .line 239
    if-eqz v2, :cond_1

    sget-object v3, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v3, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALUE parameter ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is invalid for DATE-TIME instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    .end local v2    # "value":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v3

    const-string v4, "TZID"

    .line 232
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v5

    .line 231
    invoke-virtual {v3, v4, v5}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    goto :goto_0

    .line 244
    .restart local v2    # "value":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 247
    .local v0, "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    const-string v3, "TZID"

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    .line 248
    .local v1, "tzId":Lnet/fortuna/ical4j/model/Parameter;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 252
    :cond_2
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TZID parameter ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] does not match the timezone ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 254
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .end local v0    # "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    .end local v1    # "tzId":Lnet/fortuna/ical4j/model/Parameter;
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 259
    if-nez v2, :cond_4

    .line 260
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALUE parameter ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] must be specified for DATE instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_4
    sget-object v3, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v3, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 264
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALUE parameter ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is invalid for DATE instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_5
    return-void
.end method
