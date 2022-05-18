.class public abstract Lcn/nubia/weather/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected bean:Lcn/nubia/weather/jsonbean/BaseJsonBean;

.field protected mAreaID:Ljava/lang/String;

.field protected mType:Lcn/nubia/weather/data/DataCenter$ModelType;

.field protected mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/weather/model/BaseModel;->mUpdateTime:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/weather/model/BaseModel;->mUpdateTime:J

    .line 19
    invoke-virtual {p0}, Lcn/nubia/weather/model/BaseModel;->setType()V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract equalsByPublishTimeAndID(Ljava/lang/Object;)Z
.end method

.method public getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcn/nubia/weather/model/BaseModel;->bean:Lcn/nubia/weather/jsonbean/BaseJsonBean;

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcn/nubia/weather/model/BaseModel;->bean:Lcn/nubia/weather/jsonbean/BaseJsonBean;

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcn/nubia/weather/model/BaseModel$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/model/BaseModel$1;-><init>(Lcn/nubia/weather/model/BaseModel;)V

    .line 44
    .local v0, "bean":Lcn/nubia/weather/jsonbean/BaseJsonBean;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->setmJsonStr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/weather/model/BaseModel;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()Lcn/nubia/weather/data/DataCenter$ModelType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/weather/model/BaseModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    return-object v0
.end method

.method public getmUpdateTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcn/nubia/weather/model/BaseModel;->mUpdateTime:J

    return-wide v0
.end method

.method public setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V
    .locals 0
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/BaseJsonBean;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/model/BaseModel;->bean:Lcn/nubia/weather/jsonbean/BaseJsonBean;

    .line 51
    return-void
.end method

.method public abstract setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
.end method

.method public setToWeatherModelV2(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 2
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/weather/model/BaseModel;->setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/weather/model/BaseModel;->getmUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->updateTime(J)V

    .line 64
    return-void
.end method

.method protected abstract setType()V
.end method

.method public setmAreaID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAreaID"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/weather/model/BaseModel;->mAreaID:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setmType(Lcn/nubia/weather/data/DataCenter$ModelType;)V
    .locals 0
    .param p1, "mType"    # Lcn/nubia/weather/data/DataCenter$ModelType;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/weather/model/BaseModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 28
    return-void
.end method

.method public setmUpdateTime(J)V
    .locals 1
    .param p1, "mTime"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcn/nubia/weather/model/BaseModel;->mUpdateTime:J

    .line 59
    return-void
.end method
