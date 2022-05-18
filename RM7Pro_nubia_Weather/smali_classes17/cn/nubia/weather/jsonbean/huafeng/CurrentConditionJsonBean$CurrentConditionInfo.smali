.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentConditionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Precip1hr;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$WetBulbTemperature;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$WindChillTemperature;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$ApparentTemperature;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PressureTendency;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Pressure;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Ceiling;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Visibility;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$WindGust;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$DewPoint;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperatureShade;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperature;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ApparentTemperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$ApparentTemperature;

.field public Ceiling:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Ceiling;

.field public CloudCover:Ljava/lang/String;

.field public DewPoint:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$DewPoint;

.field public EpochTime:Ljava/lang/String;

.field public IsDayTime:Ljava/lang/String;

.field public Link:Ljava/lang/String;

.field public LocalObservationDateTime:Ljava/lang/String;

.field public LocalSource:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;

.field public MobileLink:Ljava/lang/String;

.field public ObstructionsToVisibility:Ljava/lang/String;

.field public Past24HourTemperatureDeparture:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture;

.field public Precip1hr:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Precip1hr;

.field public PrecipitationSummary:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary;

.field public Pressure:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Pressure;

.field public PressureTendency:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PressureTendency;

.field public RealFeelTemperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperature;

.field public RealFeelTemperatureShade:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$RealFeelTemperatureShade;

.field public RelativeHumidity:Ljava/lang/String;

.field public Temperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;

.field public TemperatureSummary:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary;

.field public UVIndex:Ljava/lang/String;

.field public UVIndexText:Ljava/lang/String;

.field public Visibility:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Visibility;

.field public WeatherIcon:Ljava/lang/String;

.field public WeatherText:Ljava/lang/String;

.field public WetBulbTemperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$WetBulbTemperature;

.field public Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

.field public WindChillTemperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$WindChillTemperature;

.field public WindGust:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$WindGust;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Speed:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Speed:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed$Metric;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Speed:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed$Metric;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Speed$Metric;->Value:Ljava/lang/String;

    if-eqz v6, :cond_2

    move v3, v4

    .line 62
    .local v3, "isWindPowerValid":Z
    :goto_0
    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Direction:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Wind:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind;->Direction:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Wind$Direction;->Localized:Ljava/lang/String;

    if-eqz v6, :cond_3

    move v2, v4

    .line 64
    .local v2, "isWindDirectionValid":Z
    :goto_1
    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;->Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;->Value:Ljava/lang/String;

    if-eqz v6, :cond_4

    move v0, v4

    .line 66
    .local v0, "isTemperatureValid":Z
    :goto_2
    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->LocalSource:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;

    iget-object v6, v6, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;->WeatherCode:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->WeatherIcon:Ljava/lang/String;

    if-eqz v6, :cond_5

    :cond_1
    move v1, v4

    .line 68
    .local v1, "isWeatherValid":Z
    :goto_3
    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->LocalObservationDateTime:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->RelativeHumidity:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;->UVIndex:Ljava/lang/String;

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    :goto_4
    return v4

    .end local v0    # "isTemperatureValid":Z
    .end local v1    # "isWeatherValid":Z
    .end local v2    # "isWindDirectionValid":Z
    .end local v3    # "isWindPowerValid":Z
    :cond_2
    move v3, v5

    .line 60
    goto :goto_0

    .restart local v3    # "isWindPowerValid":Z
    :cond_3
    move v2, v5

    .line 62
    goto :goto_1

    .restart local v2    # "isWindDirectionValid":Z
    :cond_4
    move v0, v5

    .line 64
    goto :goto_2

    .restart local v0    # "isTemperatureValid":Z
    :cond_5
    move v1, v5

    .line 66
    goto :goto_3

    .restart local v1    # "isWeatherValid":Z
    :cond_6
    move v4, v5

    .line 68
    goto :goto_4
.end method
