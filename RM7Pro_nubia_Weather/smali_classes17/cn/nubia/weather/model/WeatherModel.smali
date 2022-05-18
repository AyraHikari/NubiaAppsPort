.class public Lcn/nubia/weather/model/WeatherModel;
.super Ljava/lang/Object;
.source "WeatherModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_AUTO:I = 0x1

.field public static final TYPE_MANUAL:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAQI:Lcn/nubia/weather/model/AQIModel;

.field private mAlarm:Lcn/nubia/weather/model/AlarmModel;

.field private mAreaID:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

.field private mGmtOffSet:Ljava/lang/String;

.field private mHourfc:Lcn/nubia/weather/model/HourfcModel;

.field private mIndex:Lcn/nubia/weather/model/IndexModel;

.field private mNubiaServerModel:Lcn/nubia/weather/model/NubiaServerModel;

.field private mObserve:Lcn/nubia/weather/model/ObserveModel;

.field private mParentCityID:Ljava/lang/String;

.field private mPastDay:Lcn/nubia/weather/model/PastDayModel;

.field private mRefreshTime:J

.field private mTime:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcn/nubia/weather/model/WeatherModel;->mTime:J

    .line 29
    iput-wide v0, p0, Lcn/nubia/weather/model/WeatherModel;->mRefreshTime:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mGmtOffSet:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public copyModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 2
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 227
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 228
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 229
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 230
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 231
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V

    .line 232
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V

    .line 233
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    .line 234
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmRefreshTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 235
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmNubiaServerModel(Lcn/nubia/weather/model/NubiaServerModel;)V

    .line 236
    return-void
.end method

