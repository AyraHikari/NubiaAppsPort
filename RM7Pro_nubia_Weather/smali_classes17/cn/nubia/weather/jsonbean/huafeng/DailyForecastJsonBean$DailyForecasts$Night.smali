.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Night"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Ice;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Snow;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Rain;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$TotalLiquid;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$WindGust;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;
    }
.end annotation


# instance fields
.field public CloudCover:Ljava/lang/String;

.field public HoursOfIce:Ljava/lang/String;

.field public HoursOfPrecipitation:Ljava/lang/String;

.field public HoursOfRain:Ljava/lang/String;

.field public HoursOfSnow:Ljava/lang/String;

.field public Ice:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Ice;

.field public IceProbability:Ljava/lang/String;

.field public Icon:Ljava/lang/String;

.field public IconPhrase:Ljava/lang/String;

.field public LocalSource:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$LocalSource;

.field public LongPhrase:Ljava/lang/String;

.field public PrecipitationProbability:Ljava/lang/String;

.field public Rain:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Rain;

.field public RainProbability:Ljava/lang/String;

.field public ShortPhrase:Ljava/lang/String;

.field public Snow:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Snow;

.field public SnowProbability:Ljava/lang/String;

.field public ThunderstormProbability:Ljava/lang/String;

.field public TotalLiquid:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$TotalLiquid;

.field public Wind:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;

.field public WindGust:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$WindGust;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method
