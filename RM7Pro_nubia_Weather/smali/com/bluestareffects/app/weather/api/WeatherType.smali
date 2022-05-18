.class public final enum Lcom/bluestareffects/app/weather/api/WeatherType;
.super Ljava/lang/Enum;
.source "WeatherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bluestareffects/app/weather/api/WeatherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_DAY_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_MAX:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NIGHT_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

.field public static final enum WEATHER_NULL:Lcom/bluestareffects/app/weather/api/WeatherType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 6
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_SUNNY"

    invoke-direct {v0, v1, v4}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 7
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_CLOUDY"

    invoke-direct {v0, v1, v5}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 8
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_OVERCAST"

    invoke-direct {v0, v1, v6}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 9
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_THUNDER_SHOWER"

    invoke-direct {v0, v1, v7}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 10
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_THUNDER_SHOWER_HAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 11
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_RAIN_SNOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 12
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_HAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 13
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_RAIN_HAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 14
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_LIGHT_RAIN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 15
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_MODERATE_RAIN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 16
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_HEAVY_RAIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 17
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_STORM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 18
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_LIGHT_SNOW"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 19
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_MODERATE_SNOW"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 20
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_HEAVY_SNOW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 21
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_BLIZZARD"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 22
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_FOG"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 23
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_HAZE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 24
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_DUST"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 25
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_DAY_SAND_STORM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 27
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_DEFAULT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 28
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_SUNNY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 29
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_CLOUDY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 30
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_OVERCAST"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 31
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_THUNDER_SHOWER"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 32
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_THUNDER_SHOWER_HAIL"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 33
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_RAIN_SNOW"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 34
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_HAIL"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 35
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_RAIN_HAIL"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 36
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_LIGHT_RAIN"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 37
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_MODERATE_RAIN"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 38
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_HEAVY_RAIN"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 39
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_STORM"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 40
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_LIGHT_SNOW"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 41
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_MODERATE_SNOW"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 42
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_HEAVY_SNOW"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 43
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_BLIZZARD"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 44
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_FOG"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 45
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_HAZE"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 46
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_DUST"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 47
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NIGHT_SAND_STORM"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 48
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_MAX"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_MAX:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 49
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    const-string v1, "WEATHER_NULL"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NULL:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 3
    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/bluestareffects/app/weather/api/WeatherType;

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_MAX:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NULL:Lcom/bluestareffects/app/weather/api/WeatherType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->$VALUES:[Lcom/bluestareffects/app/weather/api/WeatherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    return-object v0
.end method

.method public static values()[Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->$VALUES:[Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0}, [Lcom/bluestareffects/app/weather/api/WeatherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bluestareffects/app/weather/api/WeatherType;

    return-object v0
.end method
