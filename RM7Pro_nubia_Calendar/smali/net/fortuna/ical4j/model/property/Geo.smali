.class public Lnet/fortuna/ical4j/model/property/Geo;
.super Lnet/fortuna/ical4j/model/Property;
.source "Geo.java"


# static fields
.field private static final serialVersionUID:J = -0xc84e7d24cfef574L


# instance fields
.field private latitude:Ljava/math/BigDecimal;

.field private longitude:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    const-string v0, "GEO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 146
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 147
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "GEO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 156
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Geo;->setValue(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "latitude"    # Ljava/math/BigDecimal;
    .param p2, "longitude"    # Ljava/math/BigDecimal;

    .prologue
    .line 173
    const-string v0, "GEO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 174
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 175
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 176
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "GEO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 165
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Geo;->setValue(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "latitude"    # Ljava/math/BigDecimal;
    .param p3, "longitude"    # Ljava/math/BigDecimal;

    .prologue
    .line 185
    const-string v0, "GEO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 186
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 187
    iput-object p3, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 188
    return-void
.end method


# virtual methods
.method public final getLatitude()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getLongitude()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Geo;->getLatitude()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Geo;->getLongitude()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public final setLatitude(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "latitude"    # Ljava/math/BigDecimal;

    .prologue
    .line 237
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 238
    return-void
.end method

.method public final setLongitude(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "longitude"    # Ljava/math/BigDecimal;

    .prologue
    .line 244
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 245
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x3b

    .line 208
    const/4 v2, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "latitudeString":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 216
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "longitudeString":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 223
    :goto_1
    return-void

    .line 213
    .end local v1    # "longitudeString":Ljava/lang/String;
    :cond_0
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    goto :goto_0

    .line 221
    .restart local v1    # "longitudeString":Ljava/lang/String;
    :cond_1
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    goto :goto_1
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 252
    return-void
.end method
