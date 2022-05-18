.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Day"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Ice;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Snow;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Rain;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$TotalLiquid;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$WindGust;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$LocalSource;
    }
.end annotation


# instance fields
.field public CloudCover:Ljava/lang/String;

.field public HoursOfIce:Ljava/lang/String;

.field public HoursOfPrecipitation:Ljava/lang/String;

.field public HoursOfRain:Ljava/lang/String;

.field public HoursOfSnow:Ljava/lang/String;

.field public Ice:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Ice;

.field public IceProbability:Ljava/lang/String;

.field public Icon:Ljava/lang/String;

.field public IconPhrase:Ljava/lang/String;

.field public LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$LocalSource;

.field public LongPhrase:Ljava/lang/String;

.field public PrecipitationProbability:Ljava/lang/String;

.field public Rain:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Rain;

.field public RainProbability:Ljava/lang/String;

.field public ShortPhrase:Ljava/lang/String;

.field public Snow:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Snow;

.field public SnowProbability:Ljava/lang/String;

.field public ThunderstormProbability:Ljava/lang/String;

.field public TotalLiquid:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$TotalLiquid;

.field public Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;

.field public WindGust:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$WindGust;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method
