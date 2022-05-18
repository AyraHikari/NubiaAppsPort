.class public Lcn/nubia/weather/utils/LinkUtils;
.super Ljava/lang/Object;
.source "LinkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkUtils"

.field public static final TYPE_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final TYPE_INDEX:Ljava/lang/String; = "Indices"

.field public static final TYPE_REALFEEL:Ljava/lang/String; = "RealFeel"

.field public static final TYPE_UV:Ljava/lang/String; = "uv"

.field public static final TYPE_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_WIND:Ljava/lang/String; = "wind"

.field public static final WEATHER_PRIVATE_POLICY_LINK:Ljava/lang/String; = "https://account.nubia.com/res/html/weather_privacy.html"


# instance fields
.field private final AIR_QUALITY_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final ALARM_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final CURRENT_WEATHER_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final DAILY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final HOURLY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final INDICES_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final LANGUAGE_CN:Ljava/lang/String;

.field private final LANGUAGE_EN:Ljava/lang/String;

.field private final MAIN_PAGE_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final PARTNER_CODE:Ljava/lang/String;

.field private mAreaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "http://m.weathercn.com/air-quality.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->AIR_QUALITY_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 24
    const-string v0, "http://m.weathercn.com/weather-warning.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->ALARM_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 25
    const-string v0, "http://m.weathercn.com/livingindex.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->INDICES_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 26
    const-string v0, "http://m.weathercn.com/current-weather.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->CURRENT_WEATHER_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 27
    const-string v0, "http://m.weathercn.com/index.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->MAIN_PAGE_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 28
    const-string v0, "http://m.weathercn.com/daily-weather-forecast.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->DAILY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 29
    const-string v0, "http://m.weathercn.com/hourly-weather-forecast.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->HOURLY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 30
    const-string v0, "zh-cn"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->LANGUAGE_CN:Ljava/lang/String;

    .line 31
    const-string v0, "en"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->LANGUAGE_EN:Ljava/lang/String;

    .line 32
    const-string v0, "1000001030"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->PARTNER_CODE:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "zh-cn"

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method

.method public startAirLink()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v1, "http://m.weathercn.com/air-quality.do?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "&language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "&partner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "1000001030"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAlarmLink()V
    .locals 3

    .prologue
    .line 162
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/weather-warning.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCurrentWeatherLink()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startCurrentWeatherLink(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public startCurrentWeatherLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/current-weather.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDailyForecastLink(I)V
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 90
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/daily-weather-forecast.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "&day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startHourlyForecastLink(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v5, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v4, "linkBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 48
    .local v0, "dayStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 49
    .local v2, "hourStr":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/TimeUtils;->getCurrentHour()I

    move-result v5

    add-int v1, v5, p1

    .line 50
    .local v1, "hour":I
    div-int/lit8 v5, v1, 0x18

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    rem-int/lit8 v5, v1, 0x18

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_1
    const-string v5, "http://m.weathercn.com/hourly-weather-forecast.do?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v5, "&language="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v5, "&id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v5, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    if-eqz p1, :cond_2

    .line 61
    const-string v5, "&day="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v5, "&hbhhour="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_2
    const-string v5, "&partner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v5, "1000001030"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "link":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startIndicesLink()V
    .locals 3

    .prologue
    .line 73
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/livingindex.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, "#Indices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v2, "LinkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLinkWithAnchor: baseUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMainPageLink()V
    .locals 3

    .prologue
    .line 146
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/index.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startViewLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method public startViewLink(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "needPatenerCode"    # Z

    .prologue
    .line 196
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/app/WeatherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    .local v1, "context":Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    :goto_0
    return-void

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v4, "linkBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v5, "&partner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v5, "1000001030"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    .end local v4    # "linkBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
