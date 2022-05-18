.class public interface abstract Lcn/nubia/weather/persistent/IPersistenter;
.super Ljava/lang/Object;
.source "IPersistenter.java"


# virtual methods
.method public abstract addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
.end method

.method public abstract addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;I)V
.end method

.method public abstract changeIndex(Lcn/nubia/weather/model/WeatherModel;)V
.end method

.method public abstract clearManualWeatherInfo()V
.end method

.method public abstract getAllCityIDs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCitys(Lcn/nubia/weather/persistent/QueryCallback;)V
.end method

.method public abstract getAllWeatherInfo(Lcn/nubia/weather/persistent/QueryCallback;)V
.end method

.method public abstract getHotCitys(Lcn/nubia/weather/persistent/QueryCallback;)V
.end method

.method public abstract getWeatherInfoByID(Ljava/lang/String;Lcn/nubia/weather/persistent/QueryCallback;)V
.end method

.method public abstract getWeatherInfoByIDV2(Ljava/lang/String;Lcn/nubia/weather/persistent/QueryCallback;)V
.end method

.method public abstract removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
.end method

.method public abstract setWeatherInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLocationWeather(Lcn/nubia/weather/model/WeatherModel;)V
.end method

.method public abstract updateWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
.end method

.method public abstract updateWeatherInfoForNubia(Lcn/nubia/weather/model/WeatherModel;)V
.end method
