.class public Lcn/nubia/weather/model/ObserveModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "ObserveModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ObserveModel"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAirPressure:Ljava/lang/String;

.field private mBodyTemperature:Ljava/lang/String;

.field private mHumidity:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field private mPrecipitation:Ljava/lang/String;

.field private mTemperature:Ljava/lang/String;

.field private mTime:Ljava/util/Date;

.field private mUVIndex:Ljava/lang/String;

.field private mVisibility:Ljava/lang/String;

.field private mWeather:Ljava/lang/String;

.field private mWindDirection:Ljava/lang/String;

.field private mWindDirectionEn:Ljava/lang/String;

.field private mWindPower:Ljava/lang/String;

.field private mWindSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/ObserveJsonBean;)Lcn/nubia/weather/model/ObserveModel;
    .locals 3
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/ObserveJsonBean;

    .prologue
    .line 251
    new-instance v0, Lcn/nubia/weather/model/ObserveModel;

    invoke-direct {v0}, Lcn/nubia/weather/model/ObserveModel;-><init>()V

    .line 252
    .local v0, "result":Lcn/nubia/weather/model/ObserveModel;
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    const/4 v0, 0x0

    .line 273
    .end local v0    # "result":Lcn/nubia/weather/model/ObserveModel;
    :cond_0
    :goto_0
    return-object v0

    .line 256
    .restart local v0    # "result":Lcn/nubia/weather/model/ObserveModel;
    :cond_1
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/ObserveModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 257
    iput-object p0, v0, Lcn/nubia/weather/model/ObserveModel;->mAreaID:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mTemperature:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL2()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mHumidity:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL3()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mWindPower:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL4()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mWindDirection:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mWeather:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mPrecipitation:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL7()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMMddHHmm"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mTime:Ljava/util/Date;

    .line 268
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL9()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mVisibility:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL10()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mAirPressure:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL11()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mWindSpeed:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->getL12()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/weather/model/ObserveModel;->mBodyTemperature:Ljava/lang/String;

    goto :goto_0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/ObserveModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const/4 v2, 0x0

    .line 247
    :cond_0
    :goto_0
    return-object v2

    .line 238
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 239
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcn/nubia/weather/jsonbean/ObserveJsonBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/ObserveJsonBean;

    .line 240
    .local v0, "bean":Lcn/nubia/weather/jsonbean/ObserveJsonBean;
    const/4 v2, 0x0

    .line 242
    .local v2, "result":Lcn/nubia/weather/model/ObserveModel;
    if-eqz v0, :cond_0

    .line 243
    new-instance v2, Lcn/nubia/weather/model/ObserveModel;

    .end local v2    # "result":Lcn/nubia/weather/model/ObserveModel;
    invoke-direct {v2}, Lcn/nubia/weather/model/ObserveModel;-><init>()V

    .line 244
    .restart local v2    # "result":Lcn/nubia/weather/model/ObserveModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 245
    invoke-static {p0, v0}, Lcn/nubia/weather/model/ObserveModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/ObserveJsonBean;)Lcn/nubia/weather/model/ObserveModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;)Lcn/nubia/weather/model/ObserveModel;
    .locals 7
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "result":Lcn/nubia/weather/model/ObserveModel;
    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 197
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    const/4 v4, 0x0

    .line 231
    :goto_0
    return-object v4

    .line 200
    :cond_0
    new-instance v3, Lcn/nubia/weather/model/ObserveModel;

    invoke-direct {v3}, Lcn/nubia/weather/model/ObserveModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    .end local v2    # "result":Lcn/nubia/weather/model/ObserveModel;
    .local v3, "result":Lcn/nubia/weather/model/ObserveModel;
    :try_start_1
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/ObserveModel;->setmAreaID(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, p1}, Lcn/nubia/weather/model/ObserveModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 203
    iput-object p0, v3, Lcn/nubia/weather/model/ObserveModel;->mAreaID:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;->Value:Ljava/lang/String;

    .line 204
    invoke-static {v4}, Lcn/nubia/weather/utils/CommonUtil;->getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mTemperature:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->RelativeHumidity:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mHumidity:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->UVIndex:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mUVIndex:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;

    if-eqz v4, :cond_2

    .line 209
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;->WeatherCode:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mWeather:Ljava/lang/String;

    .line 215
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->LocalObservationDateTime:Ljava/lang/String;

    .line 214
    invoke-static {v4}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mTime:Ljava/util/Date;

    .line 217
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Speed:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed$Metric;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed$Metric;->Value:Ljava/lang/String;

    .line 216
    invoke-static {v4}, Lcn/nubia/weather/utils/CommonUtil;->getWindDegreeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mWindPower:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Direction:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;->Localized:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mWindDirection:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Direction:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;->English:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mWindDirectionEn:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->RealFeelTemperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperature;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperature;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperature$Metric;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperature$Metric;->Value:Ljava/lang/String;

    .line 221
    invoke-static {v4}, Lcn/nubia/weather/utils/CommonUtil;->getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mBodyTemperature:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Visibility:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Visibility;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Visibility;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Visibility$Metric;

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Visibility$Metric;->Value:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mVisibility:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->MobileLink:Ljava/lang/String;

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mLink:Ljava/lang/String;

    move-object v2, v3

    .end local v3    # "result":Lcn/nubia/weather/model/ObserveModel;
    .restart local v2    # "result":Lcn/nubia/weather/model/ObserveModel;
    :cond_1
    :goto_2
    move-object v4, v2

    .line 231
    goto/16 :goto_0

    .line 211
    .end local v2    # "result":Lcn/nubia/weather/model/ObserveModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/ObserveModel;
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    move-result-object v4

    iget-object v1, v4, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->WeatherIcon:Ljava/lang/String;

    .line 212
    .local v1, "icon":Ljava/lang/String;
    invoke-static {v1}, Lcn/nubia/weather/utils/IconCodeUtils;->getWeatherCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/weather/model/ObserveModel;->mWeather:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 225
    .end local v1    # "icon":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 226
    .end local v3    # "result":Lcn/nubia/weather/model/ObserveModel;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "result":Lcn/nubia/weather/model/ObserveModel;
    :goto_3
    const-string v4, "ObserveModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildForHuaFeng e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/ObserveModel;
    .locals 6
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    const/4 v4, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v4

    .line 174
    :cond_1
    new-instance v0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;

    invoke-direct {v0}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;-><init>()V

    .line 175
    .local v0, "bean":Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 176
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v4, 0x0

    .line 178
    .local v4, "result":Lcn/nubia/weather/model/ObserveModel;
    :try_start_0
    const-class v5, [Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    invoke-virtual {v3, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    .line 180
    .local v1, "currentConditionInfos":[Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 181
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v0, v5}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->setmCurrentConditionInfo(Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;)V

    .line 182
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 183
    invoke-static {p0, v0}, Lcn/nubia/weather/model/ObserveModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;)Lcn/nubia/weather/model/ObserveModel;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 185
    .end local v1    # "currentConditionInfos":[Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/ObserveModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 142
    check-cast v0, Lcn/nubia/weather/model/ObserveModel;

    .line 145
    .local v0, "info":Lcn/nubia/weather/model/ObserveModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/ObserveModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/ObserveModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcn/nubia/weather/model/ObserveModel;->getmTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/ObserveModel;->getmTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getUVIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mUVIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirectionEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mWindDirectionEn:Ljava/lang/String;

    return-object v0
.end method

.method public getmAirPressure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mAirPressure:Ljava/lang/String;

    return-object v0
.end method

.method public getmAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getmBodyTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mBodyTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getmHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getmLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getmPrecipitation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mPrecipitation:Ljava/lang/String;

    return-object v0
.end method

.method public getmTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getmTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getmVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getmWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mWeather:Ljava/lang/String;

    return-object v0
.end method

.method public getmWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mWindDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getmWindPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mWindPower:Ljava/lang/String;

    return-object v0
.end method

.method public getmWindSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mWindSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "result":I
    invoke-virtual {p0}, Lcn/nubia/weather/model/ObserveModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcn/nubia/weather/model/ObserveModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/model/ObserveModel;->getmTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcn/nubia/weather/model/ObserveModel;->getmTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_1
    return v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 285
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V

    .line 286
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->OBSERVE:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/ObserveModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 292
    return-void
.end method

.method public setUVIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUVIndex"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/nubia/weather/model/ObserveModel;->mUVIndex:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setWindDirectionEn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWindDirectionEn"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/weather/model/ObserveModel;->mWindDirectionEn:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setmLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLink"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/weather/model/ObserveModel;->mLink:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObserveModel [mAreaID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mAreaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mTemperature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHumidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mHumidity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mWindPower:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mWindDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWeather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mWeather:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrecipitation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mPrecipitation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mVisibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAirPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mAirPressure:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mWindSpeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBodyTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/ObserveModel;->mBodyTemperature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
