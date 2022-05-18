.class public Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
.super Ljava/lang/Object;
.source "Forecast5dModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/model/Forecast5dModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Forecast1dModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDaytimeTemperature:Ljava/lang/Float;

.field private mDaytimeWeather:Ljava/lang/String;

.field private mDaytimeWindDirection:Ljava/lang/String;

.field private mDaytimeWindPower:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field private mNightTemperature:Ljava/lang/Float;

.field private mNightWeather:Ljava/lang/String;

.field private mNightWindDirection:Ljava/lang/String;

.field private mNightWindPower:Ljava/lang/String;

.field private mSunriseTime:Ljava/util/Date;

.field private mSunsetTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/ForecastJsonBean;)Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .locals 6
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/ForecastJsonBean;

    .prologue
    const/4 v3, 0x0

    .line 415
    new-instance v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-direct {v2}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;-><init>()V

    .line 418
    .local v2, "result":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFa()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWeather:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFb()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWeather:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    :try_start_2
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeTemperature:Ljava/lang/Float;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 428
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightTemperature:Ljava/lang/Float;

    .line 429
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFe()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWindDirection:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFf()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWindDirection:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWindPower:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->getFh()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWindPower:Ljava/lang/String;

    .line 445
    .end local v2    # "result":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :goto_2
    return-object v2

    .line 419
    .restart local v2    # "result":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e1":Ljava/lang/Exception;
    const/4 v4, 0x0

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWeather:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 441
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Forecast5dModel"

    const-string v5, "Convert ForecastJsonBean  To Forecast1dModel Fail. "

    invoke-static {v4, v5, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v3

    .line 443
    goto :goto_2

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 426
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeTemperature:Ljava/lang/Float;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;)Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .locals 7
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "dailyForecast"    # Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    .prologue
    const/4 v3, 0x0

    .line 358
    new-instance v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-direct {v2}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;-><init>()V

    .line 359
    .local v2, "result":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    if-eqz p1, :cond_6

    .line 360
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$LocalSource;

    if-eqz v4, :cond_7

    .line 362
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$LocalSource;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$LocalSource;->WeatherCode:Ljava/lang/String;

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWeather:Ljava/lang/String;

    .line 368
    :cond_0
    :goto_0
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    if-eqz v4, :cond_9

    .line 369
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;

    if-eqz v4, :cond_8

    .line 370
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;->WeatherCode:Ljava/lang/String;

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWeather:Ljava/lang/String;

    .line 378
    :cond_1
    :goto_1
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;

    if-eqz v4, :cond_2

    .line 380
    :try_start_0
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;->Maximum:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Maximum;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Maximum;->Value:Ljava/lang/String;

    .line 382
    invoke-static {v4}, Lcn/nubia/weather/utils/CommonUtil;->getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 380
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeTemperature:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_2
    :try_start_1
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;->Minimum:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;->Value:Ljava/lang/String;

    .line 390
    invoke-static {v4}, Lcn/nubia/weather/utils/CommonUtil;->getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 388
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightTemperature:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :cond_2
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;

    if-eqz v3, :cond_3

    .line 398
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;->Direction:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Direction;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Direction;->Localized:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWindDirection:Ljava/lang/String;

    .line 399
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;->Speed:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Speed;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Speed;->Value:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWindPower:Ljava/lang/String;

    .line 401
    :cond_3
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;

    if-eqz v3, :cond_4

    .line 402
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;->Direction:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Direction;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Direction;->Localized:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWindDirection:Ljava/lang/String;

    .line 403
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;->Speed:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Speed;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Speed;->Value:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWindPower:Ljava/lang/String;

    .line 405
    :cond_4
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

    if-eqz v3, :cond_5

    .line 406
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;->Rise:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mSunriseTime:Ljava/util/Date;

    .line 407
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;->Set:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mSunsetTime:Ljava/util/Date;

    .line 409
    :cond_5
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->MobileLink:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mLink:Ljava/lang/String;

    .line 411
    .end local v2    # "result":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_6
    :goto_3
    return-object v2

    .line 363
    .restart local v2    # "result":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_7
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->Icon:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

    iget-object v1, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;->Icon:Ljava/lang/String;

    .line 365
    .local v1, "icon":Ljava/lang/String;
    invoke-static {v1}, Lcn/nubia/weather/utils/IconCodeUtils;->getWeatherCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWeather:Ljava/lang/String;

    goto/16 :goto_0

    .line 371
    .end local v1    # "icon":Ljava/lang/String;
    :cond_8
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->Icon:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 372
    iget-object v4, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v1, v4, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->Icon:Ljava/lang/String;

    .line 373
    .restart local v1    # "icon":Ljava/lang/String;
    invoke-static {v1}, Lcn/nubia/weather/utils/IconCodeUtils;->getWeatherCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWeather:Ljava/lang/String;

    goto/16 :goto_1

    .end local v1    # "icon":Ljava/lang/String;
    :cond_9
    move-object v2, v3

    .line 376
    goto :goto_3

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 385
    const-string v4, "Forecast5dModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildForHuaFeng mDaytimeTemperature e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 391
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 392
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 393
    const-string v4, "Forecast5dModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildForHuaFeng mNightTemperature e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 394
    goto :goto_3
.end method


# virtual methods
.method public getmDaytimeTemperature()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeTemperature:Ljava/lang/Float;

    return-object v0
.end method

.method public getmDaytimeWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWeather:Ljava/lang/String;

    return-object v0
.end method

.method public getmDaytimeWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWindDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getmDaytimeWindPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mDaytimeWindPower:Ljava/lang/String;

    return-object v0
.end method

.method public getmLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightTemperature()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightTemperature:Ljava/lang/Float;

    return-object v0
.end method

.method public getmNightWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWeather:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWindDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightWindPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mNightWindPower:Ljava/lang/String;

    return-object v0
.end method

.method public getmSunriseTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mSunriseTime:Ljava/util/Date;

    return-object v0
.end method

.method public getmSunsetTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mSunsetTime:Ljava/util/Date;

    return-object v0
.end method

.method public setmLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLink"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->mLink:Ljava/lang/String;

    .line 315
    return-void
.end method
