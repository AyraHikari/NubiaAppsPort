.class public Lnet/fortuna/ical4j/model/property/RDate;
.super Lnet/fortuna/ical4j/model/property/DateListProperty;
.source "RDate.java"


# static fields
.field private static final serialVersionUID:J = -0x2e145d84bfcd3161L


# instance fields
.field private periods:Lnet/fortuna/ical4j/model/PeriodList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "RDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 144
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 145
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateList;)V
    .locals 3
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 163
    const-string v0, "RDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 164
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 165
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
    .line 154
    const-string v0, "RDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 155
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RDate;->setValue(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;)V
    .locals 3
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 173
    const-string v0, "RDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 174
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 175
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PeriodList;)V
    .locals 3
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "periods"    # Lnet/fortuna/ical4j/model/PeriodList;

    .prologue
    .line 192
    const-string v0, "RDATE"

    new-instance v1, Lnet/fortuna/ical4j/model/DateList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Z)V

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 193
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 194
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PeriodList;)V
    .locals 3
    .param p1, "periods"    # Lnet/fortuna/ical4j/model/PeriodList;

    .prologue
    .line 182
    const-string v0, "RDATE"

    new-instance v1, Lnet/fortuna/ical4j/model/DateList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Z)V

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 183
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 184
    return-void
.end method


# virtual methods
.method public final getPeriods()Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 258
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 236
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/RDate;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v1

    const-string v2, "VALUE"

    .line 206
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v3

    .line 205
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 208
    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/RDate;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 210
    .local v0, "valueParam":Lnet/fortuna/ical4j/model/Parameter;
    if-eqz v0, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 211
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 212
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Parameter [VALUE] is invalid"

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v1

    const-string v2, "TZID"

    .line 218
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v3

    .line 217
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 223
    return-void
.end method
