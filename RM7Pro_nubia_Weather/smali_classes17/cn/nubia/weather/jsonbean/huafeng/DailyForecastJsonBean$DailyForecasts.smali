.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyForecasts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$AirAndPollen;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$RealFeelTemperatureShade;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$RealFeelTemperature;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Moon;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;
    }
.end annotation


# instance fields
.field public AirAndPollen:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$AirAndPollen;

.field public Date:Ljava/lang/String;

.field public Day:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;

.field public DegreeDaySummary:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary;

.field public EpochDate:Ljava/lang/String;

.field public HoursOfSun:Ljava/lang/String;

.field public Link:Ljava/lang/String;

.field public MobileLink:Ljava/lang/String;

.field public Moon:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Moon;

.field public Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

.field public RealFeelTemperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$RealFeelTemperature;

.field public RealFeelTemperatureShade:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$RealFeelTemperatureShade;

.field public Sources:[Ljava/lang/String;

.field public Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

.field public Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 48
    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;->Minimum:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;->Minimum:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;->Value:Ljava/lang/String;

    if-eqz v7, :cond_1

    move v1, v5

    .line 50
    .local v1, "isTempValid":Z
    :goto_0
    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;->Rise:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Sun:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Sun;->Set:Ljava/lang/String;

    if-eqz v7, :cond_2

    move v0, v5

    .line 52
    .local v0, "isSunTimeValid":Z
    :goto_1
    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;->WeatherCode:Ljava/lang/String;

    if-eqz v7, :cond_3

    move v4, v5

    .line 54
    .local v4, "isTypeWeatherCodeValid":Z
    :goto_2
    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Night:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;

    iget-object v7, v7, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;->Icon:Ljava/lang/String;

    if-eqz v7, :cond_4

    move v2, v5

    .line 55
    .local v2, "isTypeIconCodeValid":Z
    :goto_3
    if-nez v4, :cond_0

    if-eqz v2, :cond_5

    :cond_0
    move v3, v5

    .line 57
    .local v3, "isTypeValid":Z
    :goto_4
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    :goto_5
    return v5

    .end local v0    # "isSunTimeValid":Z
    .end local v1    # "isTempValid":Z
    .end local v2    # "isTypeIconCodeValid":Z
    .end local v3    # "isTypeValid":Z
    .end local v4    # "isTypeWeatherCodeValid":Z
    :cond_1
    move v1, v6

    .line 48
    goto :goto_0

    .restart local v1    # "isTempValid":Z
    :cond_2
    move v0, v6

    .line 50
    goto :goto_1

    .restart local v0    # "isSunTimeValid":Z
    :cond_3
    move v4, v6

    .line 52
    goto :goto_2

    .restart local v4    # "isTypeWeatherCodeValid":Z
    :cond_4
    move v2, v6

    .line 54
    goto :goto_3

    .restart local v2    # "isTypeIconCodeValid":Z
    :cond_5
    move v3, v6

    .line 55
    goto :goto_4

    .restart local v3    # "isTypeValid":Z
    :cond_6
    move v5, v6

    .line 57
    goto :goto_5
.end method
