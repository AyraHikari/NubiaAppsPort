.class public Lcn/nubia/weather/utils/WeatherStateUtils;
.super Ljava/lang/Object;
.source "WeatherStateUtils.java"


# static fields
.field private static final BLACK:Ljava/lang/String; = "\u9ed1\u8272"

.field private static final BLUE:Ljava/lang/String; = "\u84dd\u8272"

.field private static final ORANGE:Ljava/lang/String; = "\u6a59\u8272"

.field private static final RED:Ljava/lang/String; = "\u7ea2\u8272"

.field private static final WEATHER_DAY_BLIZZARD:I = 0x10

.field private static final WEATHER_DAY_CLOUDY:I = 0x2

.field private static final WEATHER_DAY_DEFAULT:I = 0x0

.field private static final WEATHER_DAY_DUST:I = 0x13

.field private static final WEATHER_DAY_FOG:I = 0x11

.field private static final WEATHER_DAY_HAIL:I = 0x7

.field private static final WEATHER_DAY_HAZE:I = 0x12

.field private static final WEATHER_DAY_HEAVY_RAIN:I = 0xb

.field private static final WEATHER_DAY_HEAVY_SNOW:I = 0xf

.field private static final WEATHER_DAY_LIGHT_RAIN:I = 0x9

.field private static final WEATHER_DAY_LIGHT_SNOW:I = 0xd

.field private static final WEATHER_DAY_MODERATE_RAIN:I = 0xa

.field private static final WEATHER_DAY_MODERATE_SNOW:I = 0xe

.field private static final WEATHER_DAY_OVERCAST:I = 0x3

.field private static final WEATHER_DAY_RAIN_SNOW:I = 0x6

.field private static final WEATHER_DAY_SAND_STORM:I = 0x14

.field private static final WEATHER_DAY_STORM:I = 0xc

.field private static final WEATHER_DAY_SUNNY:I = 0x1

.field private static final WEATHER_DAY_THUNDER_SHOWER:I = 0x4

.field private static final WEATHER_DAY_THUNDER_SHOWER_HAIL:I = 0x5

.field private static final WEATHER_NIGHT_BLIZZARD:I = 0x25

.field private static final WEATHER_NIGHT_CLOUDY:I = 0x17

.field private static final WEATHER_NIGHT_DEFAULT:I = 0x15

.field private static final WEATHER_NIGHT_DUST:I = 0x28

.field private static final WEATHER_NIGHT_FOG:I = 0x26

.field private static final WEATHER_NIGHT_HAIL:I = 0x1c

.field private static final WEATHER_NIGHT_HAZE:I = 0x27

.field private static final WEATHER_NIGHT_HEAVY_RAIN:I = 0x20

.field private static final WEATHER_NIGHT_HEAVY_SNOW:I = 0x24

.field private static final WEATHER_NIGHT_LIGHT_RAIN:I = 0x1e

.field private static final WEATHER_NIGHT_LIGHT_SNOW:I = 0x22

.field private static final WEATHER_NIGHT_MODERATE_RAIN:I = 0x1f

.field private static final WEATHER_NIGHT_MODERATE_SNOW:I = 0x23

.field private static final WEATHER_NIGHT_OVERCAST:I = 0x18

.field private static final WEATHER_NIGHT_RAIN_SNOW:I = 0x1b

.field private static final WEATHER_NIGHT_SAND_STORM:I = 0x29

.field private static final WEATHER_NIGHT_STORM:I = 0x21

.field private static final WEATHER_NIGHT_SUNNY:I = 0x16

.field private static final WEATHER_NIGHT_THUNDER_SHOWER:I = 0x19

.field private static final WEATHER_NIGHT_THUNDER_SHOWER_HAIL:I = 0x1a

.field private static final WHITE:Ljava/lang/String; = "\u767d\u8272"

