.class synthetic Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;
.super Ljava/lang/Object;
.source "WeatherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/bluestareffects/app/weather/api/WeatherType;->values()[Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    :try_start_0
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_29

    :goto_0
    :try_start_1
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_28

    :goto_1
    :try_start_2
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_27

    :goto_2
    :try_start_3
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_26

    :goto_3
    :try_start_4
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_25

    :goto_4
    :try_start_5
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_24

    :goto_5
    :try_start_6
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_23

    :goto_6
    :try_start_7
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_22

    :goto_7
    :try_start_8
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_21

    :goto_8
    :try_start_9
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_20

    :goto_9
    :try_start_a
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1f

    :goto_a
    :try_start_b
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1e

    :goto_b
    :try_start_c
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1d

    :goto_c
    :try_start_d
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1c

    :goto_d
    :try_start_e
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1b

    :goto_e
    :try_start_f
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1a

    :goto_f
    :try_start_10
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_19

    :goto_10
    :try_start_11
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_18

    :goto_11
    :try_start_12
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_17

    :goto_12
    :try_start_13
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_16

    :goto_13
    :try_start_14
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_15

    :goto_14
    :try_start_15
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_14

    :goto_15
    :try_start_16
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_13

    :goto_16
    :try_start_17
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_12

    :goto_17
    :try_start_18
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_11

    :goto_18
    :try_start_19
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_10

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_f

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_e

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_d

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_c

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_b

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_a

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_9

    :goto_20
    :try_start_21
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_8

    :goto_21
    :try_start_22
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_7

    :goto_22
    :try_start_23
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_6

    :goto_23
    :try_start_24
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_5

    :goto_24
    :try_start_25
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_4

    :goto_25
    :try_start_26
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_3

    :goto_26
    :try_start_27
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_2

    :goto_27
    :try_start_28
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_1

    :goto_28
    :try_start_29
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_0

    :goto_29
    return-void

    :catch_0
    move-exception v0

    goto :goto_29

    :catch_1
    move-exception v0

    goto :goto_28

    :catch_2
    move-exception v0

    goto :goto_27

    :catch_3
    move-exception v0

    goto :goto_26

    :catch_4
    move-exception v0

    goto :goto_25

    :catch_5
    move-exception v0

    goto :goto_24

    :catch_6
    move-exception v0

    goto :goto_23

    :catch_7
    move-exception v0

    goto :goto_22

    :catch_8
    move-exception v0

    goto :goto_21

    :catch_9
    move-exception v0

    goto :goto_20

    :catch_a
    move-exception v0

    goto/16 :goto_1f

    :catch_b
    move-exception v0

    goto/16 :goto_1e

    :catch_c
    move-exception v0

    goto/16 :goto_1d

    :catch_d
    move-exception v0

    goto/16 :goto_1c

    :catch_e
    move-exception v0

    goto/16 :goto_1b

    :catch_f
    move-exception v0

    goto/16 :goto_1a

    :catch_10
    move-exception v0

    goto/16 :goto_19

    :catch_11
    move-exception v0

    goto/16 :goto_18

    :catch_12
    move-exception v0

    goto/16 :goto_17

    :catch_13
    move-exception v0

    goto/16 :goto_16

    :catch_14
    move-exception v0

    goto/16 :goto_15

    :catch_15
    move-exception v0

    goto/16 :goto_14

    :catch_16
    move-exception v0

    goto/16 :goto_13

    :catch_17
    move-exception v0

    goto/16 :goto_12

    :catch_18
    move-exception v0

    goto/16 :goto_11

    :catch_19
    move-exception v0

    goto/16 :goto_10

    :catch_1a
    move-exception v0

    goto/16 :goto_f

    :catch_1b
    move-exception v0

    goto/16 :goto_e

    :catch_1c
    move-exception v0

    goto/16 :goto_d

    :catch_1d
    move-exception v0

    goto/16 :goto_c

    :catch_1e
    move-exception v0

    goto/16 :goto_b

    :catch_1f
    move-exception v0

    goto/16 :goto_a

    :catch_20
    move-exception v0

    goto/16 :goto_9

    :catch_21
    move-exception v0

    goto/16 :goto_8

    :catch_22
    move-exception v0

    goto/16 :goto_7

    :catch_23
    move-exception v0

    goto/16 :goto_6

    :catch_24
    move-exception v0

    goto/16 :goto_5

    :catch_25
    move-exception v0

    goto/16 :goto_4

    :catch_26
    move-exception v0

    goto/16 :goto_3

    :catch_27
    move-exception v0

    goto/16 :goto_2

    :catch_28
    move-exception v0

    goto/16 :goto_1

    :catch_29
    move-exception v0

    goto/16 :goto_0
.end method
