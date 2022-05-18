.class public Lcn/nubia/weather/model/NubiaServerModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "NubiaServerModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaServerModel"


# instance fields
.field private mAQI:Lcn/nubia/weather/model/AQIModel;

.field private mAlarm:Lcn/nubia/weather/model/AlarmModel;

.field private mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

.field private mHourfc:Lcn/nubia/weather/model/HourfcModel;

.field private mIndex:Lcn/nubia/weather/model/IndexModel;

.field private mObserve:Lcn/nubia/weather/model/ObserveModel;

.field private mPastDay:Lcn/nubia/weather/model/PastDayModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/NubiaServerModel;
    .locals 6
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const/4 v3, 0x0

    .line 129
    :cond_0
    :goto_0
    return-object v3

    .line 104
    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 105
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;

    .line 106
    .local v0, "bean":Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;
    new-instance v3, Lcn/nubia/weather/model/NubiaServerModel;

    invoke-direct {v3}, Lcn/nubia/weather/model/NubiaServerModel;-><init>()V

    .line 107
    .local v3, "result":Lcn/nubia/weather/model/NubiaServerModel;
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/NubiaServerModel;->setmAreaID(Ljava/lang/String;)V

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v0}, Lcn/nubia/weather/model/NubiaServerModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 115
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getObserve()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/weather/model/ObserveModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/ObserveModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V

    .line 116
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getForecast()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/weather/model/Forecast5dModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 117
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getAir()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/weather/model/AQIModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AQIModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 118
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getIndex()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/weather/model/IndexModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/IndexModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 119
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getHourfc()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/weather/model/HourfcModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/HourfcModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 120
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getAlarm()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/weather/model/AlarmModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AlarmModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 121
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getPastweather()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->getPastweather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 122
    invoke-static {p0, v4}, Lcn/nubia/weather/model/PastDayModel;->build(Ljava/lang/String;F)Lcn/nubia/weather/model/PastDayModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/model/NubiaServerModel;->setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NubiaServerModel"

    const-string v5, "Convert PastDayJsonBean  To PastDayModel Fail. "

    invoke-static {v4, v5, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public build(Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/model/WeatherModel;
    .locals 4
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "result":Lcn/nubia/weather/model/WeatherModel;
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Lcn/nubia/weather/model/WeatherModel;

    .end local v0    # "result":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v0}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 84
    .restart local v0    # "result":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 85
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 86
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/weather/model/NubiaServerModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 96
    invoke-virtual {v0, p0}, Lcn/nubia/weather/model/WeatherModel;->setmNubiaServerModel(Lcn/nubia/weather/model/NubiaServerModel;)V

    .line 97
    return-object v0

    .line 82
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getmAQI()Lcn/nubia/weather/model/AQIModel;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    return-object v0
.end method

.method public getmAlarm()Lcn/nubia/weather/model/AlarmModel;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    return-object v0
.end method

.method public getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    return-object v0
.end method

.method public getmHourfc()Lcn/nubia/weather/model/HourfcModel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    return-object v0
.end method

.method public getmIndex()Lcn/nubia/weather/model/IndexModel;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    return-object v0
.end method

.method public getmObserve()Lcn/nubia/weather/model/ObserveModel;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    return-object v0
.end method

.method public getmPastDay()Lcn/nubia/weather/model/PastDayModel;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/model/NubiaServerModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    return-object v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 142
    return-void
.end method

.method protected setType()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public setmAQI(Lcn/nubia/weather/model/AQIModel;)V
    .locals 0
    .param p1, "mAQI"    # Lcn/nubia/weather/model/AQIModel;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    .line 51
    return-void
.end method

.method public setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V
    .locals 0
    .param p1, "mAlarm"    # Lcn/nubia/weather/model/AlarmModel;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    .line 67
    return-void
.end method

.method public setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V
    .locals 0
    .param p1, "mForecast5d"    # Lcn/nubia/weather/model/Forecast5dModel;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    .line 35
    return-void
.end method

.method public setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V
    .locals 0
    .param p1, "mHourfc"    # Lcn/nubia/weather/model/HourfcModel;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    .line 43
    return-void
.end method

.method public setmIndex(Lcn/nubia/weather/model/IndexModel;)V
    .locals 0
    .param p1, "mIndex"    # Lcn/nubia/weather/model/IndexModel;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    .line 59
    return-void
.end method

.method public setmObserve(Lcn/nubia/weather/model/ObserveModel;)V
    .locals 0
    .param p1, "mObserve"    # Lcn/nubia/weather/model/ObserveModel;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    .line 27
    return-void
.end method

.method public setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V
    .locals 0
    .param p1, "mPastDay"    # Lcn/nubia/weather/model/PastDayModel;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/nubia/weather/model/NubiaServerModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    .line 75
    return-void
.end method
