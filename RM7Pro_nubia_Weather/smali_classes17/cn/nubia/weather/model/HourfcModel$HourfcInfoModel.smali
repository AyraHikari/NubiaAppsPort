.class public Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
.super Ljava/lang/Object;
.source "HourfcModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/model/HourfcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourfcInfoModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHourfcPublishTime:Ljava/util/Date;

.field private mHourfcRelativeHumidity:Ljava/lang/String;

.field private mHourfcTemp:Ljava/lang/String;

.field private mHourfcType:Ljava/lang/String;

.field private mHourfcWindSpeed:Ljava/lang/String;

.field private mHourfcWindType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;)Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;

    .prologue
    .line 240
    new-instance v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;-><init>()V

    .line 242
    .local v1, "result":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->getJa()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcType:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->getJb()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcTemp:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->getJc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcWindType:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->getJd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcWindSpeed:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->getJe()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcRelativeHumidity:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->getJf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMddHHmm"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcPublishTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HourfcModel"

    const-string v3, "Convert HourJsonBean  To HourfcInfoModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;)Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;

    .prologue
    .line 257
    new-instance v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;-><init>()V

    .line 260
    .local v1, "result":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :try_start_0
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->WeatherIcon:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->WeatherIcon:Ljava/lang/String;

    .line 262
    invoke-static {v2}, Lcn/nubia/weather/utils/IconCodeUtils;->getWeatherCode(Ljava/lang/String;)I

    move-result v2

    .line 261
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcType:Ljava/lang/String;

    .line 264
    :cond_0
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;

    iget-object v2, v2, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/weather/utils/CommonUtil;->getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcTemp:Ljava/lang/String;

    .line 269
    :cond_1
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->DateTime:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcPublishTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HourfcModel"

    const-string v3, "buildForHuaFeng Convert HourJsonBean  To HourfcInfoModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getmHourfcPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public getmHourfcRelativeHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcRelativeHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getmHourfcTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmHourfcType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcType:Ljava/lang/String;

    return-object v0
.end method

.method public getmHourfcWindSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcWindSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getmHourfcWindType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcWindType:Ljava/lang/String;

    return-object v0
.end method

.method public setmHourfcPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mHourfcPublishTime"    # Ljava/util/Date;

    .prologue
    .line 236
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcPublishTime:Ljava/util/Date;

    .line 237
    return-void
.end method

.method public setmHourfcRelativeHumidity(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHourfcRelativeHumidity"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcRelativeHumidity:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setmHourfcTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHourfcTemp"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcTemp:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setmHourfcType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHourfcType"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setmHourfcWindSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHourfcWindSpeed"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcWindSpeed:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setmHourfcWindType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHourfcWindType"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->mHourfcWindType:Ljava/lang/String;

    .line 213
    return-void
.end method