.method public copyModelV2(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 2
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 239
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 244
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 245
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 246
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 247
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 248
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V

    .line 249
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V

    .line 250
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 256
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmRefreshTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 257
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    .line 258
    return-void
.end method

.method public copyModelV3(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 2
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 263
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 264
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 265
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 266
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 267
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V

    .line 268
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V

    .line 269
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 273
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    .line 274
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmRefreshTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 276
    :cond_0
    return-void
.end method

.method public getBaseModels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/BaseModel;>;"
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcn/nubia/weather/model/WeatherModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method

.method public getGmtOffSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mGmtOffSet:Ljava/lang/String;

    return-object v0
.end method

.method public getmAQI()Lcn/nubia/weather/model/AQIModel;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    return-object v0
.end method

.method public getmAlarm()Lcn/nubia/weather/model/AlarmModel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    return-object v0
.end method

.method public getmAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getmCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    return-object v0
.end method

.method public getmHourfc()Lcn/nubia/weather/model/HourfcModel;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    return-object v0
.end method

.method public getmIndex()Lcn/nubia/weather/model/IndexModel;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    return-object v0
.end method

.method public getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mNubiaServerModel:Lcn/nubia/weather/model/NubiaServerModel;

    return-object v0
.end method

.method public getmObserve()Lcn/nubia/weather/model/ObserveModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    return-object v0
.end method

.method public getmParentCityID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mParentCityID:Ljava/lang/String;

    return-object v0
.end method

.method public getmPastDay()Lcn/nubia/weather/model/PastDayModel;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    return-object v0
.end method

.method public getmRefreshTime()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcn/nubia/weather/model/WeatherModel;->mRefreshTime:J

    return-wide v0
.end method

.method public getmTime()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcn/nubia/weather/model/WeatherModel;->mTime:J

    return-wide v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/weather/model/WeatherModel;->mType:I

    return v0
.end method

.method public isWeatherInfoEmpty()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/model/WeatherModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGmtOffSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtOffSet"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mGmtOffSet:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setmAQI(Lcn/nubia/weather/model/AQIModel;)V
    .locals 0
    .param p1, "mAQI"    # Lcn/nubia/weather/model/AQIModel;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    .line 123
    return-void
.end method

.method public setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V
    .locals 0
    .param p1, "mAlarm"    # Lcn/nubia/weather/model/AlarmModel;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    .line 83
    return-void
.end method

.method public setmAreaID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAreaID"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mAreaID:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setmCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCityName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mCityName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V
    .locals 0
    .param p1, "mForecast5d"    # Lcn/nubia/weather/model/Forecast5dModel;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    .line 107
    return-void
.end method

.method public setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V
    .locals 0
    .param p1, "mHourfc"    # Lcn/nubia/weather/model/HourfcModel;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    .line 115
    return-void
.end method

.method public setmIndex(Lcn/nubia/weather/model/IndexModel;)V
    .locals 0
    .param p1, "mIndex"    # Lcn/nubia/weather/model/IndexModel;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    .line 131
    return-void
.end method

.method public setmNubiaServerModel(Lcn/nubia/weather/model/NubiaServerModel;)V
    .locals 0
    .param p1, "mNubiaServerModel"    # Lcn/nubia/weather/model/NubiaServerModel;

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mNubiaServerModel:Lcn/nubia/weather/model/NubiaServerModel;

    .line 155
    return-void
.end method

.method public setmObserve(Lcn/nubia/weather/model/ObserveModel;)V
    .locals 0
    .param p1, "mObserve"    # Lcn/nubia/weather/model/ObserveModel;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    .line 99
    return-void
.end method

.method public setmParentCityID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParentCityID"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mParentCityID:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V
    .locals 0
    .param p1, "mPastDay"    # Lcn/nubia/weather/model/PastDayModel;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/weather/model/WeatherModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    .line 139
    return-void
.end method

.method public setmRefreshTime(J)V
    .locals 1
    .param p1, "mRefreshTime"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcn/nubia/weather/model/WeatherModel;->mRefreshTime:J

    .line 163
    return-void
.end method

.method public setmTime(J)V
    .locals 1
    .param p1, "mTime"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcn/nubia/weather/model/WeatherModel;->mTime:J

    .line 147
    return-void
.end method

.method public setmType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 66
    iput p1, p0, Lcn/nubia/weather/model/WeatherModel;->mType:I

    .line 67
    return-void
.end method

.method public updateTime(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 174
    const/4 v2, 0x1

    .line 175
    .local v2, "needUpdate":Z
    const-wide/32 v0, 0x927c0

    .line 176
    .local v0, "eightMinute":J
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mAlarm:Lcn/nubia/weather/model/AlarmModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/AlarmModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    .line 178
    const/4 v2, 0x0

    .line 181
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mAQI:Lcn/nubia/weather/model/AQIModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/AQIModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_1

    .line 183
    const/4 v2, 0x0

    .line 186
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    if-eqz v3, :cond_8

    .line 187
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mForecast5d:Lcn/nubia/weather/model/Forecast5dModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_2

    .line 188
    const/4 v2, 0x0

    .line 193
    :cond_2
    :goto_0
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    if-eqz v3, :cond_9

    .line 194
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mHourfc:Lcn/nubia/weather/model/HourfcModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/HourfcModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_3

    .line 195
    const/4 v2, 0x0

    .line 200
    :cond_3
    :goto_1
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mIndex:Lcn/nubia/weather/model/IndexModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/IndexModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_4

    .line 202
    const/4 v2, 0x0

    .line 205
    :cond_4
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    if-eqz v3, :cond_a

    .line 206
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mObserve:Lcn/nubia/weather/model/ObserveModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_5

    .line 207
    const/4 v2, 0x0

    .line 212
    :cond_5
    :goto_2
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    if-eqz v3, :cond_6

    .line 213
    iget-object v3, p0, Lcn/nubia/weather/model/WeatherModel;->mPastDay:Lcn/nubia/weather/model/PastDayModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/PastDayModel;->getmUpdateTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_6

    .line 214
    const/4 v2, 0x0

    .line 219
    :cond_6
    if-eqz v2, :cond_7

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 223
    :cond_7
    return-void

    .line 191
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 210
    :cond_a
    const/4 v2, 0x0

    goto :goto_2
.end method
