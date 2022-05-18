.class public Lcn/nubia/calendar/util/ZTouchHFweatherUtil;
.super Ljava/lang/Object;
.source "ZTouchHFweatherUtil.java"


# static fields
.field public static final ACTION_HFWEATHER_APP:Ljava/lang/String; = "com.hf.weather.MAIN"

.field public static final ACTION_HF_CHANGE_DEFAULT_CITY:Ljava/lang/String; = "com.hf.CHANGE_DEFAULT_CITY"

.field public static final ACTION_HF_CREATECITY_FAIL:Ljava/lang/String; = "com.hf.QUERY_WEATHER_FAILED"

.field public static final ACTION_HF_CREATECITY_SUCCESS:Ljava/lang/String; = "com.hf.ADD_CITY"

.field public static final ACTION_HF_CREATE_CITY:Ljava/lang/String; = "com.ztemt.action.hfweather.CREATECITY"

.field public static final ACTION_HF_GET_LOCATION_FAILED:Ljava/lang/String; = "com.hf.location.FAILED"

.field public static final ACTION_HF_GET_LOCATION_SUCCESS:Ljava/lang/String; = "com.hf.location.SUCCESSED"

.field public static final ACTION_HF_LOCATION_REQUEST:Ljava/lang/String; = "com.hf.weather.LOCATION"

.field public static final ACTION_HF_SVR:Ljava/lang/String; = "com.ztemt.action.hfweather.SVR"

.field public static final ACTION_HF_UPDATE_ALL_WEATHER:Ljava/lang/String; = "com.hf.UPDATE_ALL_WEATHER"

.field public static final ACTION_HF_UPDATE_WEATHER:Ljava/lang/String; = "com.hf.UPDATE_WEATHER"

.field public static final ACTION_MAIN_UI:Ljava/lang/String; = "com.ztemt.action.hfweather.MAINACTIVITY"

.field public static final HF_CITY_URL:Ljava/lang/String; = "content://hf.weather/city"

.field public static final HF_Current_Temperature:Ljava/lang/String; = "skTemperature"

.field public static final HF_DATA_ADDCITY:Ljava/lang/String; = "cityID"

.field public static final HF_DATA_UPDATECITY:Ljava/lang/String; = "cityID"

.field public static final HF_DATA_URL:Ljava/lang/String; = "content://hf.weather/weather"

.field public static final HF_INTENT_DATA_CITYID:Ljava/lang/String; = "cityID"

.field public static final HF_INTENT_DATA_LAT:Ljava/lang/String; = "lat"

.field public static final HF_INTENT_DATA_LNG:Ljava/lang/String; = "lng"

.field public static final HF_cityDisplayname:Ljava/lang/String; = "cityDisplayname"

.field public static final HF_cityid:Ljava/lang/String; = "cityID"

.field public static final HF_cityname_cn:Ljava/lang/String; = "name"

.field public static final HF_cityname_us:Ljava/lang/String; = "pinyin"

.field public static final HF_isDefault:Ljava/lang/String; = "isDefault"

.field public static final HF_tMax:Ljava/lang/String; = "tMax"

.field public static final HF_tMin:Ljava/lang/String; = "tMin"

.field public static final HF_weatherCondition:Ljava/lang/String; = "skWeather"

.field private static final TAG:Ljava/lang/String; = "ZTouchHFweatherUtil"

.field private static description:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/util/ZTouchHFweatherUtil;->description:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "weatherType"    # I

    .prologue
    .line 66
    if-gez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcn/nubia/calendar/util/ZTouchHFweatherUtil;->description:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/ZTouchHFweatherUtil;->description:[Ljava/lang/String;

    .line 77
    :cond_1
    sget-object v0, Lcn/nubia/calendar/util/ZTouchHFweatherUtil;->description:[Ljava/lang/String;

    rem-int/lit8 v1, p1, 0x24

    aget-object v0, v0, v1

    goto :goto_0
.end method
