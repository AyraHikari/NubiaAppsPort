.class public Lcn/nubia/weather/jsonbean/GeoInfo;
.super Ljava/lang/Object;
.source "GeoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 71
    const/4 v1, 0x1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Lcn/nubia/weather/jsonbean/GeoInfo;

    .line 80
    .local v0, "info":Lcn/nubia/weather/jsonbean/GeoInfo;
    iget-object v2, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 81
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    iget-object v2, v0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getNation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->nation:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":I
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->level:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->level:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->city:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->district:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->district:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->province:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->province:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->nation:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->nation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_5
    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->city:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->district:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->level:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setNation(Ljava/lang/String;)V
    .locals 0
    .param p1, "nation"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->nation:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->province:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoInfo;->nation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
