.class public Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "Forecast5dJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private c:Lcn/nubia/weather/jsonbean/CityJsonBean;

.field private f:Lcn/nubia/weather/jsonbean/ForecastListJsonBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getC()Lcn/nubia/weather/jsonbean/CityJsonBean;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->c:Lcn/nubia/weather/jsonbean/CityJsonBean;

    return-object v0
.end method

.method public getF()Lcn/nubia/weather/jsonbean/ForecastListJsonBean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->f:Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    return-object v0
.end method

.method public setC(Lcn/nubia/weather/jsonbean/CityJsonBean;)V
    .locals 0
    .param p1, "c"    # Lcn/nubia/weather/jsonbean/CityJsonBean;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->c:Lcn/nubia/weather/jsonbean/CityJsonBean;

    .line 19
    return-void
.end method

.method public setF(Lcn/nubia/weather/jsonbean/ForecastListJsonBean;)V
    .locals 0
    .param p1, "f"    # Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->f:Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forecast4d [mCityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->c:Lcn/nubia/weather/jsonbean/CityJsonBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForecastInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->f:Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