.field private static final YELLOW:Ljava/lang/String; = "\u9ec4\u8272"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getAlarmColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "color":I
    const-string v1, "\u767d\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0067

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 96
    :cond_0
    const-string v1, "\u84dd\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 100
    :cond_1
    const-string v1, "\u9ec4\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006b

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 104
    :cond_2
    const-string v1, "\u6a59\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0049

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 108
    :cond_3
    const-string v1, "\u7ea2\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0051

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 112
    :cond_4
    const-string v1, "\u9ed1\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000c

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 116
    :cond_5
    return v0
.end method

.method public static getAnimationBgDrawable(IZ)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "night"    # Z

    .prologue
    const v0, 0x7f020282

    const v1, 0x7f020267

    .line 561
    packed-switch p0, :pswitch_data_0

    .line 630
    :pswitch_0
    if-eqz p1, :cond_2

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 563
    :pswitch_1
    if-nez p1, :cond_0

    move v0, v1

    .line 566
    goto :goto_0

    .line 569
    :pswitch_2
    if-eqz p1, :cond_1

    .line 570
    const v0, 0x7f020280

    goto :goto_0

    .line 572
    :cond_1
    const v0, 0x7f020265

    goto :goto_0

    .line 575
    :pswitch_3
    const v0, 0x7f020284

    goto :goto_0

    .line 579
    :pswitch_4
    const v0, 0x7f02029b

    goto :goto_0

    .line 595
    :pswitch_5
    const v0, 0x7f020289

    goto :goto_0

    .line 606
    :pswitch_6
    const v0, 0x7f020292

    goto :goto_0

    .line 613
    :pswitch_7
    const v0, 0x7f02026d

    goto :goto_0

    .line 619
    :pswitch_8
    const v0, 0x7f020274

    goto :goto_0

    .line 622
    :pswitch_9
    const v0, 0x7f02026b

    goto :goto_0

    .line 627
    :pswitch_a
    const v0, 0x7f02028c

    goto :goto_0

    :cond_2
    move v0, v1

    .line 633
    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getAnimationEffectSwitchType(ILjava/lang/String;)Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 2
    .param p0, "type"    # I
    .param p1, "night"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "weatherType":I
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    packed-switch p0, :pswitch_data_0

    .line 216
    :pswitch_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    invoke-static {}, Lcom/bluestareffects/app/weather/api/WeatherType;->values()[Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1

    .line 135
    :pswitch_1
    const/4 v0, 0x1

    .line 136
    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v0, 0x2

    .line 139
    goto :goto_0

    .line 141
    :pswitch_3
    const/4 v0, 0x3

    .line 142
    goto :goto_0

    .line 144
    :pswitch_4
    const/4 v0, 0x4

    .line 145
    goto :goto_0

    .line 147
    :pswitch_5
    const/4 v0, 0x5

    .line 148
    goto :goto_0

    .line 150
    :pswitch_6
    const/4 v0, 0x6

    .line 151
    goto :goto_0

    .line 153
    :pswitch_7
    const/4 v0, 0x7

    .line 154
    goto :goto_0

    .line 160
    :pswitch_8
    const/16 v0, 0x9

    .line 161
    goto :goto_0

    .line 164
    :pswitch_9
    const/16 v0, 0xa

    .line 165
    goto :goto_0

    .line 168
    :pswitch_a
    const/16 v0, 0xb

    .line 169
    goto :goto_0

    .line 176
    :pswitch_b
    const/16 v0, 0xc

    .line 177
    goto :goto_0

    .line 181
    :pswitch_c
    const/16 v0, 0xd

    .line 184
    :pswitch_d
    const/16 v0, 0xe

    .line 185
    goto :goto_0

    .line 188
    :pswitch_e
    const/16 v0, 0xf

    .line 189
    goto :goto_0

    .line 192
    :pswitch_f
    const/16 v0, 0x10

    .line 193
    goto :goto_0

    .line 199
    :pswitch_10
    const/16 v0, 0x11

    .line 200
    goto :goto_0

    .line 205
    :pswitch_11
    const/16 v0, 0x12

    .line 206
    goto :goto_0

    .line 209
    :pswitch_12
    const/16 v0, 0x13

    .line 210
    goto :goto_0

    .line 213
    :pswitch_13
    const/16 v0, 0x14

    .line 214
    goto :goto_0

    .line 220
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 303
    :pswitch_14
    const/16 v0, 0x15

    goto :goto_0

    .line 222
    :pswitch_15
    const/16 v0, 0x16

    .line 223
    goto :goto_0

    .line 225
    :pswitch_16
    const/16 v0, 0x17

    .line 226
    goto :goto_0

    .line 228
    :pswitch_17
    const/16 v0, 0x18

    .line 229
    goto :goto_0

    .line 231
    :pswitch_18
    const/16 v0, 0x19

    .line 232
    goto :goto_0

    .line 234
    :pswitch_19
    const/16 v0, 0x1a

    .line 235
    goto :goto_0

    .line 237
    :pswitch_1a
    const/16 v0, 0x1b

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1b
    const/16 v0, 0x1c

    .line 241
    goto :goto_0

    .line 247
    :pswitch_1c
    const/16 v0, 0x1e

    .line 248
    goto :goto_0

    .line 251
    :pswitch_1d
    const/16 v0, 0x1f

    .line 252
    goto :goto_0

    .line 255
    :pswitch_1e
    const/16 v0, 0x20

    .line 256
    goto :goto_0

    .line 263
    :pswitch_1f
    const/16 v0, 0x21

    .line 264
    goto :goto_0

    .line 268
    :pswitch_20
    const/16 v0, 0x22

    .line 271
    :pswitch_21
    const/16 v0, 0x23

    .line 272
    goto :goto_0

    .line 275
    :pswitch_22
    const/16 v0, 0x24

    .line 276
    goto :goto_0

    .line 279
    :pswitch_23
    const/16 v0, 0x25

    .line 280
    goto :goto_0

    .line 286
    :pswitch_24
    const/16 v0, 0x26

    .line 287
    goto :goto_0

    .line 292
    :pswitch_25
    const/16 v0, 0x27

    .line 293
    goto :goto_0

    .line 296
    :pswitch_26
    const/16 v0, 0x28

    .line 297
    goto :goto_0

    .line 300
    :pswitch_27
    const/16 v0, 0x29

    .line 301
    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_7
        :pswitch_13
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 220
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1c
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_1b
        :pswitch_27
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_24
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public static getAnimationWeatherType(IZ)Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 1
    .param p0, "type"    # I
    .param p1, "night"    # Z

    .prologue
    .line 403
    packed-switch p0, :pswitch_data_0

    .line 552
    :pswitch_0
    if-eqz p1, :cond_13

    .line 553
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 555
    :goto_0
    return-object v0

    .line 405
    :pswitch_1
    if-eqz p1, :cond_0

    .line 406
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 408
    :cond_0
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 411
    :pswitch_2
    if-eqz p1, :cond_1

    .line 412
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 414
    :cond_1
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 417
    :pswitch_3
    if-eqz p1, :cond_2

    .line 418
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 420
    :cond_2
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_OVERCAST:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 423
    :pswitch_4
    if-eqz p1, :cond_3

    .line 424
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 426
    :cond_3
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 429
    :pswitch_5
    if-eqz p1, :cond_4

    .line 430
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 432
    :cond_4
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_THUNDER_SHOWER_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 435
    :pswitch_6
    if-eqz p1, :cond_5

    .line 436
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 438
    :cond_5
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_RAIN_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 441
    :pswitch_7
    if-eqz p1, :cond_6

    .line 442
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 444
    :cond_6
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAIL:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 449
    :pswitch_8
    if-eqz p1, :cond_7

    .line 450
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 452
    :cond_7
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 457
    :pswitch_9
    if-eqz p1, :cond_8

    .line 458
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 460
    :cond_8
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 465
    :pswitch_a
    if-eqz p1, :cond_9

    .line 466
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 468
    :cond_9
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_RAIN:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 477
    :pswitch_b
    if-eqz p1, :cond_a

    .line 478
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 480
    :cond_a
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 486
    :pswitch_c
    if-eqz p1, :cond_b

    .line 487
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 489
    :cond_b
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_LIGHT_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 493
    :pswitch_d
    if-eqz p1, :cond_c

    .line 494
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 496
    :cond_c
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_MODERATE_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 500
    :pswitch_e
    if-eqz p1, :cond_d

    .line 501
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 503
    :cond_d
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HEAVY_SNOW:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 508
    :pswitch_f
    if-eqz p1, :cond_e

    .line 509
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 511
    :cond_e
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_BLIZZARD:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 519
    :pswitch_10
    if-eqz p1, :cond_f

    .line 520
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 522
    :cond_f
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_FOG:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto :goto_0

    .line 529
    :pswitch_11
    if-eqz p1, :cond_10

    .line 530
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 532
    :cond_10
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_HAZE:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 536
    :pswitch_12
    if-eqz p1, :cond_11

    .line 537
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 539
    :cond_11
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DUST:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 545
    :pswitch_13
    if-eqz p1, :cond_12

    .line 546
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 548
    :cond_12
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 555
    :cond_13
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    goto/16 :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_7
        :pswitch_13
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static getBgColor(IZ)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "night"    # Z

    .prologue
    const v1, 0x7f0c0056

    const v0, 0x7f0c0032

    .line 638
    packed-switch p0, :pswitch_data_0

    .line 699
    :pswitch_0
    if-eqz p1, :cond_2

    .line 702
    :cond_0
    :goto_0
    return v0

    .line 640
    :pswitch_1
    if-nez p1, :cond_0

    move v0, v1

    .line 643
    goto :goto_0

    .line 646
    :pswitch_2
    if-eqz p1, :cond_1

    .line 647
    const v0, 0x7f0c0031

    goto :goto_0

    .line 649
    :cond_1
    const v0, 0x7f0c0025

    goto :goto_0

    .line 652
    :pswitch_3
    const v0, 0x7f0c004a

    goto :goto_0

    .line 655
    :pswitch_4
    const v0, 0x7f0c005a

    goto :goto_0

    .line 670
    :pswitch_5
    const v0, 0x7f0c0050

    goto :goto_0

    .line 680
    :pswitch_6
    const v0, 0x7f0c0054

    goto :goto_0

    .line 686
    :pswitch_7
    const v0, 0x7f0c002c

    goto :goto_0

    .line 691
    :pswitch_8
    const v0, 0x7f0c002e

    goto :goto_0

    .line 693
    :pswitch_9
    const v0, 0x7f0c002b

    goto :goto_0

    .line 697
    :pswitch_a
    const v0, 0x7f0c0053

    goto :goto_0

    :cond_2
    move v0, v1

    .line 702
    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getWeatherState(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 85
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000d

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "weatherState":[Ljava/lang/String;
    aget-object v1, v0, p0

    return-object v1
.end method

.method public static getWeatherTypeIndex(Ljava/lang/String;)I
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000d

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "weatherState":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 123
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 122
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getWidgetWeatherType(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    const v0, 0x7f090164

    const v1, 0x7f090078

    .line 838
    packed-switch p0, :pswitch_data_0

    .line 903
    :goto_0
    :pswitch_0
    return v0

    .line 844
    :pswitch_1
    const v0, 0x7f09005c

    goto :goto_0

    .line 847
    :pswitch_2
    const v0, 0x7f090092

    goto :goto_0

    .line 851
    :pswitch_3
    const v0, 0x7f090165

    goto :goto_0

    .line 859
    :pswitch_4
    const v0, 0x7f090163

    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 869
    goto :goto_0

    .line 876
    :pswitch_6
    const v0, 0x7f0900a6

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 882
    goto :goto_0

    .line 889
    :pswitch_8
    const v0, 0x7f09008a

    goto :goto_0

    .line 895
    :pswitch_9
    const v0, 0x7f090075

    goto :goto_0

    .line 901
    :pswitch_a
    const v0, 0x7f090162

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static isNight(J)Z
    .locals 8
    .param p0, "time"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 314
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "timeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 318
    .local v2, "timeHour":I
    const/16 v5, 0x12

    if-ge v2, v5, :cond_0

    const/4 v5, 0x6

    if-gt v2, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 324
    .end local v2    # "timeHour":I
    :cond_1
    :goto_0
    return v4

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
