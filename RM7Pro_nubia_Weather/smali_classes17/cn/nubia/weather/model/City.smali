.class public Lcn/nubia/weather/model/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private areaId:Ljava/lang/String;

.field private city_cn:Ljava/lang/String;

.field private city_pinyin:Ljava/lang/String;

.field private city_py:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private id:I

.field private name_cn:Ljava/lang/String;

.field private name_pinyin:Ljava/lang/String;

.field private name_py:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name_cn"    # Ljava/lang/String;
    .param p2, "areaId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/nubia/weather/model/City;->name_cn:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/nubia/weather/model/City;->areaId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city_cn"    # Ljava/lang/String;
    .param p3, "city_pinyin"    # Ljava/lang/String;
    .param p4, "city_py"    # Ljava/lang/String;
    .param p5, "name_cn"    # Ljava/lang/String;
    .param p6, "name_pinyin"    # Ljava/lang/String;
    .param p7, "name_py"    # Ljava/lang/String;
    .param p8, "areaId"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/weather/model/City;->province:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/weather/model/City;->city_cn:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcn/nubia/weather/model/City;->city_pinyin:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcn/nubia/weather/model/City;->city_py:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcn/nubia/weather/model/City;->name_cn:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcn/nubia/weather/model/City;->name_pinyin:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcn/nubia/weather/model/City;->name_py:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcn/nubia/weather/model/City;->areaId:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getAreaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/weather/model/City;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/weather/model/City;->city_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_pinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/model/City;->city_pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_py()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/weather/model/City;->city_py:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/weather/model/City;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcn/nubia/weather/model/City;->id:I

    return v0
.end method

.method public getName_cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/weather/model/City;->name_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getName_pinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/weather/model/City;->name_pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getName_py()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/weather/model/City;->name_py:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/weather/model/City;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaId"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/weather/model/City;->areaId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setCity_cn(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_cn"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/weather/model/City;->city_cn:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCity_pinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_pinyin"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/nubia/weather/model/City;->city_pinyin:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCity_py(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_py"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/weather/model/City;->city_py:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/model/City;->country:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 42
    iput p1, p0, Lcn/nubia/weather/model/City;->id:I

    .line 43
    return-void
.end method

.method public setName_cn(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_cn"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/weather/model/City;->name_cn:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setName_pinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_pinyin"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/weather/model/City;->name_pinyin:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setName_py(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_py"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/weather/model/City;->name_py:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/weather/model/City;->province:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "City [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/weather/model/City;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->city_cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->city_pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->city_py:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->name_cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->name_pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->name_py:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/City;->areaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
