.class public Lcn/nubia/weather/model/GeoModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "GeoModel.java"


# instance fields
.field private city:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private nation:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    return-void
.end method

.method public static build(Lcn/nubia/weather/jsonbean/GeoJsonBean;)Lcn/nubia/weather/model/GeoModel;
    .locals 2
    .param p0, "bean"    # Lcn/nubia/weather/jsonbean/GeoJsonBean;

    .prologue
    .line 114
    new-instance v0, Lcn/nubia/weather/model/GeoModel;

    invoke-direct {v0}, Lcn/nubia/weather/model/GeoModel;-><init>()V

    .line 115
    .local v0, "result":Lcn/nubia/weather/model/GeoModel;
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/GeoJsonBean;->getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/GeoInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/GeoModel;->city:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/GeoJsonBean;->getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/GeoInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/GeoJsonBean;->getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/GeoInfo;->getLevel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/GeoModel;->level:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/GeoJsonBean;->getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/GeoInfo;->getDistrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/GeoModel;->district:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/GeoJsonBean;->getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/GeoInfo;->getProvince()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/GeoModel;->province:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/GeoJsonBean;->getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/GeoInfo;->getNation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/GeoModel;->nation:Ljava/lang/String;

    .line 122
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 67
    const/4 v1, 0x1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 75
    check-cast v0, Lcn/nubia/weather/model/GeoModel;

    .line 76
    .local v0, "info":Lcn/nubia/weather/model/GeoModel;
    iget-object v2, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 77
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    iget-object v2, v0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/model/GeoModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/weather/model/GeoModel;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/weather/model/GeoModel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getNation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/weather/model/GeoModel;->nation:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/weather/model/GeoModel;->province:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "result":I
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->level:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->level:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->city:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->district:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->district:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->province:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->province:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->nation:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->nation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_5
    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/weather/model/GeoModel;->city:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/weather/model/GeoModel;->district:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/weather/model/GeoModel;->level:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNation(Ljava/lang/String;)V
    .locals 0
    .param p1, "nation"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/weather/model/GeoModel;->nation:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/weather/model/GeoModel;->province:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 134
    return-void
.end method

.method protected setType()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/GeoModel;->nation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
